

Command: %s
53*	vivadotcl2N
:synth_design -top tippity_top_level -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 819.703 ; gain = 234.313
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2%
tippity_top_level2default:default2
 2default:default2g
QC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/tippity_top_level.sv2default:default2
102default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter DEBOUNCE_COUNT bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2�
rC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.runs/synth_1/.Xil/Vivado-21168-DESKTOP-P4AR508/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2�
rC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.runs/synth_1/.Xil/Vivado-21168-DESKTOP-P4AR508/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RNG2default:default2
 2default:default2Y
CC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/RNG.sv2default:default2
112default:default8@Z8-6157h px� 
g
%s
*synth2O
;	Parameter MIC_CLOCK_COUNTER bound to: 65 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RNG2default:default2
 2default:default2
22default:default2
12default:default2Y
CC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/RNG.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
debounce2default:default2
 2default:default2v
`C:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/imports/Lab04 Initial Files/debounce.sv2default:default2
72default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter DEBOUNCE_COUNT bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce2default:default2
 2default:default2
32default:default2
12default:default2v
`C:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/imports/Lab04 Initial Files/debounce.sv2default:default2
72default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
game_top_level2default:default2
 2default:default2d
NC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/game_top_level.sv2default:default2
122default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter DEBOUNCE_COUNT bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
edge_detect2default:default2
 2default:default2a
KC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/edge_detect.sv2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
edge_detect2default:default2
 2default:default2
42default:default2
12default:default2a
KC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/edge_detect.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
latch2default:default2
 2default:default2[
EC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/latch.sv2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
latch2default:default2
 2default:default2
52default:default2
12default:default2[
EC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/latch.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	sd_buffer2default:default2
 2default:default2_
IC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/sd_buffer.sv2default:default2
32default:default8@Z8-6157h px� 
m
%s
*synth2U
A	Parameter DEBOUNCE_COUNT_SD bound to: 10000000 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter FIRST_BOOT bound to: 0 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter IDLE bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter START_READ bound to: 2 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter READ_B0 bound to: 3 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter READ_B1 bound to: 4 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter READ_B2 bound to: 5 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter READ_B3 bound to: 6 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter READ_B4 bound to: 7 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter READ_WAIT bound to: 8 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter START_WRITE bound to: 9 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter WRITE_B0 bound to: 10 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter WRITE_B1 bound to: 11 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter WRITE_B2 bound to: 12 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter WRITE_B3 bound to: 13 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter WRITE_B4 bound to: 14 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter WRITE_WAIT bound to: 15 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter DEBOUNCE_COUNT bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2,
debounce__parameterized02default:default2
 2default:default2v
`C:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/imports/Lab04 Initial Files/debounce.sv2default:default2
72default:default8@Z8-6157h px� 
j
%s
*synth2R
>	Parameter DEBOUNCE_COUNT bound to: 10000000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
debounce__parameterized02default:default2
 2default:default2
52default:default2
12default:default2v
`C:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/imports/Lab04 Initial Files/debounce.sv2default:default2
72default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
sd_controller2default:default2
 2default:default2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/sd_controller.sv2default:default2
62default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter RST bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000000000001 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter CMD0 bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CMD55 bound to: 3 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CMD41 bound to: 4 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter POLL_CMD bound to: 5 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter IDLE bound to: 6 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter READ_BLOCK bound to: 7 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter READ_BLOCK_WAIT bound to: 8 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter READ_BLOCK_DATA bound to: 9 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter READ_BLOCK_CRC bound to: 10 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SEND_CMD bound to: 11 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter RECEIVE_BYTE_WAIT bound to: 12 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter RECEIVE_BYTE bound to: 13 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter WRITE_BLOCK_CMD bound to: 14 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter WRITE_BLOCK_INIT bound to: 15 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter WRITE_BLOCK_DATA bound to: 16 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter WRITE_BLOCK_BYTE bound to: 17 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter WRITE_BLOCK_WAIT bound to: 18 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter WRITE_DATA_SIZE bound to: 515 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/sd_controller.sv2default:default2
792default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
sd_controller2default:default2
 2default:default2
62default:default2
12default:default2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/sd_controller.sv2default:default2
62default:default8@Z8-6155h px� 
�
default block is never used226*oasys2_
IC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/sd_buffer.sv2default:default2
1542default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sd_buffer2default:default2
 2default:default2
72default:default2
12default:default2_
IC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/sd_buffer.sv2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
time_control2default:default2
 2default:default2b
LC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/time_control.sv2default:default2
112default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter ONE_SEC bound to: 65000000 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter AGE_STEP bound to: 60 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter COUNT_INCREMENT_1 bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter COUNT_INCREMENT_2 bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter COUNT_INCREMENT_3 bound to: 3 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter COUNT_INCREMENT_4 bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2b
LC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/time_control.sv2default:default2
352default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
time_control2default:default2
 2default:default2
82default:default2
12default:default2b
LC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/time_control.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

life_cycle2default:default2
 2default:default2`
JC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/life_cycle.sv2default:default2
192default:default8@Z8-6157h px� 
M
%s
*synth25
!	Parameter EGG bound to: 3'b001 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter BABY bound to: 3'b010 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter CHILD bound to: 3'b011 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter TEEN bound to: 3'b100 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter ADULT bound to: 3'b101 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter DEATH bound to: 3'b110 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter BABY_AGE bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter CHILD_AGE bound to: 3 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter TEEN_AGE bound to: 6 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADULT_AGE bound to: 10 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DEATH_AGE bound to: 20 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SPRITE_V1 bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SPRITE_V2 bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SPRITE_V3 bound to: 2 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SPRITE_V4 bound to: 3 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SPRITE_V5 bound to: 4 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SPRITE_V6 bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

life_cycle2default:default2
 2default:default2
92default:default2
12default:default2`
JC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/life_cycle.sv2default:default2
192default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
icon_activity2default:default2
 2default:default2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/icon_activity.sv2default:default2
142default:default8@Z8-6157h px� 
N
%s
*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter FOOD bound to: 3'b001 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter LIGHTS bound to: 3'b010 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter PLAY bound to: 3'b011 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter MEDICINE bound to: 3'b100 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter BATH bound to: 3'b101 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter HEALTH bound to: 3'b110 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DISCIPLINE bound to: 3'b111 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter TAMA_MENU bound to: 2'b00 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter HAPPY_MENU bound to: 2'b01 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter HUNGER_MENU bound to: 2'b10 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EGG bound to: 3'b001 
2default:defaulth p
x
� 
�
default block is never used226*oasys2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/icon_activity.sv2default:default2
812default:default8@Z8-226h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
icon_edge_reg2default:default2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/icon_activity.sv2default:default2
602default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
icon_activity2default:default2
 2default:default2
102default:default2
12default:default2c
MC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/icon_activity.sv2default:default2
142default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
status_state2default:default2
 2default:default2b
LC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/status_state.sv2default:default2
182default:default8@Z8-6157h px� 
M
%s
*synth25
!	Parameter EGG bound to: 3'b001 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter BABY bound to: 3'b010 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter FULL_HEALTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter PLAY_TIMER bound to: 2015000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter FOOD_TIMER bound to: 1495000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BABY_DTIMER bound to: 650000000 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter HAPPY_TIMER bound to: -849967296 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter HUNGER_TIMER bound to: -69967296 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BABY_TIMER bound to: 1365000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2!
change_detect2default:default2
 2default:default2a
KC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/edge_detect.sv2default:default2
402default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
change_detect2default:default2
 2default:default2
112default:default2
12default:default2a
KC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/edge_detect.sv2default:default2
402default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
change_detect__parameterized02default:default2
 2default:default2a
KC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/edge_detect.sv2default:default2
402default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
change_detect__parameterized02default:default2
 2default:default2
112default:default2
12default:default2a
KC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/edge_detect.sv2default:default2
402default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
health2default:default2
 2default:default2\
FC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/health.sv2default:default2
172default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter HAPPY_FULL bound to: 4 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter HUNGER_FULL bound to: 4 - type: integer 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter FOOD bound to: 3'b001 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter LIGHTS bound to: 3'b010 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter PLAY bound to: 3'b011 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DISCIPLINE bound to: 3'b111 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
health2default:default2
 2default:default2
122default:default2
12default:default2\
FC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/health.sv2default:default2
172default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
hygiene2default:default2
 2default:default2]
GC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/hygiene.sv2default:default2
152default:default8@Z8-6157h px� 
f
%s
*synth2N
:	Parameter MED_TIMER bound to: 780000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BATH_TIMER bound to: 1430000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter MED_BUFFER bound to: 1300000000 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter BATH_BUFFER bound to: 1950000000 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter NOTHING bound to: 0 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter SICK bound to: 1 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter POOP bound to: 2 - type: integer 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter MEDICINE bound to: 3'b100 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter BATH bound to: 3'b101 
2default:defaulth p
x
� 
�
default block is never used226*oasys2]
GC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/hygiene.sv2default:default2
532default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hygiene2default:default2
 2default:default2
132default:default2
12default:default2]
GC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/hygiene.sv2default:default2
152default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
status_state2default:default2
 2default:default2
142default:default2
12default:default2b
LC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/status_state.sv2default:default2
182default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
death_count_led2default:default2
 2default:default2e
OC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/death_count_led.sv2default:default2
112default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter MAX_COUNT bound to: 16 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter PULSE_COUNT bound to: 32500000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
death_count_led2default:default2
 2default:default2
152default:default2
12default:default2e
OC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/death_count_led.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
bin_to_decimal2default:default2
 2default:default2d
NC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/bin_to_decimal.sv2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
bin_to_decimal2default:default2
 2default:default2
162default:default2
12default:default2d
NC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/bin_to_decimal.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
display_8hex2default:default2
 2default:default2_
IC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/seven_seg.sv2default:default2
102default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter bits bound to: 13 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
display_8hex2default:default2
 2default:default2
172default:default2
12default:default2_
IC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/seven_seg.sv2default:default2
102default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
game_top_level2default:default2
 2default:default2
182default:default2
12default:default2d
NC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/game_top_level.sv2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
tippity_top_level2default:default2
 2default:default2
192default:default2
12default:default2g
QC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/new/tippity_top_level.sv2default:default2
102default:default8@Z8-6155h px� 

!design %s has unconnected port %s3331*oasys2
hygiene2default:default2
	random[5]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
hygiene2default:default2
	random[4]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
hygiene2default:default2
	random[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[2]2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 894.184 ; gain = 308.793
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 894.184 ; gain = 308.793
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 894.184 ; gain = 308.793
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
894.1842default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2~
hc:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2(
clk100mhz_to_65mhz	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2~
hc:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2(
clk100mhz_to_65mhz	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
jC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/constrs_1/imports/Final_Project/nexys4_ddr_finalproject.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
jC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/constrs_1/imports/Final_Project/nexys4_ddr_finalproject.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2~
jC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.srcs/constrs_1/imports/Final_Project/nexys4_ddr_finalproject.xdc2default:default27
#.Xil/tippity_top_level_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1014.3012default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0262default:default2
1014.3012default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1014.301 ; gain = 428.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1014.301 ; gain = 428.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1014.301 ; gain = 428.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	sd_buffer2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
menu_reg2default:default2!
icon_activity2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2#
icon_select_reg2default:default2!
icon_activity2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_              FIRST_BOOT |                             0000 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                             0001 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_             START_WRITE |                             0010 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2s
_                WRITE_B0 |                             0011 |                             1010
2default:defaulth p
x
� 
�
%s
*synth2s
_                WRITE_B1 |                             0100 |                             1011
2default:defaulth p
x
� 
�
%s
*synth2s
_                WRITE_B2 |                             0101 |                             1100
2default:defaulth p
x
� 
�
%s
*synth2s
_                WRITE_B3 |                             0110 |                             1101
2default:defaulth p
x
� 
�
%s
*synth2s
_                WRITE_B4 |                             0111 |                             1110
2default:defaulth p
x
� 
�
%s
*synth2s
_              WRITE_WAIT |                             1000 |                             1111
2default:defaulth p
x
� 
�
%s
*synth2s
_              START_READ |                             1001 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 READ_B0 |                             1010 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 READ_B1 |                             1011 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 READ_B2 |                             1100 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_                 READ_B3 |                             1101 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 READ_B4 |                             1110 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_               READ_WAIT |                             1111 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
	sd_buffer2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_               TAMA_MENU |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_              HAPPY_MENU |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_             HUNGER_MENU |                              100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
menu_reg2default:default2
one-hot2default:default2!
icon_activity2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    FOOD |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                  LIGHTS |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    PLAY |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                MEDICINE |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                    BATH |                              101 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_                  HEALTH |                              110 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_              DISCIPLINE |                              111 |                              111
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
icon_select_reg2default:default2

sequential2default:default2!
icon_activity2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1014.301 ; gain = 428.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     27 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 28    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              256 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               56 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               31 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 60    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 90    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
8
%s
*synth2 
Module RNG 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              256 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module debounce 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
@
%s
*synth2(
Module edge_detect 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
:
%s
*synth2"
Module latch 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
M
%s
*synth25
!Module debounce__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
B
%s
*synth2*
Module sd_controller 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               56 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  20 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module sd_buffer 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
� 
A
%s
*synth2)
Module time_control 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     27 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
?
%s
*synth2'
Module life_cycle 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
B
%s
*synth2*
Module icon_activity 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
B
%s
*synth2*
Module change_detect 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
R
%s
*synth2:
&Module change_detect__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module health 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
<
%s
*synth2$
Module hygiene 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
A
%s
*synth2)
Module status_state 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module death_count_led 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               31 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
C
%s
*synth2+
Module bin_to_decimal 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module display_8hex 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
C
%s
*synth2+
Module game_top_level 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
+design %s has port %s driven by constant %s3447*oasys2%
tippity_top_level2default:default2
m_lrsel2default:default2
02default:defaultZ8-3917h px� 
�
!design %s has unconnected port %s3331*oasys2 
status_state2default:default2
	random[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
status_state2default:default2
	random[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
status_state2default:default2
	random[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2"
game_top_level2default:default2
sw[7]2default:defaultZ8-3331h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0play_tama_time/\sd_turnaround/sd/cmd_out_reg[0] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[0]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[1]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[2]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[3]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[4]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[5]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[6]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[7]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.play_tama_time/sd_turnaround/addr_latch_reg[8]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[11]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2E
1play_tama_time/\sd_turnaround/addr_latch_reg[12] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[13]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[14]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[15]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[16]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[17]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[18]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[19]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[20]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[21]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[22]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[23]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[24]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[25]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[26]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[27]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[28]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[29]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/play_tama_time/sd_turnaround/addr_latch_reg[30]2default:default2
FDE2default:default2C
/play_tama_time/sd_turnaround/addr_latch_reg[31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2E
1play_tama_time/\sd_turnaround/addr_latch_reg[31] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
play_tama_time/data_reg[6]2default:default2
FD2default:default2.
play_tama_time/data_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
play_tama_time/data_reg[22]2default:default2
FD2default:default2/
play_tama_time/data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
play_tama_time/data_reg[7]2default:default2
FD2default:default2/
play_tama_time/data_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
play_tama_time/data_reg[15]2default:default2
FD2default:default2/
play_tama_time/data_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
play_tama_time/data_reg[31]2default:default2
FD2default:default2/
play_tama_time/data_reg[23]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
play_tama_time/\data_reg[23] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1014.301 ; gain = 428.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1014.301 ; gain = 428.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:38 ; elapsed = 00:00:40 . Memory (MB): peak = 1063.125 ; gain = 477.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:39 ; elapsed = 00:00:41 . Memory (MB): peak = 1064.191 ; gain = 478.801
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:44 ; elapsed = 00:00:45 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------------+-------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name       | RTL Name                      | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------------+-------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|tippity_top_level | randomness/mic_shift_reg[255] | 39     | 1     | NO           | NO                 | YES               | 0      | 2       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|tippity_top_level | randomness/mic_shift_reg[216] | 36     | 6     | NO           | NO                 | YES               | 0      | 12      | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------------+-------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|1     |clk_wiz_0 |     1|
2default:defaulth px� 
G
%s*synth2/
|2     |CARRY4    |   155|
2default:defaulth px� 
G
%s*synth2/
|3     |LUT1      |    42|
2default:defaulth px� 
G
%s*synth2/
|4     |LUT2      |   103|
2default:defaulth px� 
G
%s*synth2/
|5     |LUT3      |   106|
2default:defaulth px� 
G
%s*synth2/
|6     |LUT4      |   103|
2default:defaulth px� 
G
%s*synth2/
|7     |LUT5      |   233|
2default:defaulth px� 
G
%s*synth2/
|8     |LUT6      |   265|
2default:defaulth px� 
G
%s*synth2/
|9     |MUXF7     |     8|
2default:defaulth px� 
G
%s*synth2/
|10    |SRLC32E   |    14|
2default:defaulth px� 
G
%s*synth2/
|11    |FDRE      |   814|
2default:defaulth px� 
G
%s*synth2/
|12    |FDSE      |    60|
2default:defaulth px� 
G
%s*synth2/
|13    |IBUF      |    18|
2default:defaulth px� 
G
%s*synth2/
|14    |OBUF      |    45|
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
s
%s
*synth2[
G+------+-----------------------+------------------------------+------+
2default:defaulth p
x
� 
s
%s
*synth2[
G|      |Instance               |Module                        |Cells |
2default:defaulth p
x
� 
s
%s
*synth2[
G+------+-----------------------+------------------------------+------+
2default:defaulth p
x
� 
s
%s
*synth2[
G|1     |top                    |                              |  1968|
2default:defaulth p
x
� 
s
%s
*synth2[
G|2     |  dbA                  |debounce                      |    47|
2default:defaulth p
x
� 
s
%s
*synth2[
G|3     |  dbB                  |debounce_0                    |    46|
2default:defaulth p
x
� 
s
%s
*synth2[
G|4     |  dbC                  |debounce_1                    |    46|
2default:defaulth p
x
� 
s
%s
*synth2[
G|5     |  play_tama_time       |game_top_level                |  1719|
2default:defaulth p
x
� 
s
%s
*synth2[
G|6     |    RNG_latch          |latch                         |    15|
2default:defaulth p
x
� 
s
%s
*synth2[
G|7     |      trigger_edge     |edge_detect_12                |     2|
2default:defaulth p
x
� 
s
%s
*synth2[
G|8     |    dbS                |debounce_2                    |    42|
2default:defaulth p
x
� 
s
%s
*synth2[
G|9     |    dbjump             |debounce_3                    |    42|
2default:defaulth p
x
� 
s
%s
*synth2[
G|10    |    death_lights       |death_count_led               |    79|
2default:defaulth p
x
� 
s
%s
*synth2[
G|11    |    display            |display_8hex                  |   102|
2default:defaulth p
x
� 
s
%s
*synth2[
G|12    |    icons              |icon_activity                 |    48|
2default:defaulth p
x
� 
s
%s
*synth2[
G|13    |      ACdetect         |edge_detect_8                 |     1|
2default:defaulth p
x
� 
s
%s
*synth2[
G|14    |      Adetect          |edge_detect_9                 |     3|
2default:defaulth p
x
� 
s
%s
*synth2[
G|15    |      Bdetect          |edge_detect_10                |     5|
2default:defaulth p
x
� 
s
%s
*synth2[
G|16    |      Cdetect          |edge_detect_11                |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|17    |    jump_button        |edge_detect                   |     2|
2default:defaulth p
x
� 
s
%s
*synth2[
G|18    |    sd_turnaround      |sd_buffer                     |   615|
2default:defaulth p
x
� 
s
%s
*synth2[
G|19    |      RDbyte_ready     |edge_detect_4                 |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|20    |      WRbyte_ready     |edge_detect_5                 |     2|
2default:defaulth p
x
� 
s
%s
*synth2[
G|21    |      dbS              |debounce_6                    |    43|
2default:defaulth p
x
� 
s
%s
*synth2[
G|22    |      db_sd            |debounce__parameterized0      |    45|
2default:defaulth p
x
� 
s
%s
*synth2[
G|23    |      saveload_button  |edge_detect_7                 |     4|
2default:defaulth p
x
� 
s
%s
*synth2[
G|24    |      sd               |sd_controller                 |   369|
2default:defaulth p
x
� 
s
%s
*synth2[
G|25    |    statuses           |status_state                  |   532|
2default:defaulth p
x
� 
s
%s
*synth2[
G|26    |      age_trigger      |change_detect                 |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|27    |      clean_up_time    |hygiene                       |   234|
2default:defaulth p
x
� 
s
%s
*synth2[
G|28    |      health_functions |health                        |   259|
2default:defaulth p
x
� 
s
%s
*synth2[
G|29    |      second           |change_detect__parameterized0 |     7|
2default:defaulth p
x
� 
s
%s
*synth2[
G|30    |    tama_life          |life_cycle                    |   126|
2default:defaulth p
x
� 
s
%s
*synth2[
G|31    |    timely             |time_control                  |    89|
2default:defaulth p
x
� 
s
%s
*synth2[
G|32    |  randomness           |RNG                           |    45|
2default:defaulth p
x
� 
s
%s
*synth2[
G+------+-----------------------+------------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 10 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 1065.008 ; gain = 359.500
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1065.008 ; gain = 479.617
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0472default:default2
1077.0782default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1632default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1077.0782default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1022default:default2
212default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:502default:default2
00:00:532default:default2
1077.0782default:default2
778.9882default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1077.0782default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2`
LC:/GitHub/FPGA_Tamagotchi/FPGA_Tamagotchi.runs/synth_1/tippity_top_level.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
xExecuting : report_utilization -file tippity_top_level_utilization_synth.rpt -pb tippity_top_level_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Dec 10 19:56:08 20202default:defaultZ17-206h px� 


End Record