#GJZS_Cloud
Engage Assistant·R Cloud Service Open Source Warehouse

# example
application
```shell
com.topjohnwu.magisk) #Unique identifier, it is recommended to use the package name
apk='com.topjohnwu.magisk' #package name
name='Magisk' #application name
version='24.3' #version number
versionCode='24300' #versionCode
author='John Wu' #author
description='Original Magisk Manager' #Description
time='March 20, 2022' #update date
     [[ $Choice = 1 ]] && Download -gh 'topjohnwu/Magisk/releases/download/v24.3/Magisk-v24.3.apk' "$1.apk" 'Number of file bytes, can be left blank' 'File MD5, can be left blank' "$1.apk"
;;
```
module
```shell
uperf) #Unique identifier, it is recommended to be consistent with id
id='uperf' #module id
name='Uperf (YC scheduling)' #module name
version='v2 (21.08.15)' #module version
versionCode='2' #versionCode
author='Matt Yang' #author
description='An Android user mode performance controller, which realizes most of the kernel mode upscaling functions and supports more scene recognition. ' #describe
time='August 21, 2021' #update date
     [[ $Choice = 1 ]] && Download -gh "yc9559/uperf/releases/download/dev-21.08.15/uperf-dev-21.08.15.zip" "$1.zip" 2303704 dcf4993995e80ca60180c3d4b9694798 "$1.zip"
;;
```

- `-gh` is the GitHub file parameter, just remove `https://github.com/`, please use `?raw=true` instead of the raw domain name
- GitHub files are accelerated by the developer, so you don't need to worry about speed
- For non-GitHub files, please upload to [Files folder](Files), and check [README.md](Files/README.md)
- For large files, please use the `-url` parameter, followed by the download address. But using this method, please ensure that the download address is valid for a long time and the MD5 value of the file cannot be left blank
- File MD5 and the number of bytes are optional, but it is recommended to fill in (no MD5 will not be verified)