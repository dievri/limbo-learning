implement Adts2;

include "sys.m";
include "draw.m";
include "adts2.m";

PatientRecord: adt {
    name: string;
    age: int;
};

init (ctxt: ref Draw->Context, args: list of string) {
    np, p, newpatient: ref PatientRecord;
    patient: PatientRecord;

    sys := load Sys Sys->PATH;
    print: import sys;
    newpatient = ref patient;
    patient.name = "John Doe";
    patient.age = 46;

    print("Patient Name = %s\n", newpatient.name);
    print("Patient Age = %d\n", newpatient.age);

    np = p = ref PatientRecord("John Doe", 46);
    print("Patient Name = %s\n", p.name);
    print("Patient Age = %d\n", p.age);
    np.age = 120;
    print("Patient Name = %s\n", p.name);
    print("Patient Age = %d\n", p.age);

}