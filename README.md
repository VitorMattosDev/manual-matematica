# Manual de Matemática

Primeiro título da série *Manuais de Ciências* — um livro aberto que vai da
aritmética à geometria diferencial. Construído com [Quarto](https://quarto.org)
e publicado no GitHub Pages.

## Pré-requisitos

- [Quarto](https://quarto.org/docs/get-started/) (CLI).
- Opcional, só para gerar PDF localmente: `quarto install tinytex`.

## Construir localmente

```bash
quarto preview     # abre o site no navegador e recarrega ao salvar
quarto render      # gera o site (e o PDF) em _book/
```

## Publicar no GitHub Pages

O deploy é automático: cada `push` na branch `main` dispara o GitHub Action em
`.github/workflows/publish.yml`, que renderiza o livro e atualiza o site.

Configuração inicial (uma vez só):

1. Crie um repositório no GitHub chamado `manual-matematica` e envie estes
   arquivos para a branch `main`.
2. No GitHub: **Settings → Pages → Build and deployment → Source: Deploy from a
   branch**, e escolha a branch **`gh-pages`** (criada pelo Action no primeiro
   deploy) com a pasta **`/ (root)`**.
3. Troque `SEU-USUARIO` no `_quarto.yml` pelo seu usuário/organização.

O site ficará em `https://SEU-USUARIO.github.io/manual-matematica/`.

## Estrutura

```
_quarto.yml      configuração do livro (estrutura, formatos, rótulos PT)
index.qmd        apresentação + mapa de pré-requisitos
notacao.qmd      apêndice de notação
PLANO.md         roadmap dos volumes + guia de estilo
volumes/         capítulos, organizados por volume
.github/         deploy automático
```

## Licença

Conteúdo sob CC BY-SA 4.0; código sob MIT (sugestão — ajuste se quiser).
