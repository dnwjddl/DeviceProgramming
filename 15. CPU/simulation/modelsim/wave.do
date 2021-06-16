view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab11/clock 
wave create -pattern none -portmode in -language vhdl /lab11/reset 
wave create -pattern none -portmode in -language vhdl /lab11/enter 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab11/input 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab11/output 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 50000ns Edit:/lab11/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50000ns Edit:/lab11/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50000ns Edit:/lab11/enter 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 50000ns Edit:/lab11/input 
wave edit change_value -start 0ps -end 75852ps -value 1 Edit:/lab11/reset 
wave edit change_value -start 730632ps -end 874527ps -value 00000100 Edit:/lab11/input 
wave edit change_value -start 823216ps -end 875643ps -value 1 Edit:/lab11/enter 
WaveCollapseAll -1
wave clipboard restore
