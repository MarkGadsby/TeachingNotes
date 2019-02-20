# Implementing a Binary Tree in **Kotlin**

## Overview

In this tutorial, we'll implement the basic operations for a binary tree using the **Kotlin** programming language.

## Definition

In programming, a binary tree is a tree where every node has no more than two child nodes. Every node contains some data that we call a key.
Without loss of generality, let's limit our consideration to the case when the keys are just integer numbers.

    class Node  
	( 
		var m_key: Int, 
		var m_left: Node? = null, 
		var m_right: Node? = null
	)

That contains a value (the integer-valued field key) and optional references to a left and a right child that are of the same type as their parent.

We see that due to the linked nature, the whole binary tree can be described by just one node that we will call a root node.

Things become more interesting if we apply some restrictions on the tree structure. In this tutorial, we suppose that the tree is an ordered binary tree (also known as a binary search tree). This means the nodes are arranged in some order.

We suppose that all of the following conditions are part of our tree's invariant:

- the tree contains no duplicate keys
- for every node, its key is greater than the keys of its left subtree nodes
- for every node, its key is less than the keys of its right subtree nodes

## Basic Operations

Some of the most common operations include:

- A search for a node with a given value
- Insertion of a new value
- Removal of an existing value
- And retrieval of nodes in certain order

### Lookup

When the tree is ordered, the lookup process becomes very efficient: if the value to search is equal to the current node's one, then the lookup is over, if the value to search is bigger than the current node's one, then we may discard the left subtree and consider only the right one.
	
	fun findByValue(value: Int): Node?
	{
		when 
		{
			this.value > value -> m_left?.findByValue(value)
			this.value < value -> m_right?.findByValue(value)
			else -> this
		}
	}

Note that the value might not be present among the tree's keys and hence the result of the lookup might return a null value.

Note, how we have used the **Kotlin keyword** `when` which is a Java analog of the switch-case statement but much more powerful and flexible.

### Insertion

Since the tree does not allow any duplicate keys, it is quite easy to insert a new value:

- if the value is already present, no action is required
- if the value is not present, it is to be inserted to a node that has vacant left or right 'slot'

So, we may recursively parse the tree in search of a subtree that should accommodate the value. When the value is less than the key of the current node, pick its left subtree if it is present. If it is not present, it means the location to insert the value is found: this is the left child of the current node.

Similarly, in the case when the value is greater than the key of the current node. The only remaining possibility is when the value is equal to the current node key: it means that the value is already present in the tree and we do nothing:
	
	fun insert(value: Int)
	{
		if (value > this.m_key)
		{
			if (this.m_right == null) 
			{
				this.m_right = Node(value)
			} 
			else 
			{
				this.m_right.insert(value)
			}
		}
		else if (value < this.m_key) 
		{
			if (this.m_left == null) 
			{
				this.m_left = Node(value)
			} 
			else 
			{
				this.m_left.insert(value)
			}
		}
    }
	
### Traversal

There are various ways of how the nodes may be visited. Most common are depth-first, breadth-first, and level-first search. Here, we consider only depth-first search which can be of one of these kinds:

- pre-order (visit the parent node, then the left child, then the right child)
- in-order (visit the left child, then the parent node, then the right child)
- post-order (visit the left child, then the right child, then the parent node)

In **Kotlin,** all these kinds of traversal can be done in quite a simple way. For example, for the pre-order traversal, we have:
	
	fun visit(): Array<Int> 
	{
		val a = m_left?.visit() ?: emptyArray()
		val b = m_right?.visit() ?: emptyArray()
		
		return a + arrayOf(m_key) + b
	}
	
*A neat trick for in-order traversals: starting from the root, go around the tree counterclockwise. Print each node when you pass its bottom side.*

	fun <T> traversalInOrder(node: Node<T>?, list: MutableList<T>) 
	{
		if (node != null) 
		{
			traversalInOrder(node.leftNode, list)
			list.add(node.value)
			traversalInOrder(node.rightNode, list)
		}
	}

`?:` takes the right-hand value if the left-hand value is null (the elvis operator)
	
Note, how **Kotlin** allows us to concatenate arrays by using '+' operator. This implementation is far from being an efficient one: it is not a tail-recursive and for a deeper tree we may run into the stack overflow exception.

## Conclusion

In this tutorial, we considered how to construct and implement basic operations for a binary search tree using **Kotlin** language.  We demonstrated some Kotlin constructs that are not present in Java and that we might find useful.