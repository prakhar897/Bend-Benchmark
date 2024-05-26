class Node {
  constructor(val) {
    this.left = null;
    this.right = null;
    this.val = val;
  }
}

class Solution {
  sum(root) {
    if (root === null) {
      return 0;
    }
    return root.val + this.sum(root.left) + this.sum(root.right);
  }
}

// Create a binary tree
const root = new Node(0);
const a = new Node(0);
const b = new Node(0);
const c = new Node(1);
const d = new Node(2);
const e = new Node(3);
const f = new Node(4);

root.left = a;
root.right = b;

a.left = c;
a.right = d;
b.left = e;
b.right = f;

// Calculate and print the sum of all nodes
const solution = new Solution();
console.log(solution.sum(root));