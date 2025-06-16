GNU nano 4.9                                                                                          node.c
#include <stdio.h>
#include <stdlib.h>
#include "node.h"

Node* create_node(char* label, Node* left, Node* right) {
    Node* n = (Node*)malloc(sizeof(Node));
    n->label = label;
    n->left = left;
    n->right = right;
    return n;
}

void print_tree(Node* root, int level) {
    if (root == NULL) return;
    print_tree(root->right, level + 1);
    for (int i = 0; i < level; i++) printf("    ");
    printf("%s\n", root->label);
    print_tree(root->left, level + 1);
}