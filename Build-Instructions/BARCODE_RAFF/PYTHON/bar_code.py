#!/usr/bin/python
from sys import argv
import zbar
import os
import time

# create a Processor
proc = zbar.Processor()

# configure the Processor
proc.parse_config('enable')

# initialize processor
device = '/dev/video0'
if len(argv) > 1:
    device = argv[1]

proc.init(device)
proc.visible = True

#turn on red light

os.system("sudo ./red")

# read barcode
proc.process_one()

#turn on green light
os.system("sudo ./green")

#beep sound
os.system("sudo ./softTone")

#sleep for 1 second

time.sleep(1)

proc.visible = False

#turn on red light

os.system("sudo ./red")

# extract results into a file
for symbol in proc.results:
    print 'Read Student number, check file'
    #write to file studnt numbers
    f = open('student_numbers.txt','a')
    f.write(symbol.data)
    f.write('\n')
    f.close()
    
    
