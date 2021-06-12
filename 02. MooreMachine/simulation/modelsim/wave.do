view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab02/clock 
wave create -pattern none -portmode in -language vhdl /lab02/Resetn 
wave create -pattern none -portmode in -language vhdl /lab02/x 
wave create -pattern none -portmode out -language vhdl /lab02/z 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab02/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab02/Resetn 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab02/x 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab02/x 
wave edit change_value -start 0ps -end 33125ps -value 1 Edit:/lab02/Resetn 
wave edit change_value -start 99375ps -end 198750ps -value 1 Edit:/lab02/x 
wave edit change_value -start 303836ps -end 397499ps -value 1 Edit:/lab02/x 
wave edit change_value -start 501443ps -end 596249ps -value 1 Edit:/lab02/x 
wave edit change_value -start 0ps -end 43405ps -value 0 Edit:/lab02/Resetn 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab02/Resetn 
WaveCollapseAll -1
wave clipboard restore
