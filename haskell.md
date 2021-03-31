## Haskell

Haskell é uma linguagem puramente funcional, o que significa que as funções não tem efeitos colaterais e respeitam a transparência referencial, que significa que uma função chamada 2 vezes com os mesmos parâmetros retornam o mesmo valor.

### Funções
As funções são a base de Haskell. Elas utilizam a notação prefix, que indica que as funções devem ser chamadas da seguinte forma: `(nome da função) (argumentos)`, com um espaço entre eles.
Ex.:
```haskell
succ 8
max 5 (min 3 10)
min 8 10
```
Se uma função receber 2 parâmetros ela pode ser reescrita com uma notação infix da seguinte forma:
```haskell
div 92 10
-- Pode ser reescrito como
92 `div` 10
```
### Listas
As listas são as principais estruturas de dados presentes em Haskell. Elas são homogêneas, o que significa que todos os seus elementos são valores do mesmo tipo.
Exemplo de listas:
```haskell
[1, 2, 3] -- Lista de números
["A", "B", "C"] -- Lista de strings
[[]. []] -- Lista de listas
```
Em Haskell, há a possibilidade de construir listas de uma forma muito parecida com a notação usada para construir um conjunto em matemática. A notação pode ser vista [aqui](https://en.wikipedia.org/wiki/Set_(mathematics)#Set-builder_notation)

Portanto, toda List Compreenssion tem 3 partes: 
* A saída -> Representa os valores que estarão presentes na lista.
* Entrada dos valores -> Os elementos precisam vir de algum lugar. Geralmente eles vêm de uma lista.
* Predicados -> Não queremos todos os elementos que vieram da entrada em nossa saída. Precisamos fazer uma espécie de filtro com eles.

Exemplos de list compreensios:
```haskell
[x | x <- [1..100], mod x 2 = 1] -- Listando os números ímpares presentes no conjunto [1, 100]]. Note que a construção [1..100] em Haskell gera uma lista [1, 2, 3, 4, ..., 98, 99, 100]. O nosso predicado afirma que se o número oriundo da entrada não for divísivel por 2, deve ser colocado na lista da saída. A nossa saída é apenas a função identidade de x, o próprio x.

```

> Written with [StackEdit](https://stackedit.io/).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTY5NzEwNTEwNF19
-->