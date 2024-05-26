class Tree{
    public static void main(String args[]){
        Node root = new Node(0);
        Node a = new Node(0);
        Node b = new Node(0);
        Node c = new Node(1);
        Node d = new Node(2);
        Node e = new Node(3);
        Node f = new Node(4);
        
        root.left = a;
        root.right = b;

        a.left = c;
        a.right = d;
        b.left = e;
        b.right = f;

        Solution solution = new Solution();

        System.out.println(solution.sum(root));

    }
}

class Solution{

    public int sum(Node root){
        if(root == null){
            return 0;
        }
        return root.val + sum(root.left) + sum(root.right);
    }
}

class Node{
    Node left;
    Node right;
    int val;

    public Node (int val){
        this.val = val;
    }
}