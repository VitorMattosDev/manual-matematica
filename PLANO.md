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
