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
[1, 2, 3]
["A", "B", "C"]
[[]. 
```

> Written with [StackEdit](https://stackedit.io/).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTY2Njc4MTcxOF19
-->