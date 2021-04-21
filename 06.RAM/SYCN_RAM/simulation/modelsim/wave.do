view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab06_2/clock1 
wave create -pattern none -portmode in -language vhdl /lab06_2/clock2 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab06_2/data_in 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab06_2/write_address 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab06_2/read_address 
wave create -pattern none -portmode in -language vhdl /lab06_2/wr 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab06_2/data_out 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab06_2/clock1 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab06_2/clock2 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06_2/data_in 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06_2/write_address 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06_2/read_address 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab06_2/wr 
wave edit change_value -start 174977ps -end 328082ps -value 1 Edit:/lab06_2/wr 
wave edit change_value -start 541657ps -end 633005ps -value 1 Edit:/lab06_2/wr 
wave edit change_value -start 729500ps -end 871026ps -value 1 Edit:/lab06_2/wr 
wave edit change_value -start 138952ps -end 285624ps -value 10110110 Edit:/lab06_2/data_in 
wave edit change_value -start 276618ps -end 473467ps -value 11110011 Edit:/lab06_2/data_in 
wave edit change_value -start 468321ps -end 576395ps -value 00001100 Edit:/lab06_2/data_in 
wave edit change_value -start 568676ps -end 734646ps -value 11111111 Edit:/lab06_2/data_in 
wave edit change_value -start 732073ps -end 828568ps -value 00100010 Edit:/lab06_2/data_in 
wave edit change_value -start 822135ps -end 952081ps -value 11010000 Edit:/lab06_2/data_in 
wave edit change_value -start 78482ps -end 230301ps -value 00000001 Edit:/lab06_2/write_address 
wave edit change_value -start 227728ps -end 434870ps -value 00000010 Edit:/lab06_2/write_address 
wave edit change_value -start 428437ps -end 587975ps -value 00000011 Edit:/lab06_2/data_in 
wave edit change_value -start 432296ps -end 625286ps -value 00000011 Edit:/lab06_2/write_address 
wave edit change_value -start 618853ps -end 768098ps -value 00000101 Edit:/lab06_2/write_address 
wave edit change_value -start 64330ps -end 216148ps -value 00000001 Edit:/lab06_2/read_address 
wave edit change_value -start 211002ps -end 410424ps -value 00000010 Edit:/lab06_2/read_address 
wave edit change_value -start 405278ps -end 573822ps -value 00000011 Edit:/lab06_2/read_address 
wave edit change_value -start 560956ps -end 672890ps -value 00000100 Edit:/lab06_2/read_address 
wave edit change_value -start 671603ps -end 783537ps -value 00001010 Edit:/lab06_2/read_address 
wave edit change_value -start 779677ps -end 928923ps -value 00001001 Edit:/lab06_2/read_address 
wave edit change_value -start 760378ps -end 882605ps -value 00001000 Edit:/lab06_2/write_address 
wave edit change_value -start 88775ps -end 221295ps -value 1 Edit:/lab06_2/clock2 
wave edit change_value -start 244453ps -end 376973ps -value 0 Edit:/lab06_2/clock2 
wave edit change_value -start 379546ps -end 492766ps -value 1 Edit:/lab06_2/clock2 
wave edit change_value -start 589261ps -end 667743ps -value 1 Edit:/lab06_2/clock2 
WaveCollapseAll -1
wave clipboard restore
