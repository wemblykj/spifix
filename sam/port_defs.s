; READ/WRITE (INPUT/OUTPUT) PORTS

LINE:           EQU 249
LMPR:           EQU 250
HMPR:           EQU 251
VMPR:           EQU 252
MIDI:           EQU 253  ; MIDI IN/OUT
SOUNDL:         EQU 255
SOUNDH:         EQU 511

; WRITE (OUTPUT) PORTS

CLUT:           EQU 248  ; colour look up table (base port)
BORDER:         EQU 254  ; 

; READ (INPUT) PORTS

LPEN:           EQU 248
STATUS:         EQU 249
KEYBOARD:       EQU 254   ; keyboard register
ATTR:           EQU 255   ; horizontal (X co-orinate)
HPEN:           EQU 504   ; vertical (Y co-oridinate)

; LMPR BITS (port 250)
LMPR_BCD1:       EQU 0    ; R/W BCD 1 of low memory page control
LMPR_BCD2:       EQU 1    ; R/W BCD 2 of low memory page control
LMPR_BCD4:       EQU 2    ; R/W BCD 4 of low memory page control
LMPR_BCD8:       EQU 3    ; R/W BCD 4 of low memory page control
LMPR_BCD16:      EQU 4    ; R/W BCD 4 of low memory page control
LMPR_RAM0:       EQU 5    ; R/W when bit set high, RAM replaces the
                          ;     first half of the ROM (i.e. ROM0) in
                          ;     section A of the CPU address map
LMPR_ROM1:       EQU 6    ; R/W when bit set high, the second half
                          ;     of the ROM (i.e. ROM1) replaces the
                          ;     RAM in section D of the CPU address
                          ;     map
                          ;     section A of the CPU address map
LMPR_WPRAM:      EQU 7    ; R/W write protection of the RAM in
                          ;     section A of the COU address map is
                          ;     enabled when this bit is set high

; HMPR BITS (port 251)
HMPR_BCD1:       EQU 0    ; R/W BCD 1 of high memory page control
HMPR_BCD2:       EQU 1    ; R/W BCD 2 of high memory page control
HMPR_BCD3:       EQU 2    ; R/W BCD 4 of high memory page control
HMPR_BCD4:       EQU 3    ; R/W BCD 4 of high memory page control
HMPR_BCD16:      EQU 4    ; R/W BCD 4 of high memory page control
HMPR_MD3S0:      EQU 5    ; R/W BCD 8 of the colour look-up address
                          ;     available only in mode 3
HMPR_MD3S1:      EQU 6    ; R/W BCD 8 of the colour look-up address
                          ;     available only in mode 3
HMPR_MCNTRL:     EQU 7    ; R/W if this bit is set when the CPU
                          ;     addresses high memory, then the
                          ;     external signal XMEM goes low and
                          ;     the Coupe looks on its expansion
                          ;     connector for memory sections C and
                          ;     D (addressess 32768 to 65535)

; VMPR BITS (port 252)
VMPR_BCD1:       EQU 0    ; R/W BCD 1 of video page control
VMPR_BCD2:       EQU 1    ; R/W BCD 2 of video page control
VMPR_BCD3:       EQU 2    ; R/W BCD 4 of video page control
VMPR_BCD4:       EQU 3    ; R/W BCD 4 of video page control
VMPR_BCD16:      EQU 4    ; R/W BCD 4 of video page control, used to switch
                          ;     between the banks of 256 kilobytes
VMPR_MDE0:       EQU 5    ; R/W first bit of screen mode control
VMPR_MDE1:       EQU 6    ; R/W second bit of screen mode control
VMPR_MIDI:       EQU 7    ; -/W output bit to directly drive the 
                          ;     MIDI OUT channel
                          ; R/- input bit from MIDI IN channel

; BORDER BITS (port 254)
BORDER_BCD1:     EQU 0    ; -/W BCD 1 of CLUT address for border colour
BORDER_BCD2:     EQU 1    ; -/W BCD 2 of CLUT address for border colour
BORDER_BCD4:     EQU 2    ; -/W BCD 4 of CLUT address for border colour
BORDER_MIC:      EQU 3    ; -/W output control bit, normally set high
BORDER_BEEP:     EQU 4    ; -/W output control bit, normally set low
BORDER_BCD8:     EQU 5    ; -/W BCD 8 of CLUT address for border colour
BORDER_THROM:    EQU 6    ; -/W bit set high to allow through MIDI operation
BORDER_SOFF:     EQU 7    ; -/W bit set high to disable screen display, only
                          ;     active in screen  modes 3 and 4, also removes
                          ;     memory contention during off period

; CLUT BITS
CLUT_BLU0:       EQU 0    ; -/W least significant bit of blue
CLUT_RED0:       EQU 1    ; -/W least significant bit of red
CLUT_GRN0:       EQU 2    ; -/W least significant bit of green
CLUT_BRIGHT:     EQU 3    ; -/W half bit intensity on all colours
CLUT_BLU1:       EQU 4    ; -/W most significant bit of blue
CLUT_RED1:       EQU 5    ; -/W most significant bit of red
CLUT_GRN1:       EQU 6    ; -/W most significant bit of green

; KEYBOARD BITS
KEYBD_K1:       EQU 0
KEYBD_K2:       EQU 1
KEYBD_K3:       EQU 2
KEYBD_K4:       EQU 3
KEYBD_K5:       EQU 4
KEYBD_SPEN:     EQU 5
KEYBD_EAR:      EQU 6
KEYBD_SOFF:     EQU 7

; STATUS BITS
STATUS_LINE:    EQU 0
STATUS_MOUSE:   EQU 1
STATUS_MIDIIN:  EQU 2
STATUS_FRAME:   EQU 3
STATUS_MIDIOUT: EQU 4
STATUS_K6:      EQU 5
STATUS_K7:      EQU 5
STATUS_K8:      EQU 7