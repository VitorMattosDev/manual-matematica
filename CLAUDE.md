# CLAUDE.md — Manual de Matemática

Livro aberto em **Quarto**, primeiro título da série *Manuais de Ciências*. Vai
da aritmética à geometria diferencial. Publicado no GitHub Pages.

## Comandos

```bash
quarto preview     # site local com hot-reload (só HTML) — uso diário
quarto render      # gera site + PDF em _book/ (PDF exige TeX)
quarto publish gh-pages   # render + deploy manual (raramente necessário)
```

- O deploy normal é **automático**: todo `push` na `main` dispara o GitHub
  Action (`.github/workflows/publish.yml`), que renderiza e publica (com PDF,
  via TinyTeX na nuvem).
- **PDF exige TeX local** (`quarto install tinytex`). Sem TeX, qualquer render do
  formato PDF falha com `No TeX installation was detected`. Para trabalhar só no
  site numa máquina sem TeX, comente o bloco `pdf:` em `_quarto.yml`.
- **Figuras TikZ também exigem TeX**, inclusive no HTML: cada figura é compilada
  por LaTeX → `dvisvgm` (SVG). Num capítulo com figura, o `quarto preview` numa
  máquina sem TeX falhará nesse bloco. Toolchain completo:
  `quarto install tinytex` e depois, no `bin/windows` do TinyTeX,
  `tlmgr install dvisvgm pgfplots`.

## Estrutura

```
_quarto.yml   configuração do livro (estrutura, formatos, rótulos PT, lang: pt no topo)
index.qmd     apresentação + mapa de pré-requisitos (mermaid)
notacao.qmd   apêndice de notação
ROADMAP.md    fila de trabalho: o que criar, em que ordem, com status (O QUE FAZER)
PLANO.md      guia de estilo e convenções (COMO FAZER)
volumes/      capítulos, em volumes/vN-tema/NN-nome.qmd
```

## Convenções de escrita (sempre seguir)

- O capítulo `volumes/v1-fundamentos/03-inducao.qmd` é o **gabarito de estilo**.
  Ao escrever qualquer capítulo novo, espelhe a estrutura dele.
- Estrutura padrão do capítulo: Motivação → Definições/Resultados → Exemplos →
  Exercícios → Soluções selecionadas.
- Idioma **português**; tom didático antes de formal — sempre motivar antes de
  definir.
- Ambientes (numeram e referenciam sozinhos), com `## Título` interno opcional:
  - `::: {#thm-nome}` teorema · `lem-` lema · `cor-` corolário · `prp-` proposição
  - `::: {#def-nome}` definição · `exm-` exemplo · `exr-` exercício
  - `::: {.proof}` demonstração · caixas: `.callout-note/-warning/-tip`
- Referência cruzada: `@thm-nome` → "Teorema 3.1" automático. **Nunca** escreva
  "Teorema 3.1" na mão.
- Matemática: `$...$` em linha, `$$...$$` em destaque.
- Figuras: **TikZ/PGFplots** num bloco ```` ```{.tikz} ```` envolto numa div
  `::: {#fig-nome}` com legenda; referencie com `@fig-nome`. O padrão completo,
  os estilos prontos (`curva`, `destaque`, `ponto`…) e a paleta estão no
  `PLANO.md` (seção "Figuras"). **Nunca** escreva "Figura 4.1" na mão.

## Regras do projeto

- **Não** edite numerações, sumário do `_quarto.yml` ou rótulos manualmente sem
  necessidade — o Quarto gera tudo.
- Ao adicionar capítulo: criar o `.qmd` E registrá-lo em `chapters:` do
  `_quarto.yml`. Para abrir um volume novo, descomentar/criar o bloco `part:`.
- Mantenha `notacao.qmd` e a tabela do `PLANO.md` atualizados ao introduzir
  notação ou capítulos novos.
- Antes de propor reestruturação grande, consulte `PLANO.md` (é a fonte da
  verdade do roadmap e das convenções).
- Commits pequenos e descritivos, um por capítulo/seção concluída.

## O que construir (roadmap)

A sequência completa da obra — todos os volumes e capítulos, em ordem, com
caminho de arquivo e status — está em **`ROADMAP.md`**. Ao receber um pedido
genérico como "escreva o próximo capítulo":

1. Abra `ROADMAP.md` e pegue o **primeiro item não marcado `[ ]`** (ou `[~]`,
   esboço a completar) na ordem em que aparece.
2. Siga o "Protocolo de execução" descrito no topo do `ROADMAP.md`.
3. Ao terminar, marque o item como `[x]` no `ROADMAP.md` e faça o commit.

Não escolha capítulos fora de ordem nem comece um volume novo antes de fechar o
anterior, salvo se o usuário pedir explicitamente.

## Estado atual

Volume I em construção. O `ROADMAP.md` é a referência de progresso: capítulo 3
(Indução) está pronto; 1 (Lógica) e 2 (Conjuntos) são esboços; os demais estão
pendentes. Prioridade: fechar o Volume I antes de abrir o Volume II.
