implement Aprint;

include "sys.m";
include "draw.m";
include "aprint.m";

sys: Sys;

init(nil: ref Draw->Context, nil: list of string) {
    i: int; 
    sys = load Sys Sys->PATH;

    myrmigki: string;
    myrmigki[len myrmigki] = 16r03bc; #mu
    myrmigki[len myrmigki] = 16r03c5; #upsilon
    myrmigki[len myrmigki] = 16r03c1; #rho
    myrmigki[len myrmigki] = 16r03bc; #mu
    myrmigki[len myrmigki] = 16r03b9; #iota
    myrmigki[len myrmigki] = 16r03b3; #gamma
    myrmigki[len myrmigki] = 16r03ba; #kappa
    myrmigki[len myrmigki] = 16r03b9; #iota

    sys->print("%s\n", myrmigki);

    ma := sys->aprint("%s", myrmigki);
    sys->print("Unicode string has %d UTF-8 bytes\n", len ma);

    sys->print("The UTF-8 bytes are -->\n");
    for(i = 0; i < len ma; i++) {
        sys->print("\t\t[%x]\n", int ma[i]);
    }

    sys->print("\nThat is, -->\n");
    for (i = 0; i < len ma; i++) {
        sys->print("\t\t[");
        bitprint(8, int ma[i]);
        sys->print("]\n");
    }
}

bitprint(nbits, number: int) {
    for (i := nbits-1; i >= 0; i--) {
        sys->print("%d", (number >> i)&1);
    }
}