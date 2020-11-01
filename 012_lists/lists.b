implement Lists;

include "draw.m";
include "sys.m";
include "lists.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    sys = load Sys Sys->PATH;
    # Initial value of a list variable is nil: no storage allocated
    menu: list of string;
    # Add one item to the empty list
    menu = "Soy"::menu;
    # Add item to the head of list, i.e. "Quiona" is the head
    menu = "Quiona"::menu;

    # Get head value of the list 
    q := hd menu;
    print("Head is: %s\n", q);
    sub_menu := tl menu;
    sub := hd sub_menu;

    print("Head of submenu is: %s\n", sub);

}