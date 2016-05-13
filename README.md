# Cordova-Plugin-Logcat
A Cordova plugin to generate catlog file to share with developer

#Installing
cordova plugin add https://github.com/Murthy582/Cordova-Logcat.git

#Usage
plugin.logcat.sendLogs()

#Uninstalling
cordova plugin remove cordova-plugin-logcat

#Finding the Log file
This plugin will create a log file called "logcat.txt" in the following locations

Android : Root folder of the sdcard  
iOS     : As of Xcode 6 and iOS 8 you’ll find it here: (simulator)   
          Library/Developer/CoreSimulator/Devices/CRYPTIC NUMBER/data/Containers/Data/Application/CRYPTIC NUMBER/Documents/logcat.txt  
          On Real Device : Application's Document Directory

#TODO
Implement share feature to share logs via email.

#Credits
Thanks to Aniruddh Rathore @ http://stackoverflow.com/a/25765772/3840247 and 'Bear with me' @ http://stackoverflow.com/a/8379047/3840247
