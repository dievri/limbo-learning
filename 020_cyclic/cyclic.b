implement Cyclic;

include "sys.m";
include "draw.m";
include "cyclic.m";

Tree: adt {
    child: cyclic ref Leaf;
};

Leaf: adt {
    parent: ref Tree;
};

init(nil: ref Draw->Context, nil: list of string) {
    tree: Tree;
    leaf: Leaf;
    tree.child = ref leaf;
}