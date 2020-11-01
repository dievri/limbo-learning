implement StringExpand;
include "sys.m";
include "draw.m";
include "string_expand.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    sys = load Sys Sys->PATH;
    s: string;

    s[len s] = 'h';
    s[len s] = 'e';
    s[len s] = 'l';
    s[len s] = 'l';
    s[len s] = 'o';

    print("%s\n", s);
}