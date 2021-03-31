---


---

<h2 id="haskell">Haskell</h2>
<p>Haskell é uma linguagem puramente funcional, o que significa que as funções não tem efeitos colaterais e respeitam a transparência referencial, que significa que uma função chamada 2 vezes com os mesmos parâmetros retornam o mesmo valor.</p>
<h3 id="funções">Funções</h3>
<p>As funções são a base de Haskell. Elas utilizam a notação prefix, que indica que as funções devem ser chamadas da seguinte forma: <code>(nome da função) (argumentos)</code>`, com um espaço entre eles.<br>
Ex.:</p>
<pre class=" language-haskell"><code class="prism  language-haskell"><span class="token builtin">succ</span> <span class="token number">8</span>
<span class="token builtin">max</span> <span class="token number">5</span> <span class="token punctuation">(</span><span class="token builtin">min</span> <span class="token number">3</span> <span class="token number">10</span><span class="token punctuation">)</span>
<span class="token builtin">min</span> <span class="token number">8</span> <span class="token number">10</span>
</code></pre>
<p>Se uma função receber 2 parâmetros ela pode ser reescrita com uma notação infix da seguinte forma:</p>
<pre class=" language-haskell"><code class="prism  language-haskell"><span class="token builtin">div</span> <span class="token number">92</span> <span class="token number">10</span>
<span class="token comment">-- Pode ser reescrito como</span>
<span class="token number">92</span> `<span class="token builtin">div</span>` <span class="token number">10</span>
</code></pre>
<h3 id="listas">Listas</h3>
<p>As listas são as principais estruturas de dados presentes em Haskell. Elas são homogêneas, o que significa que todos os seus elementos são valores do mesmo tipo.<br>
Exemplo de listas:</p>
<pre class=" language-haskell"><code class="prism  language-haskell"><span class="token punctuation">[</span><span class="token number">1</span><span class="token punctuation">,</span> <span class="token number">2</span><span class="token punctuation">,</span> <span class="token number">3</span><span class="token punctuation">]</span> <span class="token comment">-- Lista de números</span>
<span class="token punctuation">[</span><span class="token string">"A"</span><span class="token punctuation">,</span> <span class="token string">"B"</span><span class="token punctuation">,</span> <span class="token string">"C"</span><span class="token punctuation">]</span> <span class="token comment">-- Lista de strings</span>
<span class="token punctuation">[</span><span class="token punctuation">[</span><span class="token punctuation">]</span><span class="token punctuation">.</span> <span class="token punctuation">[</span><span class="token punctuation">]</span><span class="token punctuation">]</span> <span class="token comment">-- Lista de listas</span>
</code></pre>
<p>Em Haskell, há a possibilidade de construir listas de uma forma muito parecida com a notação usada para construir um conjunto em matemática. A notação pode ser vista <a href="https://en.wikipedia.org/wiki/Set_(mathematics)#Set-builder_notation">aqui</a></p>
<p>Portanto, toda List Compreenssion tem 3 partes:</p>
<ul>
<li>A saída -&gt; Representa os valores que estarão presentes na lista.</li>
<li>Entrada dos valores -&gt; Os elementos precisam vir de algum lugar. Geralmente eles vêm de uma lista.</li>
<li>Predicados -&gt; Não queremos todos os elementos que vieram da entrada em nossa saída. Precisamos fazer uma espécie de filtro com eles.</li>
</ul>
<p>

Exemplos de list compreensios:</p>
<pre class=" language-haskell"><code class="prism  language-haskell"><span class="token punctuation">[</span><span class="token hvariable">x</span> <span class="token operator">|</span> <span class="token hvariable">x</span> <span class="token operator">&lt;-</span> <span class="token punctuation">[</span><span class="token number">1</span><span class="token operator">..</span><span class="token number">100</span><span class="token punctuation">]</span><span class="token punctuation">,</span> <span class="token builtin">mod</span> <span class="token hvariable">x</span> <span class="token number">2</span> <span class="token operator">=</span> <span class="token number">1</span><span class="token punctuation">]</span> <span class="token comment">-- Listando os números ímpares presentes no conjunto [1, 100]]. Note que a construção [1..100] em Haskell gera uma lista [1, 2, 3, 4, ..., 98, 99, 100]. O nosso predicado afirma que se o número oriundo da entrada não for divísivel por 2, deve ser colocado na lista da saída. A nossa saída é apenas a função identidade de x, o próprio x.</span>
<span class="token punctuation">[</span><span class="token hvariable">x</span> <span class="token operator">+</span> <span class="token number">2</span> <span class="token operator">|</span> <span class="token hvariable">x</span> <span class="token operator">&lt;-</span> <span class="token punctuation">[</span><span class="token number">1</span><span class="token punctuation">,</span> <span class="token number">2</span><span class="token punctuation">,</span> <span class="token number">3</span><span class="token punctuation">]</span><span class="token punctuation">,</span> <span class="token hvariable">x</span> <span class="token operator">+</span> <span class="token number">1</span> <span class="token operator">==</span> <span class="token number">3</span><span class="token punctuation">]</span> <span class="token comment">-- Aqui obtemos os valores de x da lista [1, 2, 3]. Caso o valor de x acrescido de 1 seja igual a 3, colocamos na nossa lista de saída o valor de x + 2.</span>
</code></pre>
<p>É interessante notar que em Haskell, uma string não é nada mais que uma lista de char. Ou seja, <code>```"Hello" = ['H', 'e', 'l', 'l', o]</code>```. Tendo isso em vista, qualquer operação feita em listas também podem ser feitas em strings.</p>
<h3 id="operações-com-listas">

### Operações com listas</h3>
<p>
Concatenação (++)</p>
<pre class=" language-haskell"><code class="prism  language-haskell"><span class="token punctuation">[</span><span class="token number">1</span><span class="token punctuation">,</span><span class="token number">2</span><span class="token punctuation">,</span><span class="token number">3</span><span class="token punctuation">]</span> <span class="token operator">++</span> <span class="token punctuation">[</span><span class="token number">4</span><span class="token punctuation">,</span> <span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">6</span><span class="token punctuation">]</span>
<span class="token comment">-- [1,2,3,4,5,6]</span>
<span class="token punctuation">[</span><span class="token number">3</span><span class="token punctuation">,</span><span class="token number">1</span><span class="token punctuation">]</span><span class="token operator">++</span><span class="token punctuation">[</span><span class="token number">1</span><span class="token punctuation">,</span><span class="token number">2</span><span class="token punctuation">]</span>
<span class="token comment">--[3,1,1,2]</span>
<span class="token string">"Hello"</span> <span class="token operator">++</span> <span class="token string">" World"</span>
<span class="token comment">-- "Hello World"</span>
</code></pre>
<p>
```haskell
[1,2,3] ++ [4, 5, 6]
-- [1,2,3,4,5,6]
[3,1]++[1,2]
--[3,1,1,2]
"Hello" ++ " World"
-- "Hello World"
```
A operação de concatenação geralmente é custosa para listas com tamanho grande, já que precisa varrer todos os elementos de uma das listas.</p>
<p>

Inserir elemento (:) - Também chamado de cons operator</p>
<pre class=" language-haskell"><code class="prism  language-haskell"><span class="token number">5</span><span class="token operator">:</span><span class="token punctuation">[</span><span class="token number">1</span><span class="token punctuation">,</span><span class="token number">2</span><span class="token punctuation">]</span>
<span class="token comment">-- [5,1,2]</span>
<span class="token punctuation">[</span><span class="token punctuation">]</span><span class="token operator">:</span><span class="token punctuation">[</span><span class="token punctuation">]</span>
<span class="token comment">--[[]]</span>
<span class="token char">'H'</span><span class="token operator">:</span><span class="token string">"ello"</span>
<span class="token comment">--"Hello"</span>
</code></pre>
<p>// TODO</p>
<p>
```haskell
5:[1,2]
-- [5,1,2]
[]:[]
--[[]]
'H':"ello"
--"Hello"
```

// TODO

Extrair elemento por índice (!!)<br>
Comparação de listas<br>
head<br>
tail<br>
last<br>
init<br>
length<br>
null<br>
reverse<br>
take<br>
drop<br>
maximum<br>
minimum<br>
sum<br>
sum
product<br>
elem<br>
cycle<br>
repeat<br>
replicate</p>
<blockquote>
<p>


> Written with <a href="[StackEdit](https://stackedit.io/">StackEdit</a>.</p>
</blockquote>
).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3NDE5MTY4MTBdfQ==
-->