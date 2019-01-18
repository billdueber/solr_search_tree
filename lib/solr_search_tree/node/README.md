# Nodes

The tree is made up of several "kinds" of nodes:

* Term (leaf)
  * terminal (no children)
  * holds actual search terms
* And / Or booleans
  * binary
  * can hold any other type
* Not
  * unary
  * can hold any other type
  * `X NOT Y` is illegal; must be, e.g., `X AND NOT Y` 
* Field -- representative of the field(s) being searched.
  * unary
  * can't have another Field node as a descendant
 * Tree metadata
  * Any arbitrary data you need to associate with a whole subtree. A Field
    is just a specialization of this.

 
 ## Example
 
 _author:Dueber OR title:(teacher OR student) AND NOT topic:Spiders_
 
 ```text
 OR
   - field<Author>
     -  term<Dueber>
   - AND 
     - field<title>
       - OR
         - term<teacher>
         - term<student>
     - NOT
       - field<topic>
         - term<spiders>

```

