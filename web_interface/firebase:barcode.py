#!/usr/bin/python
#Auther: Rafil Yashooa
#Date: March/12th/2017
#File: bar_code.py
from sys import argv
import zbar
import os
import time
import json
from firebase import firebase
#firebase config
firebase = firebase.FirebaseApplication('https://humberparts.firebaseio.com',None)
#firebase.put('/scan_id/','val_id',new)
# create a Processor
proc = zbar.Processor()
# configure the Processor
proc.parse_config('enable')
# initialize processor
device = '/dev/video0'
if len(argv) > 1:
    device = argv[1]
    
proc.init(device)
proc.visible = False

#loop starts here
while True:
    #turn on red light
    os.system("sudo ./red")
    #read barcode
    proc.process_one()
    #turn on green light
    os.system("sudo ./green")
    #beep sound
    os.system("sudo ./softTone")
    #sleep for 1 second
    time.sleep(1)
    #turn on red light again 
    os.system("sudo ./red")

    # extract results into a file
    for symbol in proc.results:
        firebase.put('/scan_id/','val_id',symbol.data)
        print 'Data Sent to database !'
      
    