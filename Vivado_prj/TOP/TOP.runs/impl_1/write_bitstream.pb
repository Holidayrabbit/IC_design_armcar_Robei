
g
Command: %s
1870*	planAhead22
open_checkpoint Top_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.024 . Memory (MB): peak = 267.223 ; gain = 0.0002default:defaulth px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2452default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.32default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:012default:default2 
00:00:00.4072default:default2
1196.2892default:default2
0.0002default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:012default:default2 
00:00:00.4082default:default2
1196.2892default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1196.2892default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2k
W  A total of 3 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 3 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2018.3 (64-bit)2default:default2
24059912default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:122default:default2
00:00:132default:default2
1196.2892default:default2
929.0662default:defaultZ17-268h px� 
c
Command: %s
53*	vivadotcl22
write_bitstream -force Top.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2C
/D:/Software/vivado/vivado/Vivado/2018.3/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "p
,Sense_top6/sonic_digital3/sel_reg[3]_i_2_n_0,Sense_top6/sonic_digital3/sel_reg[3]_i_2_n_02default:default2default:default2�
 "l
*Sense_top6/sonic_digital3/sel_reg[3]_i_2/O*Sense_top6/sonic_digital3/sel_reg[3]_i_2/O2default:default2default:default2~
 "h
(Sense_top6/sonic_digital3/sel_reg[3]_i_2	(Sense_top6/sonic_digital3/sel_reg[3]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2`
 "J
TFT_top6/TFT_driver3/clkaTFT_top6/TFT_driver3/clka2default:default2default:default2r
 "\
"TFT_top6/TFT_driver3/clka_INST_0/O"TFT_top6/TFT_driver3/clka_INST_0/O2default:default2default:default2n
 "X
 TFT_top6/TFT_driver3/clka_INST_0	 TFT_top6/TFT_driver3/clka_INST_02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 131 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2n
 "X
 TFT_top6/TFT_driver3/clka_INST_0	 TFT_top6/TFT_driver3/clka_INST_02default:default2default:default2�

 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default"V
TFT_top6/single_ROM22/q_reg_0_1	TFT_top6/single_ROM22/q_reg_0_12default:default"V
TFT_top6/single_ROM22/q_reg_0_2	TFT_top6/single_ROM22/q_reg_0_22default:default"V
TFT_top6/single_ROM22/q_reg_0_3	TFT_top6/single_ROM22/q_reg_0_32default:default"V
TFT_top6/single_ROM22/q_reg_0_4	TFT_top6/single_ROM22/q_reg_0_42default:default"V
TFT_top6/single_ROM22/q_reg_0_5	TFT_top6/single_ROM22/q_reg_0_52default:default"V
TFT_top6/single_ROM22/q_reg_0_6	TFT_top6/single_ROM22/q_reg_0_62default:default"V
TFT_top6/single_ROM22/q_reg_0_7	TFT_top6/single_ROM22/q_reg_0_72default:default"X
 TFT_top6/single_ROM22/q_reg_10_0	 TFT_top6/single_ROM22/q_reg_10_02default:default"X
 TFT_top6/single_ROM22/q_reg_10_1	 TFT_top6/single_ROM22/q_reg_10_12default:default"X
 TFT_top6/single_ROM22/q_reg_10_2	 TFT_top6/single_ROM22/q_reg_10_22default:default"X
 TFT_top6/single_ROM22/q_reg_10_3	 TFT_top6/single_ROM22/q_reg_10_32default:default"X
 TFT_top6/single_ROM22/q_reg_10_4	 TFT_top6/single_ROM22/q_reg_10_42default:default"X
 TFT_top6/single_ROM22/q_reg_10_5	 TFT_top6/single_ROM22/q_reg_10_52default:default"T
 TFT_top6/single_ROM22/q_reg_10_6	 TFT_top6/single_ROM22/q_reg_10_62default:..."0
(the first 15 of 131 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[0].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[0]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[0]TFT_top6/single_ROM22/addr[0]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[0]	%TFT_top6/TFT_driver3/byte_addr_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[10]/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[10]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[10]TFT_top6/single_ROM22/addr[10]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[10]	&TFT_top6/TFT_driver3/byte_addr_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[11]/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[11]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[11]TFT_top6/single_ROM22/addr[11]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[11]	&TFT_top6/TFT_driver3/byte_addr_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[12]/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[12]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[12]TFT_top6/single_ROM22/addr[12]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[12]	&TFT_top6/TFT_driver3/byte_addr_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[13]/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[13]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[13]TFT_top6/single_ROM22/addr[13]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[13]	&TFT_top6/TFT_driver3/byte_addr_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[14]/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[14]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[14]TFT_top6/single_ROM22/addr[14]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[14]	&TFT_top6/TFT_driver3/byte_addr_reg[14]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[15]/TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[15]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[15]TFT_top6/single_ROM22/addr[15]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[15]	&TFT_top6/TFT_driver3/byte_addr_reg[15]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[1].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[1]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[1]TFT_top6/single_ROM22/addr[1]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[1]	%TFT_top6/TFT_driver3/byte_addr_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[2].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[2]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[2]TFT_top6/single_ROM22/addr[2]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[2]	%TFT_top6/TFT_driver3/byte_addr_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[3].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[3]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[3]TFT_top6/single_ROM22/addr[3]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[3]	%TFT_top6/TFT_driver3/byte_addr_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[4].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[4]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[4]TFT_top6/single_ROM22/addr[4]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[4]	%TFT_top6/TFT_driver3/byte_addr_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[5].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[5]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[5]TFT_top6/single_ROM22/addr[5]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[5]	%TFT_top6/TFT_driver3/byte_addr_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[6].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[6]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[6]TFT_top6/single_ROM22/addr[6]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[6]	%TFT_top6/TFT_driver3/byte_addr_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[7].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[7]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[7]TFT_top6/single_ROM22/addr[7]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[7]	%TFT_top6/TFT_driver3/byte_addr_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[8].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[8]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[8]TFT_top6/single_ROM22/addr[8]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[8]	%TFT_top6/TFT_driver3/byte_addr_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2�
 "t
.TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[9].TFT_top6/single_ROM22/q_reg_0_0/ADDRARDADDR[9]2default:default2default:default2h
 "R
TFT_top6/single_ROM22/addr[9]TFT_top6/single_ROM22/addr[9]2default:default2default:default2x
 "b
%TFT_top6/TFT_driver3/byte_addr_reg[9]	%TFT_top6/TFT_driver3/byte_addr_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2|
 "f
'TFT_top6/single_ROM22/q_reg_0_0/ENARDEN'TFT_top6/single_ROM22/q_reg_0_0/ENARDEN2default:default2default:default2|
 "f
'TFT_top6/single_ROM22/q_reg_0_0_i_1_n_0'TFT_top6/single_ROM22/q_reg_0_0_i_1_n_02default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[16]	&TFT_top6/TFT_driver3/byte_addr_reg[16]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2|
 "f
'TFT_top6/single_ROM22/q_reg_0_0/ENARDEN'TFT_top6/single_ROM22/q_reg_0_0/ENARDEN2default:default2default:default2|
 "f
'TFT_top6/single_ROM22/q_reg_0_0_i_1_n_0'TFT_top6/single_ROM22/q_reg_0_0_i_1_n_02default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[17]	&TFT_top6/TFT_driver3/byte_addr_reg[17]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_0	TFT_top6/single_ROM22/q_reg_0_02default:default2default:default2|
 "f
'TFT_top6/single_ROM22/q_reg_0_0/ENARDEN'TFT_top6/single_ROM22/q_reg_0_0/ENARDEN2default:default2default:default2|
 "f
'TFT_top6/single_ROM22/q_reg_0_0_i_1_n_0'TFT_top6/single_ROM22/q_reg_0_0_i_1_n_02default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[18]	&TFT_top6/TFT_driver3/byte_addr_reg[18]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2l
 "V
TFT_top6/single_ROM22/q_reg_0_1	TFT_top6/single_ROM22/q_reg_0_12default:default2default:default2�
 "v
/TFT_top6/single_ROM22/q_reg_0_1/ADDRARDADDR[15]/TFT_top6/single_ROM22/q_reg_0_1/ADDRARDADDR[15]2default:default2default:default2j
 "T
TFT_top6/single_ROM22/addr[15]TFT_top6/single_ROM22/addr[15]2default:default2default:default2z
 "d
&TFT_top6/TFT_driver3/byte_addr_reg[15]	&TFT_top6/TFT_driver3/byte_addr_reg[15]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
uPS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.%s*DRC2;
 #DRC|PS7|Zynq requires PS7 block|PS72default:default8ZZPS7-1h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 25 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
Z
Writing bitstream %s...
11*	bitstream2
	./Top.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
252default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:212default:default2
00:00:172default:default2
1710.2192default:default2
513.9302default:defaultZ17-268h px� 


End Record