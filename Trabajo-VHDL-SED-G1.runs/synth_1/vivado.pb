
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:092default:default2
1268.0822default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/utils_1/imports/synth_1/TOP.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/utils_1/imports/synth_1/TOP.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
q
Command: %s
53*	vivadotcl2@
,synth_design -top TOP -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
240562default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1268.082 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
TOP2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
292default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter FREQ_IN bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter FREQ_OUT bound to: 1000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
DivisorFrecuencia2default:default2?
xC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/DivisorFrecuencia.vhd2default:default2
52default:default2

prescaler02default:default2%
DivisorFrecuencia2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
1332default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
DivisorFrecuencia2default:default2?
xC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/DivisorFrecuencia.vhd2default:default2
172default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter FREQ_IN bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter FREQ_OUT bound to: 1000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
DivisorFrecuencia2default:default2
02default:default2
12default:default2?
xC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/DivisorFrecuencia.vhd2default:default2
172default:default8@Z8-256h px? 
?
%s
*synth2t
`	Parameter MODULI bound to: 62'b00000000000000000000000111110100000000000000000000001111101000 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
STROBE_GENERATOR2default:default2?
wC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/strobe_generator.vhd2default:default2
242default:default2
strobe_gen02default:default2$
STROBE_GENERATOR2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
1442default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2$
STROBE_GENERATOR2default:default2?
wC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/strobe_generator.vhd2default:default2
352default:default8@Z8-638h px? 
?
%s
*synth2t
`	Parameter MODULI bound to: 62'b00000000000000000000000111110100000000000000000000001111101000 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter MODULO bound to: 250 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TIMER2default:default2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/timer.vhd2default:default2
42default:default2
timer_i2default:default2
TIMER2default:default2?
wC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/strobe_generator.vhd2default:default2
482default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
TIMER2default:default2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/timer.vhd2default:default2
152default:default8@Z8-638h px? 
]
%s
*synth2E
1	Parameter MODULO bound to: 250 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
TIMER2default:default2
02default:default2
12default:default2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/timer.vhd2default:default2
152default:default8@Z8-256h px? 
^
%s
*synth2F
2	Parameter MODULO bound to: 1000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TIMER2default:default2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/timer.vhd2default:default2
42default:default2
timer_i2default:default2
TIMER2default:default2?
wC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/strobe_generator.vhd2default:default2
482default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2)
TIMER__parameterized12default:default2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/timer.vhd2default:default2
152default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter MODULO bound to: 1000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2)
TIMER__parameterized12default:default2
02default:default2
12default:default2?
lC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/timer.vhd2default:default2
152default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
STROBE_GENERATOR2default:default2
02default:default2
12default:default2?
wC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/strobe_generator.vhd2default:default2
352default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FSM2default:default2~
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/fsm.vhd2default:default2
52default:default2
fsm02default:default2
FSM2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
1572default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
FSM2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/fsm.vhd2default:default2
212default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
OBSTACLE2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/fsm.vhd2default:default2
402default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
FSM2default:default2
02default:default2
12default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/fsm.vhd2default:default2
212default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CABINA2default:default2?
mC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/cabina.vhd2default:default2
52default:default2
cabin02default:default2
CABINA2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
1722default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
CABINA2default:default2?
mC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/cabina.vhd2default:default2
292default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
MOTOR_CABINA2default:default2?
sC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/motor_cabina.vhd2default:default2
42default:default2 
cabin_motor02default:default2 
MOTOR_CABINA2default:default2?
mC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/cabina.vhd2default:default2
592default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
MOTOR_CABINA2default:default2?
sC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/motor_cabina.vhd2default:default2
162default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
MOTOR_CABINA2default:default2
02default:default2
12default:default2?
sC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/motor_cabina.vhd2default:default2
162default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
MOTOR_PUERTAS2default:default2?
tC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/motor_puertas.vhd2default:default2
42default:default2
door_motor02default:default2!
MOTOR_PUERTAS2default:default2?
mC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/cabina.vhd2default:default2
702default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
MOTOR_PUERTAS2default:default2?
tC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/motor_puertas.vhd2default:default2
182default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
MOTOR_PUERTAS2default:default2
02default:default2
12default:default2?
tC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/motor_puertas.vhd2default:default2
182default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CABINA2default:default2
02default:default2
12default:default2?
mC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/cabina.vhd2default:default2
292default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
decoder2default:default2z
fC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/new/decoder.vhd2default:default2
272default:default2
decoder02default:default2
Decoder2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
1892default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
decoder2default:default2|
fC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/new/decoder.vhd2default:default2
362default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
decoder2default:default2
02default:default2
12default:default2|
fC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/new/decoder.vhd2default:default2
362default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
antirrebote_vector2default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
82default:default2'
antirrebote_vector02default:default2&
antirrebote_vector2default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
1972default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
antirrebote_vector2default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
152default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
antirrebote2default:default2?
rC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote.vhd2default:default2
72default:default2&
inst_antirrebote_12default:default2
antirrebote2default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
272default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
antirrebote2default:default2?
rC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote.vhd2default:default2
142default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
antirrebote2default:default2
02default:default2
12default:default2?
rC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote.vhd2default:default2
142default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
antirrebote2default:default2?
rC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote.vhd2default:default2
72default:default2&
inst_antirrebote_22default:default2
antirrebote2default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
342default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
antirrebote2default:default2?
rC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote.vhd2default:default2
72default:default2&
inst_antirrebote_32default:default2
antirrebote2default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
402default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
antirrebote2default:default2?
rC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote.vhd2default:default2
72default:default2&
inst_antirrebote_42default:default2
antirrebote2default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
462default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
antirrebote_vector2default:default2
02default:default2
12default:default2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/antirrebote_vector.vhd2default:default2
152default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
TOP2default:default2
02default:default2
12default:default2?
jC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/sources_1/imports/src/top.vhd2default:default2
292default:default8@Z8-256h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[11]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[10]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[9]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[8]2default:default2
02default:defaultZ8-3917h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1268.082 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1268.082 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1268.082 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1268.0822default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/constrs_1/imports/src/Nexys-4-DDR-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/constrs_1/imports/src/Nexys-4-DDR-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
yC:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.srcs/constrs_1/imports/src/Nexys-4-DDR-Master.xdc2default:default2)
.Xil/TOP_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1321.8052default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1321.8052default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
FSM2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              s0_initial |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_              s1_closing |                            00010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 s2_goup |                            00100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 s3_godn |                            01000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_              s4_opening |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
FSM2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 14    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[11]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[10]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[9]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED[8]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED16_B2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2
LED17_B2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[7]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[6]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[5]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[4]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[3]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[2]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[1]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
TOP2default:default2#
Salida_anodo[0]2default:default2
02default:defaultZ8-3917h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:34 ; elapsed = 00:00:37 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:41 ; elapsed = 00:00:43 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    37|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    29|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    18|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    29|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    12|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    14|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    31|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |    53|
2default:defaulth px? 
D
%s*synth2,
|10    |FDPE   |     6|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |    88|
2default:defaulth px? 
D
%s*synth2,
|12    |LDC    |     4|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     7|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    37|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 15 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:41 . Memory (MB): peak = 1321.805 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:41 ; elapsed = 00:00:44 . Memory (MB): peak = 1321.805 ; gain = 53.723
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1321.8052default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
412default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1321.8052default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2Z
F  A total of 4 instances were transformed.
  LDC => LDCE: 4 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a13738792default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612default:default2
202default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:482default:default2
00:01:092default:default2
1321.8052default:default2
53.7232default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\C:/Users/Mario/Documents/GitHub/Trabajo-VHDL-SED-G1/Trabajo-VHDL-SED-G1.runs/synth_1/TOP.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Dec 22 13:38:52 20222default:defaultZ17-206h px? 


End Record