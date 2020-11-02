implement Slices;

include "sys.m";
include "draw.m";
include "slices.m";

init(ctxt: ref Draw->Context, vargs: list of string) {
    story := array[] of {"I", "should", "get", "a", "life"};

    # This sets task to {"get", "a", "life"}
    task := story[2:];

    # Declares a string dream and initializes it to "got a life"
    dream := task[0][:1] + "o" + task[0][2:]+" "+task[1]+" "+task[2];

    # lvalue array slices
    a := array[10] of int;
    b := array[20] of int;

    b[10:] = a;
    b[:] = a;
    b[15:] = a[5:];
}