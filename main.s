ORG 0
DUMP 32768
AUTOEXEC

INCLUDE "sam\port_defs.i"

        DI
        XOR A
        IN A, (BORDER)
        OUT (BORDER), A
        EI
        RET
