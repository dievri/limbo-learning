implement LoopLabels;

include "sys.m";
include "draw.m";
include "loop_labels.m";

init(ctxt: ref Draw->Context, args: list of string) {
    sys: Sys;
    print: import sys;
    sys = load Sys Sys->PATH;
   
    n := 0;
    m := 20;

    fast: do 
    {
        glass: do {
            if (n >= 5)
                break fast;
            else
                print("Wooo hooooooo!\n");
            n++;
        } while ();
        print("m = %d\n", m++);
    } while ();

    print("Done\n");
}