view wave 
wave clipboard store
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Poisson -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06/address 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab06/wr 
wave edit change_value -start 0ps -end 62480ps -value 00000000 Edit:/lab06/data_in 
wave edit change_value -start 0ps -end 55473ps -value 00000000 Edit:/lab06/data_in 
wave edit change_value -start 0ps -end 57225ps -value 00000000 Edit:/lab06/address 
wave edit change_value -start 130800ps -end 177514ps -value 1 Edit:/lab06/wr 
wave edit change_value -start 277365ps -end 371962ps -value 1 Edit:/lab06/wr 
wave edit change_value -start 56641ps -end 157660ps -value 00001011 Edit:/lab06/address 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06/data_in 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab06/address 
wave edit change_value -start 133535ps -end 334931ps -value 10100000 Edit:/lab06/data_in 
wave edit change_value -start 334931ps -end 499113ps -value 11101011 Edit:/lab06/data_in 
wave edit change_value -start 489262ps -end 721306ps -value 00001101 Edit:/lab06/data_in 
wave edit change_value -start 713645ps -end 831856ps -value 00000001 Edit:/lab06/data_in 
wave edit change_value -start 824194ps -end 894245ps -value 00100011 Edit:/lab06/data_in 
wave edit change_value -start 88658ps -end 204680ps -value 00000001 Edit:/lab06/address 
wave edit change_value -start 201397ps -end 360106ps -value 00000010 Edit:/lab06/address 
wave edit change_value -start 356822ps -end 587772ps -value 00000011 Edit:/lab06/address 
wave edit change_value -start 581204ps -end 741008ps -value 00001001 Edit:/lab06/address 
wave edit change_value -start 733346ps -end 847179ps -value 00001011 Edit:/lab06/address 
wave edit change_value -start 840612ps -end 978525ps -value 10101010 Edit:/lab06/address 
wave edit change_value -start 630459ps -end 767277ps -value 1 Edit:/lab06/wr 
WaveCollapseAll -1
wave clipboard restore
