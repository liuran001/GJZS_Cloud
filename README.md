# GJZS_Cloud
搞机助手·R 云服务开源仓库  

# 示例
应用
```shell
com.topjohnwu.magisk) #唯一标识符，建议使用包名
apk='com.topjohnwu.magisk' #包名
name='Magisk' #应用名
version='24.3' #版本号
versionCode='24300' #versionCode
author='John Wu' #作者
description='原版 Magisk Manager' #描述
time='2022年3月20日' #更新日期
    [[ $Choice = 1 ]] && Download -gh 'topjohnwu/Magisk/releases/download/v24.3/Magisk-v24.3.apk' "$1.apk" '文件字节数，可留空' '文件MD5，可留空' "$1.apk"
;;
```
模块
```shell
uperf) #唯一标识符，建议和id保持一致
id='uperf' #模块id
name='Uperf（YC调度）' #模块名称
version='v2 (21.08.15)' #模块版本
versionCode='2' #versionCode
author='Matt Yang' #作者
description='一个Android用户态性能控制器，实现大部分内核态升频功能，并支持更多情景识别。' #描述
time='2021年8月21日' #更新日期
    [[ $Choice = 1 ]] && Download -gh "yc9559/uperf/releases/download/dev-21.08.15/uperf-dev-21.08.15.zip" "$1.zip" 2303704 dcf4993995e80ca60180c3d4b9694798 "$1.zip"
;;
```

- `-gh` 是GitHub文件参数，去掉`https://github.com/`即可，请使用`?raw=true`代替raw域名
- GitHub文件由开发者提供文件加速，无需担心速度问题
- 非GitHub文件请上传到[Files文件夹](Files)，并查看[README.md](Files/README.md)
