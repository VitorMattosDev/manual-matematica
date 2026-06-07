#!/usr/bin/env bash
# Gera indice-remissivo.qmd a partir dos blocos de definição (::: {#def-...} + ## Título)
# de todos os capítulos. Rode da raiz do projeto: bash scripts/gen-indice.sh
set -euo pipefail
cd "$(dirname "$0")/.."

OUT=indice-remissivo.qmd

cat > "$OUT" <<'HEADER'
# Índice remissivo {.unnumbered}

Este índice reúne os **termos definidos** ao longo do manual, em ordem alfabética, com
link direto para a definição de cada um. O rótulo ao lado indica o volume onde o termo
é introduzido.

::: {.callout-note collapse="true"}
## Sobre este índice

Cada entrada aponta para o bloco de **definição** (`#def-…`) onde o termo aparece
formalmente. A lista é gerada automaticamente desses blocos por `scripts/gen-indice.sh`,
de modo que cobre todas as definições da obra.

Curadoria futura (opcional): reescrever rótulos herdados de subtítulos (ex.: "A relação
das frações"), acrescentar **sinônimos** e conceitos sem bloco próprio, e incluir
**teoremas** nomeados (Lagrange, Cauchy-Goursat, Gauss-Bonnet…). Após editar capítulos,
rode o script novamente para atualizar esta página.
:::
HEADER

for f in $(find volumes -name "*.qmd" | sort); do
  awk -v F="$f" '
    /^::: \{#def-/ { match($0,/#(def-[a-z0-9-]+)/,m); id=m[1]; getline;
      if($0 ~ /^## /){ t=$0; sub(/^## /,"",t); print t "\t" F "#" id } }
  ' "$f"
done \
| perl -CSD -Mutf8 -ne 'chomp; next unless /\t/; ($t,$l)=split/\t/,$_,2; $k=lc($t);
    $k=~tr/áàâãäçéèêëíìîïóòôõöúùûü/aaaaaceeeeiiiiooooouuuu/; print "$k\t$t\t$l\n";' \
| LC_ALL=C sort -t$'\t' -k1,1 -k2,2 \
| awk -F'\t' '
    BEGIN{ split("I II III IV V VI VII VIII IX X XI XII XIII XIV XV", R, " "); cur=""; symbuf="" }
    { key=$1; title=$2; loc=$3;
      vn=loc; sub(/^volumes\/v/,"",vn); sub(/-.*/,"",vn); rom=R[vn];
      line=sprintf("- [%s](%s) · Vol. %s", title, loc, rom);
      c=substr(key,1,1);
      if(c<"a"||c>"z"){ symbuf=symbuf line "\n"; next }
      letter=toupper(c);
      if(letter!=cur){ printf "\n### %s\n\n", letter; cur=letter }
      print line; }
    END{ if(symbuf!=""){ printf "\n### Símbolos\n\n%s", symbuf } }
  ' >> "$OUT"

echo "indice-remissivo.qmd gerado ($(grep -c '^- ' "$OUT") entradas)."
