implement Dup;

include "sys.m";
include "draw.m";
include "dup.m";


init(ctxt: ref Draw->Context, args: list of string) {
    sys := load Sys Sys->PATH;
    sys->create("response.txt", sys->ORDWR, 8r644);
    consfd := sys->open("response.txt", sys->OWRITE);
    sys->dup(consfd.fd, 1);
    sys->dup(consfd.fd, 2);
    sys->print("Hello World To The File (.txt)");
}