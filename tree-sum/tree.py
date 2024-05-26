class Node:
    def __init__(self, val):
        self.left = None
        self.right = None
        self.val = val

class Solution:
    def sum(self, root):
        if not root:
            return 0
        return root.val + self.sum(root.left) + self.sum(root.right)

# Create a binary tree
root = Node(0)
a = Node(0)
b = Node(0)
c = Node(1)
d = Node(2)
e = Node(3)
f = Node(4)

root.left = a
root.right = b

a.left = c
a.right = d
b.left = e
b.right = f

# Print the sum of all nodes
solution = Solution()
print(solution.sum(root))