# ROADMAP — Manual de Matemática

Plano completo da obra, capítulo a capítulo, em ordem de execução. Este arquivo
é a **fila de trabalho**: define exatamente o que criar, em que volume, com que
nome de arquivo e em que ordem, do começo ao fim.

## Protocolo de execução (para o agente)

A próxima tarefa é **sempre o primeiro item não marcado `[ ]`** na ordem em que
aparece abaixo. Para executá-la:

1. Use exatamente o **caminho de arquivo** indicado no item.
2. Escreva o capítulo seguindo as convenções de `CLAUDE.md` e espelhando o
   gabarito `volumes/v1-fundamentos/03-inducao.qmd`.
3. Garanta que o arquivo está registrado em `chapters:` no `_quarto.yml`. Ao
   **iniciar um volume novo**, descomente (ou crie) o bloco `part:` dele.
4. Atualize `notacao.qmd` se introduziu símbolos novos.
5. Marque o item como `[x]` aqui e faça um commit (um capítulo por commit).

**Regra de ritmo:** um capítulo por vez. Não comece o próximo volume antes de
fechar o anterior (estratégia de "fatia vertical"). Não pule itens.

Legenda: `[x]` pronto · `[~]` esboço a completar · `[ ]` a fazer.

---

## Volume I — Fundamentos: Lógica e Aritmética
*Objetivo: a linguagem das demonstrações e a construção dos sistemas numéricos.
Pré-requisitos: nenhum.*

- [x] `volumes/v1-fundamentos/01-logica.qmd` — Lógica e demonstrações: proposições, conectivos, quantificadores, métodos de prova.
- [x] `volumes/v1-fundamentos/02-conjuntos.qmd` — Conjuntos: pertinência, inclusão, operações, produto cartesiano, leis de De Morgan.
- [x] `volumes/v1-fundamentos/03-inducao.qmd` — Indução e boa ordenação. **(gabarito de estilo)**
- [x] `volumes/v1-fundamentos/04-naturais.qmd` — Números naturais: axiomas de Peano, adição, multiplicação, ordem.
- [x] `volumes/v1-fundamentos/05-inteiros-divisibilidade.qmd` — Inteiros e divisibilidade: construção de ℤ, relação de divisão, propriedades.
- [x] `volumes/v1-fundamentos/06-mdc-euclides.qmd` — MDC, MMC e algoritmo de Euclides; identidade de Bézout.
- [x] `volumes/v1-fundamentos/07-primos-tfa.qmd` — Números primos e o Teorema Fundamental da Aritmética; infinitude dos primos.
- [x] `volumes/v1-fundamentos/08-congruencias.qmd` — Congruências e aritmética modular; pequeno teorema de Fermat.
- [x] `volumes/v1-fundamentos/09-racionais.qmd` — Números racionais: construção, densidade, representação decimal.
- [x] `volumes/v1-fundamentos/10-reais-introducao.qmd` — Os reais: introdução intuitiva, irracionalidade de √2, completude (informal).

## Volume II — Álgebra Elementar
*Objetivo: manipulação simbólica, equações, polinômios. Pré-req.: Vol. I.*

- [x] `volumes/v2-algebra/01-expressoes.qmd` — Expressões algébricas e manipulação.
- [x] `volumes/v2-algebra/02-equacoes-1grau.qmd` — Equações do primeiro grau.
- [x] `volumes/v2-algebra/03-sistemas-lineares.qmd` — Sistemas lineares elementares (substituição, adição).
- [x] `volumes/v2-algebra/04-equacoes-2grau.qmd` — Equações do segundo grau; fórmula de Bhaskara, relações de Girard.
- [x] `volumes/v2-algebra/05-inequacoes.qmd` — Inequações e estudo de sinal.
- [x] `volumes/v2-algebra/06-polinomios.qmd` — Polinômios: operações, grau, divisão.
- [x] `volumes/v2-algebra/07-fatoracao.qmd` — Produtos notáveis e fatoração.
- [x] `volumes/v2-algebra/08-funcoes-polinomiais.qmd` — Funções polinomiais; teorema do resto e de D'Alembert.
- [x] `volumes/v2-algebra/09-progressoes.qmd` — Progressões aritméticas e geométricas.
- [x] `volumes/v2-algebra/10-combinatoria.qmd` — Análise combinatória e binômio de Newton.

## Volume III — Geometria e Trigonometria
*Objetivo: geometria sintética, métrica e analítica. Pré-req.: Vol. I.*

- [x] `volumes/v3-geometria/01-euclidiana-axiomas.qmd` — Geometria euclidiana: axiomas, pontos, retas, ângulos.
- [x] `volumes/v3-geometria/02-triangulos.qmd` — Triângulos e casos de congruência.
- [x] `volumes/v3-geometria/03-semelhanca-tales.qmd` — Semelhança e teorema de Tales.
- [x] `volumes/v3-geometria/04-pitagoras.qmd` — Teorema de Pitágoras e relações métricas.
- [x] `volumes/v3-geometria/05-circunferencia.qmd` — Circunferência, ângulos e potência de ponto.
- [x] `volumes/v3-geometria/06-areas.qmd` — Áreas de figuras planas.
- [x] `volumes/v3-geometria/07-poliedros.qmd` — Geometria espacial: poliedros, relação de Euler.
- [x] `volumes/v3-geometria/08-volumes.qmd` — Volumes e sólidos de revolução.
- [x] `volumes/v3-geometria/09-trigonometria-triangulo.qmd` — Trigonometria no triângulo retângulo; leis dos senos e cossenos.
- [x] `volumes/v3-geometria/10-trigonometria-circulo.qmd` — Círculo trigonométrico, identidades e funções.
- [x] `volumes/v3-geometria/11-geometria-analitica.qmd` — Geometria analítica: ponto, reta, circunferência.
- [x] `volumes/v3-geometria/12-conicas.qmd` — Cônicas: elipse, parábola, hipérbole.

## Volume IV — Pré-cálculo (Funções)
*Objetivo: a noção de função e as famílias fundamentais. Pré-req.: Vols. I–III.*

- [x] `volumes/v4-precalculo/01-funcoes.qmd` — O conceito de função; domínio, imagem, composição, inversa.
- [x] `volumes/v4-precalculo/02-afim-quadratica.qmd` — Funções afim e quadrática.
- [x] `volumes/v4-precalculo/03-modular.qmd` — Função modular.
- [x] `volumes/v4-precalculo/04-exponencial.qmd` — Função exponencial.
- [x] `volumes/v4-precalculo/05-logaritmo.qmd` — Logaritmos e função logarítmica.
- [x] `volumes/v4-precalculo/06-trigonometricas.qmd` — Funções trigonométricas e inversas.
- [x] `volumes/v4-precalculo/07-sequencias.qmd` — Sequências e a noção informal de limite.

## Volume V — Cálculo
*Objetivo: limites, derivadas, integrais e séries. Pré-req.: Vol. IV.*

- [x] `volumes/v5-calculo/01-limites.qmd` — Limites e continuidade.
- [x] `volumes/v5-calculo/02-derivada.qmd` — A derivada: definição e interpretação.
- [x] `volumes/v5-calculo/03-regras-derivacao.qmd` — Regras de derivação; regra da cadeia.
- [x] `volumes/v5-calculo/04-aplicacoes-derivada.qmd` — Aplicações: otimização, esboço de gráficos, L'Hôpital.
- [x] `volumes/v5-calculo/05-integral.qmd` — A integral definida e somas de Riemann.
- [x] `volumes/v5-calculo/06-tfc.qmd` — Teorema Fundamental do Cálculo.
- [x] `volumes/v5-calculo/07-tecnicas-integracao.qmd` — Técnicas de integração.
- [x] `volumes/v5-calculo/08-aplicacoes-integral.qmd` — Aplicações da integral (áreas, volumes, comprimento de arco).
- [x] `volumes/v5-calculo/09-series.qmd` — Sequências e séries numéricas; critérios de convergência.
- [x] `volumes/v5-calculo/10-taylor.qmd` — Séries de potências e séries de Taylor.
- [x] `volumes/v5-calculo/11-varias-variaveis.qmd` — Cálculo de várias variáveis: derivadas parciais, gradiente.
- [x] `volumes/v5-calculo/12-integrais-multiplas.qmd` — Integrais múltiplas.

## Volume VI — Álgebra Linear
*Objetivo: espaços vetoriais e transformações lineares. Pré-req.: Vols. II, V.*

- [x] `volumes/v6-linear/01-sistemas-gauss.qmd` — Sistemas lineares e eliminação de Gauss.
- [x] `volumes/v6-linear/02-matrizes.qmd` — Matrizes e operações.
- [x] `volumes/v6-linear/03-determinantes.qmd` — Determinantes.
- [x] `volumes/v6-linear/04-espacos-vetoriais.qmd` — Espaços vetoriais e subespaços.
- [x] `volumes/v6-linear/05-base-dimensao.qmd` — Independência linear, bases e dimensão.
- [x] `volumes/v6-linear/06-transformacoes-lineares.qmd` — Transformações lineares e matriz associada.
- [x] `volumes/v6-linear/07-autovalores.qmd` — Autovalores e autovetores.
- [x] `volumes/v6-linear/08-diagonalizacao.qmd` — Diagonalização.
- [x] `volumes/v6-linear/09-produto-interno.qmd` — Espaços com produto interno; ortogonalidade.
- [x] `volumes/v6-linear/10-teorema-espectral.qmd` — Formas quadráticas e teorema espectral.

## Volume VII — Álgebra Abstrata
*Objetivo: grupos, anéis, corpos. Pré-req.: Vols. I, VI.*

- [x] `volumes/v7-abstrata/01-grupos.qmd` — Operações binárias e grupos.
- [x] `volumes/v7-abstrata/02-subgrupos-ciclicos.qmd` — Subgrupos e grupos cíclicos.
- [x] `volumes/v7-abstrata/03-lagrange.qmd` — Homomorfismos e teorema de Lagrange.
- [x] `volumes/v7-abstrata/04-quociente-isomorfismo.qmd` — Grupos quociente e teoremas de isomorfismo.
- [x] `volumes/v7-abstrata/05-aneis.qmd` — Anéis e ideais.
- [x] `volumes/v7-abstrata/06-dominios-corpos.qmd` — Domínios de integridade e corpos.
- [x] `volumes/v7-abstrata/07-aneis-polinomios.qmd` — Anéis de polinômios.
- [x] `volumes/v7-abstrata/08-extensoes-corpos.qmd` — Extensões de corpos.
- [x] `volumes/v7-abstrata/09-galois.qmd` — Introdução à teoria de Galois.

## Volume VIII — Análise Real
*Objetivo: o cálculo com rigor. Pré-req.: Vols. V, VI.*

- [x] `volumes/v8-analise/01-construcao-reais.qmd` — Construção dos reais (cortes de Dedekind / Cauchy).
- [x] `volumes/v8-analise/02-supremo-completude.qmd` — Supremo, ínfimo e completude.
- [x] `volumes/v8-analise/03-sequencias.qmd` — Sequências e convergência.
- [x] `volumes/v8-analise/04-series.qmd` — Séries numéricas (rigoroso).
- [x] `volumes/v8-analise/05-topologia-reta.qmd` — Topologia da reta: abertos, fechados, compactos.
- [x] `volumes/v8-analise/06-continuidade.qmd` — Limites e continuidade (ε-δ).
- [x] `volumes/v8-analise/07-derivacao.qmd` — Derivação rigorosa; teorema do valor médio.
- [x] `volumes/v8-analise/08-integral-riemann.qmd` — A integral de Riemann.
- [x] `volumes/v8-analise/09-sequencias-funcoes.qmd` — Sequências e séries de funções.
- [x] `volumes/v8-analise/10-convergencia-uniforme.qmd` — Convergência uniforme.

## Volume IX — Topologia
*Objetivo: espaços topológicos e suas propriedades. Pré-req.: Vol. VIII.*

- [x] `volumes/v9-topologia/01-espacos-metricos.qmd` — Espaços métricos.
- [x] `volumes/v9-topologia/02-espacos-topologicos.qmd` — Espaços topológicos: abertos, vizinhanças.
- [x] `volumes/v9-topologia/03-base-subbase.qmd` — Base, subbase e geração de topologias.
- [x] `volumes/v9-topologia/04-continuidade-homeomorfismos.qmd` — Continuidade e homeomorfismos.
- [x] `volumes/v9-topologia/05-conexidade.qmd` — Conexidade.
- [x] `volumes/v9-topologia/06-compacidade.qmd` — Compacidade.
- [x] `volumes/v9-topologia/07-separacao.qmd` — Axiomas de separação (Hausdorff etc.).
- [x] `volumes/v9-topologia/08-grupo-fundamental.qmd` — Introdução à topologia algébrica: grupo fundamental.

## Volume X — Geometria Diferencial
*Objetivo: curvas, superfícies e variedades. Pré-req.: Vols. V, VI, IX.*

- [x] `volumes/v10-diferencial/01-curvas.qmd` — Curvas parametrizadas.
- [x] `volumes/v10-diferencial/02-frenet.qmd` — Curvatura, torção e triedro de Frenet.
- [x] `volumes/v10-diferencial/03-superficies.qmd` — Superfícies regulares.
- [x] `volumes/v10-diferencial/04-primeira-forma.qmd` — Primeira forma fundamental.
- [x] `volumes/v10-diferencial/05-segunda-forma.qmd` — Aplicação de Gauss e segunda forma fundamental.
- [x] `volumes/v10-diferencial/06-curvaturas.qmd` — Curvaturas gaussiana e média.
- [x] `volumes/v10-diferencial/07-geodesicas.qmd` — Geodésicas.
- [x] `volumes/v10-diferencial/08-gauss-bonnet.qmd` — Teorema Egregium e teorema de Gauss-Bonnet.
- [x] `volumes/v10-diferencial/09-variedades.qmd` — Introdução a variedades diferenciáveis.

---

*Este roadmap é uma proposta de escopo, não um contrato fechado: capítulos podem
ser fundidos, divididos ou reordenados conforme a obra evolui — mas qualquer
mudança deve ser refletida aqui e no `_quarto.yml` antes de seguir.*
