# Binary Tree

## Tree concept

- Is a data structure to simulate a hierarchical tree structure
- Each node of the tree will have a **root** value and a list of references to other nodes which are called **child nodes**
- Is a kind of graph. But a graph may not be a tree
- Therefore can also be defined as a directed acyclic graph which has **N nodes** and **N-1 edges**

## Binary tree concept

- Is a tree data structure in which each node has **at most two children**
- Those child nodes are called **left nodes** and **right nodes**

## Tree traversal

### Pre-order traversal
- Visit the root first.
- Then traverse the left subtree.
- Finally traverse the right subtree.
- `Root -> left subtree -> right subtree`
- Example:
  ```
        F
      /  \
     B    G
    / \   /
   A  D  I
     / \  \
    C  E   H
  ```
  => `F B A D C E G I H `

### In-order traversal

- Traverse the left subtree first
- Then visit the root
- Finally traverse the right subtree
- `Left substree -> Root -> right subtree`
- Example:
  ```
        F
      /  \
     B    G
    / \   /
   A  D  I
     / \  \
    C  E   H
  ```
  => `A B C D E F G H I`

### Post-order traversal

- Traverse the left subtree first
- Then traverse the right subtree
- Finally visit the root
- `Left subtree -> Right subtree -> root`
- When delete nodes in a tree, deletion process will be in post-order.
- When delete a node, it will delete its left child and its right child before deleting the node itself.
- Is widely use in mathematical expression
- Example:
  ```
        F
      /  \
     B    G
    / \   /
   A  D  I
     / \  \
    C  E   H
  ```
  => `A C E D B H I G F`

### Level-order traversal aka BFS
- starts with a root node and visit the node itself first
- Then traverse its neighbors
- Traverse its second level neighbors, traverse its third level neighbors, so on and so forth
- Example:
  ```
        F
      /  \
     B    G
    / \   /
   A  D  I
     / \  \
    C  E   H
  ```
  => `F B G A D I C E H`

## Notes
- We can solve tree problems by either **iterative** or **recursive** methods
