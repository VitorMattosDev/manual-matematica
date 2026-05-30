# Manual de Matemática

Primeiro título da série *Manuais de Ciências* — um livro aberto que vai da
aritmética à geometria diferencial. Construído com [Quarto](https://quarto.org)
e publicado no GitHub Pages.

## Conteúdo

A obra está **completa**, em 13 volumes que vão dos fundamentos à análise
complexa. A **Fase 1** (Volumes I–X) cobre da aritmética à geometria diferencial;
a **Fase 2** estende o Cálculo e a Geometria Diferencial e acrescenta três
volumes voltados à física-matemática.

| Vol. | Tema |
|------|------|
| I    | Fundamentos: lógica e aritmética |
| II   | Álgebra elementar |
| III  | Geometria e trigonometria |
| IV   | Pré-cálculo (funções) |
| V    | Cálculo *(inclui cálculo vetorial)* |
| VI   | Álgebra linear |
| VII  | Álgebra abstrata |
| VIII | Análise real |
| IX   | Topologia |
| X    | Geometria diferencial *(inclui cálculo tensorial e geometria riemanniana)* |
| XI   | Equações diferenciais (EDOs e EDPs) |
| XII  | Probabilidade e estatística |
| XIII | Análise complexa |

A sequência detalhada, capítulo a capítulo e com status (Fases 1 e 2), está em
`ROADMAP.md`.

## Setup em uma máquina nova

Para rodar o projeto localmente em qualquer máquina, são necessários:

1. **Quarto (CLI)** — obrigatório. Baixe e instale em
   <https://quarto.org/docs/get-started/>. Confira a instalação com:
   ```bash
   quarto --version
   ```
2. **Uma distribuição TeX** — obrigatória **apenas para gerar o PDF**. O jeito
   mais simples é deixar o próprio Quarto instalar o TinyTeX (~100 MB):
   ```bash
   quarto install tinytex
   ```
   Sem isso, qualquer comando que renderize o formato PDF falha com
   `No TeX installation was detected`. Se você só quer o site (HTML), pode pular
   este passo (veja "Rodar apenas o site, sem PDF" abaixo).

> O conteúdo (arquivos `.qmd`, `_quarto.yml`, etc.) vem do repositório Git —
> basta clonar. As duas ferramentas acima é que precisam ser instaladas em cada
> máquina nova, pois não ficam versionadas no projeto.

## Construir localmente

```bash
quarto preview     # abre o site no navegador e recarrega ao salvar (só HTML)
quarto render      # gera o site e o PDF em _book/ (PDF exige TeX instalado)
```

### Rodar apenas o site, sem PDF

Se não quiser instalar o TeX numa máquina, comente o bloco `pdf:` dentro de
`format:` no `_quarto.yml`. Sem o formato PDF, o `render`/`preview`/`publish`
não toca em TeX e roda direto. Para voltar a gerar PDF depois, descomente o
bloco e rode `quarto install tinytex`.

## Publicar no GitHub Pages

Configuração inicial (uma vez só):

1. Crie um repositório no GitHub chamado `manual-matematica` e envie estes
   arquivos para a branch `main`.
2. O `repo-url` no `_quarto.yml` já aponta para
   `VitorMattosDev/manual-matematica` (ajuste se você fez um fork).
3. **Inicialize a branch `gh-pages`** rodando uma vez, localmente:
   ```bash
   quarto publish gh-pages
   ```
   Esse comando renderiza o livro (HTML **e** PDF) e cria/empurra a branch
   `gh-pages`. Como ele também gera o PDF, **precisa de TeX instalado** — veja
   "Setup em uma máquina nova". Se não tiver TeX, comente o bloco `pdf:` antes de
   rodar (o site sobe só com HTML).
4. No GitHub: **Settings → Pages → Build and deployment → Source: Deploy from a
   branch**, e escolha a branch **`gh-pages`** com a pasta **`/ (root)`**.

Depois dessa inicialização, o deploy passa a ser automático: cada `push` na
branch `main` dispara o GitHub Action em `.github/workflows/publish.yml`, que
renderiza o livro e atualiza o site. O Action já instala o TinyTeX na nuvem
(`tinytex: true`), então **o PDF é gerado no deploy automático mesmo que a
máquina local não tenha TeX**.

O site ficará em `https://vitormattosdev.github.io/manual-matematica/`.

## Estrutura

```
_quarto.yml      configuração do livro (estrutura, formatos, rótulos PT)
index.qmd        apresentação + mapa de pré-requisitos
notacao.qmd      apêndice de notação
volumes/         capítulos, organizados por volume (v1-fundamentos … v10-diferencial)
ROADMAP.md       sequência completa de volumes e capítulos (fila de trabalho), com status
PLANO.md         guia de estilo e convenções de escrita
CLAUDE.md        instruções e convenções do projeto para colaboradores/agentes
references.bib   referências bibliográficas
styles.css       estilos do site (HTML)
.github/         deploy automático (GitHub Action)
```

## Licença

Conteúdo sob CC BY-SA 4.0; código sob MIT (sugestão — ajuste se quiser).
