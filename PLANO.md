# Plano e convenções — Manual de Matemática

Este arquivo é a "fonte da verdade" do projeto: o roadmap dos volumes e o guia
de estilo. Atualize-o sempre que a estrutura mudar.

## Roadmap dos volumes

A ideia é uma fatia vertical primeiro: o **Volume I** vai ao ar completo antes de
abrir os próximos. Os capítulos abaixo são uma proposta inicial, não um
compromisso fechado.

| Vol. | Título | Capítulos previstos |
|---|---|---|
| I | Fundamentos: Lógica e Aritmética | Lógica · Conjuntos · **Indução** · Divisibilidade · Congruências |
| II | Álgebra Elementar | Expressões · Equações · Inequações · Polinômios |
| III | Geometria e Trigonometria | Geometria euclidiana · Áreas e volumes · Trigonometria |
| IV | Pré-cálculo | Funções · Exponencial e logaritmo · Sequências |
| V | Cálculo | Limites · Derivadas · Integrais · Séries |
| VI | Álgebra Linear | Vetores · Matrizes · Espaços vetoriais · Autovalores |
| VII | Álgebra Abstrata | Grupos · Anéis · Corpos |
| VIII | Análise Real | Construção de ℝ · Topologia da reta · Continuidade · Integral de Riemann |
| IX | Topologia | Espaços topológicos · Compacidade · Conexidade |
| X | Geometria Diferencial | Curvas · Superfícies · Variedades |

Dependências entre volumes estão no grafo em `index.qmd` (bloco `mermaid`).

## Como adicionar um capítulo

1. Crie o arquivo em `volumes/vN-tema/NN-nome.qmd`.
2. Adicione-o à lista `chapters` do volume em `_quarto.yml`.
3. Para abrir um volume novo, descomente (ou crie) o bloco `part:` correspondente.

## Convenções de escrita

Use o capítulo **Indução** (`volumes/v1-fundamentos/03-inducao.qmd`) como
gabarito. Resumo:

- **Estrutura do capítulo:** Motivação → Definições/Resultados → Exemplos →
  Exercícios → Soluções selecionadas.
- **Ambientes** (numeram e referenciam sozinhos):

  ```
  ::: {#thm-nome}
  ## Título do teorema
  Enunciado...
  :::

  ::: {.proof}
  Demonstração...
  :::
  ```

  Prefixos: `thm-` teorema, `lem-` lema, `cor-` corolário, `prp-` proposição,
  `def-` definição, `exm-` exemplo, `exr-` exercício.
- **Referência cruzada:** `@thm-nome` vira "Teorema 3.1" automaticamente.
- **Caixas:** `.callout-note` (observação), `.callout-warning` (erro comum),
  `.callout-tip collapse="true"` (solução escondida).
- **Matemática:** `$...$` em linha, `$$...$$` em destaque. Equações numeradas
  com `\tag{}` ou referência via `@eq-rotulo`.
- **Idioma e tom:** português, didático antes de formal; sempre motivar antes de
  definir.

## Identidade visual

Tipografia e cores ficam em `styles.css` (HTML) e no `include-in-header` do PDF
em `_quarto.yml`. Mantê-las centralizadas garante que os próximos manuais
(Física, Química…) herdem o mesmo padrão.

## Figuras (TikZ / PGFplots)

As figuras são escritas em **TikZ/PGFplots** dentro do próprio `.qmd` — texto
versionável, sem arquivos de imagem soltos. O filtro `danmackinlay/tikz`
(vendorizado em `_extensions/`) compila cada bloco em **SVG** (no HTML, via
`dvisvgm`) ou embute o **PDF** direto (no livro em PDF).

**Padrão de uma figura referenciável** (espelhe-o sempre):

```markdown
A @fig-nome mostra ...

::: {#fig-nome}
```{.tikz}
%%| filename: nome-do-arquivo
%%| alt: Texto alternativo descritivo (acessibilidade).
\begin{tikzpicture}
  ...
\end{tikzpicture}
```

Legenda da figura, terminando em ponto.
:::
```

- O **id vai na `div` `::: {#fig-...}`**, não no bloco de código — é assim que o
  crossref do Quarto numera a figura e faz `@fig-nome` → "Figura 4.1".
- A **legenda** é o parágrafo logo antes do `:::`.
- **Preâmbulo e paleta são centralizados** no template padrão do filtro, em
  `_extensions/danmackinlay/tikz/tikz.lua` (não repita `\usepackage` por figura).
  Estilos prontos: `curva` (azul, traço grosso), `destaque` (vermelho),
  `auxiliar` (cinza tracejado), `eixo`, `ponto`. Cores: `manualblue`,
  `manualred`, `manualgreen`, `manualyellow`, `manualgray`.
- O `_extensions/danmackinlay/tikz/tikz.lua` tem **patches locais** (marcados com
  "Local patch") para Windows e para a saída PDF. **Não rode `quarto update`** na
  extensão sem reaplicá-los.
