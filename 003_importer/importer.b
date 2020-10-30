implement Importer;

include "sys.m";
include "draw.m";
include "importer.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    # This is a comment
    sys = load Sys Sys->PATH;
    print("Hello World!\n");
}