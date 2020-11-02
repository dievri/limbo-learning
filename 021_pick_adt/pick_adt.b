implement PickAdt;

include "sys.m";
include "draw.m";
include "pick_adt.m";

AudioHeader: adt {
    mod: string;
    version: int;
    pick {
        DSTMtracker => header: array of byte;
        ATOMtracker or SMASHERtracker => header: string;
    }

    decode: fn();
};

AudioHeader.decode() {
}

myfunc() {
    sys := load Sys Sys->PATH;
    ha: ref AudioHeader;
    hb := ref AudioHeader.DSTMtracker("ambient01", 9, array of byte "$DSTM");
    ha = hb;
    
    sys->print("tagof ha = %d\n", tagof ha);
    flabel: for (i := 0; i < 5; i++) {
        plabel: pick h := ha {
            ATOMtracker => {
                sys->print("The variable ha is of pick variabnt ATOMtracker\n");
                break plabel;
            }
            DSTMtracker => {
                sys->print("The variable ha is of pick variabnt DSTMtracker\n");
                break flabel;
            }
            SMASHERtracker => {
                sys->print("The variable ha is of pick variabnt SMASHERtracker\n");
                break flabel;
            }
            * => {
                sys->print("The variable ha has an unknown tag type!\n");
            }
        }
    }
}

init(ctxt: ref Draw->Context, args: list of string) {
    # The following statement is illegal (can only declare
    # variables to be a ref to a pick ADT);
    # a: AudioHeader;

    ha: ref AudioHeader;
    hb: ref AudioHeader.DSTMtracker;
    hc: ref AudioHeader.ATOMtracker;
    hff: ref AudioHeader.SMASHERtracker;
    he := ref AudioHeader.DSTMtracker("ambient01", 9, array of byte "$DSTM");
    myfunc();
}

