implement Arrays;

include "sys.m";
include "draw.m";
include "arrays.m";

init(ctxt: ref Draw->Context, vargs: list of string) {
    
    # Declaration of an array
    squad: array of int;

    # Allocation of an array
    squad = array[32] of int;

    # Declaration and Allocation of an array
    jimbox := array[64] of int;

    # Declaration and Initialization
    people := array[] of {"jimbox", "matter", "pip", "vasil", "sbourne"};

    # Initialize all elements by one expression
    p := array[4] of {* => 3.14};

    # Length of an array is zero
    q := array[] of {* => 3.14};

    # Initialize by index, should not overlap
    w := array[] of { 0 or 2 or 4 or 6 or 8 => 1,
                      1 or 3 or 5 or 7 or 9 => 0};

    # Like above but with 20 element, second half is set to -1
    z := array[20] of {
        0 or 2 or 4 or 6 or 8 => 1,
        1 or 3 or 5 or 7 or 9 => 0,
        * => - 1
    };
    
}