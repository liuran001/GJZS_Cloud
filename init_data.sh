Configuration=2022070202
Magisk_Warehouse_version=2022060905
App_Store_version=2022060905
Show_Compatibility_Mode=1
MIUI=0


case "$1" in

#应用
com.topjohnwu.magisk)
apk='com.topjohnwu.magisk'
name='Magisk'
version='25.0'
versionCode='25000'
author='John Wu'
description='原版 Magisk Manager'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -file 'APK/Magisk/Magisk-v25.0.apk' "$1.apk" '11110603' 'eeb3f44c82ffac76944a5f82d24b76f1' "$1.apk"
;;

io.github.vvb2060.magisk)
apk='io.github.vvb2060.magisk'
name='Magisk Alpha'
version='e2f37535-alpha'
versionCode='25001'
author='vvb2060'
description='Alpha版Magisk Manager'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -file 'APK/Magisk/e2f37535-alpha.apk' "$1.apk" '11355429' '89f03e2931154ffb108d343d00c38d69' "$1.apk"
;;

Han.automatic.rescue)
apk='Han.automatic.rescue'
name='神仙自动救砖'
version='v2021090800'
versionCode='95'
author='by：Han | 情非得已c'
description='神仙自动救砖'
time='2021年9月12日'
    [[ $Choice = 1 ]] && Download -file 'APK/Han.automatic.rescue-v2021090800.apk' "$1.apk" 1680325 9b538f2ad50cd47bb35199acc615c02d "$1.apk"
;;

com.omarea.vtools)
apk='com.omarea.vtools'
name='Scene5'
version='5.2.4'
versionCode=202205101
author='嘟嘟Ski'
description='一个集高级重启、应用安装自动点击、CPU调频等多项功能于一体的工具箱。'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -url "https://api.qqcn.xyz/lz/?url=iQEjR04l007i&type=down" "$1.apk" '' '' "$1.apk"
;;

bin.mt.plus)
apk='bin.mt.plus'
name='MT管理器'
version='2.11.1'
versionCode='22060759'
author='Bin'
description='文件管理器/安卓逆向神器'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -url "https://api.qqcn.xyz/lz/?url=iYiwt060wzxc&type=down" "$1.apk" '' '' "$1.apk"
;;

bin.mt.plus.canary)
apk='bin.mt.plus.canary'
name='MT管理器内测版'
version='2.11.1-beta'
versionCode='22060202'
author='Bin'
description='文件管理器/安卓逆向神器，此版本为内测版可与正式版共存，因为是内测版如果你在使用中发现bug，可向QQ：243454893提交反馈问题'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -url "https://api.qqcn.xyz/lz/?url=i0G6S060wywf&type=down" "$1.apk" '' '' "$1.apk"
;;

org.lsposed.manager)
apk='org.lsposed.manager'
name='LSPosed 模块管理器'
version='v1.8.3'
versionCode='6552'
author='LSPosed Developers'
description='LSPosed Xposed框架模块管理器【这是管理器，模块请前往Magisk模块仓库安装】'
apkfile="$PeiZhi_File/$apk-$versionCode.apk"
time='2022年6月9日'
    if [[ $Choice = 1 ]]; then
        [[ $SDK -lt 27 ]] && abort "！$name-$version（$versionCode）不支持安卓8.1.0以下系统"
        if [[ ! -s "$apkfile" ]]; then
            rm -rf "$PeiZhi_File/$apk-"*.apk
            . "$Load" riru_lsposed
            unzip -p "$Download_File" 'manager.apk' >$apkfile
        fi
    fi
    Download_File="$apkfile"
;;

org.meowcat.edxposed.manager)
apk='org.meowcat.edxposed.manager'
name='EdXposed Manager'
version='4.6.2'
versionCode='46200'
author='MlgmXyysd'
description='EDXposed框架模块管理器【这是管理器，模块请前往Magisk模块仓库安装】'
time='2021年2月7日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 3550938 a712f351af88497bc2fb6fae009e49bf "$1.apk"
;;

de.robv.android.xposed.installer)
apk='de.robv.android.xposed.installer'
name='Xposed Installer'
version='3.1.5'
versionCode='43'
author=rovo89
description='原版Xposed，提供Xposed模块管理，Xposed安装与卸载'
time='2021年3月18日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 3105672 315362d994986e6584203fca282f4472 "$1.apk"
;;

top.canyie.dreamland.manager)
apk='top.canyie.dreamland.manager'
name='梦境'
version='0.0.7'
versionCode='7'
author=canyie
description='梦境框架管理器【这是管理器，模块请前往Magisk模块仓库安装】'
time='2021年5月15日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 2041765 33ea0e394f1fb6b92b43037392a01401 "$1.apk"
;;

statusbar.lyric)
apk='statusbar.lyric'
name='墨•状态栏歌词'
version='5.3.1'
versionCode='161'
author='Block Network'
description='[Xposed] Status Bar Lyric / 状态栏歌词'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -file "APK/StatusBarLyric/StatusBarLyric-5.3.1.161.-release-1654353210041-signed.apk" "$1.apk" '371875' 'f9fe5aaa1665cf578ffc2a1791b18b77' "$1.apk"
;;

com.termux)
apk='com.termux'
name='Termux'
version='0.118'
versionCode=118
author='fornwall'
description='带有软件包的终端模拟器，需要 Android 7.0 及以上版本（安装包来自F-Droid）'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -url "https://mirrors.tuna.tsinghua.edu.cn/fdroid/repo/com.termux_118.apk" "$1.apk" '' '' "$1.apk"
;;

com.yxer.packageinstalles)
apk='com.yxer.packageinstalles'
name='R-安装组件'
version='1.9.67-beta'
versionCode='241'
author='依心所言'
description='或许是安装狮的替代品，支持安装APK/Magisk模块'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -file "APK/R-Installer/R_v1.9.67-beta_241-r.apk" "$1.apk" '1641722' '23a2d4f35a50adea4ae7e058c6699a3b' "$1.apk"
;;

com.yxer.rpack.hook)
apk='com.yxer.rpack.hook'
name='R-安装组件-扩展'
version='1.9.8'
versionCode='22'
author='依心所言'
description='R-安装组件的Xposed扩展'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -file "APK/R-Installer/R-hook_v1.9.8_22-r.apk" "$1.apk" 323300 9dfffd2dcf3ba24224765a79ab495f38 "$1.apk"
;;

com.litiaotia.app)
apk='com.litiaotia.app'
name='李跳跳'
version='波吉1.0 beta3'
versionCode='1'
author='李跳跳'
description='自动点击跳广告，支持安卓12'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "com.litiaotiao.app-1.apk" "$1.apk" '' '' "$1.apk"
;;

ru.zdevs.zarchiver.pro)
apk='ru.zdevs.zarchiver.pro'
name='ZArchiver Pro'
version='1.0.0'
versionCode=10033
author='Ant-ON'
description='解压缩神器'
time='2022年3月20日'
    case $ABI in
    armeabi-v7a)
        [[ $Choice = 1 ]] && Download -cos "ZArchiverPro_1.0.0_10033_arm.apk" "$1.apk" 4716311 b7d2dcd8c831e9191195a7126aa54e47 "$1.apk"
    ;;
    arm64-v8a)
        versionCode=10125
        [[ $Choice = 1 ]] && Download -cos "ZArchiverPro_1.0.1_10125_arm64.apk" "$1.apk" '' '' "$1.apk"
    ;;
    *)
        [[ $Choice = 1 ]] && echo "不支持的系统架构=$ABI"
    ;;
    esac
;;

org.telegram.messenger)
apk='org.telegram.messenger'
name='Telegram 电报'
version='8.7.4'
versionCode=26366
author='Telegram'
description='Telegram是一款跨平台的即时通讯软件，需要科学上网，简体中文语言包：https://t.me/setlanguage/moecn （此为F-Droid下载的开源版本，包名与签名会和官网下载的不一致）'
time='2022年6月9日'
    [[ $Choice = 1 ]] && Download -url "https://mirrors.tuna.tsinghua.edu.cn/fdroid/repo/org.telegram.messenger_26366.apk" "$1.apk" '' '' "$1.apk"
;;

com.su.assistant.pro)
apk='com.su.assistant.pro'
name='Android开发工具箱'
version='2.3.3'
versionCode=112
author='su1216'
description='全面的设备、系统、应用信息展示，集成了jadx和apktool，两种方式超强的布局查看功能，意想不到的应用统计维度，以及若干实用工具'
time='2021年7月20日'
    [[ $Choice = 1 ]] && Download -file "APK/SuAssistant/com.su.assistant.pro-2.3.3-112-257727.apk" "$1.apk" 15951330 8dfb29eecfe4cf81b2d182c233441e7b "$1.apk"
;;

com.andromeda.androbench2)
apk='com.andromeda.androbench2'
name='AndroBench'
version='5.0.1'
versionCode=16
author='未知'
description='非官方汉化版，测试内存读取速度性能'
time='2020年8月14日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 2906485 0765ed36fbb5c2a52a6b33857059f7b6 "$1.apk"
;;

com.camel.corp.universalcopy)
apk='com.camel.corp.universalcopy'
name='全局复制'
version='5.3.2'
versionCode=69
author='未知'
description='全局复制，无需ROOT，复制屏幕上你想要的一切文本 - http://bit.ly/universal-copy'
time='2021年1月31日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 5377132 18a1be26629fe269d8c0943f2931798a "$1.apk"
;;

com.kieronquinn.app.taptap)
apk='com.kieronquinn.app.taptap'
name='Tap, Tap'
version='0.10.1 Beta'
versionCode=10
author='KieronQuinn'
description='将设备功能背面的双击端口从Android 11移植到任何Android 7.0+设备'
time='2021年3月14日'
    [[ $Choice = 1 ]] && Download -file "APK/TapTap/com.kieronquinn.app.taptap-0.10.1-Beta-10-270580.apk" "$1.apk" 13879430 1f5d96c9d6f57959e56fd0ed8223df47 "$1.apk"
;;

com.apkpure.aegon)
apk='com.apkpure.aegon'
name='APKPure'
version='3.17.41'
versionCode=3174111
author='未知'
description='APKPure 免安装谷歌框架下载Google Play应用，需要VPN'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "APKPure_v3.17.41_apkpure.com.apk" "$1.apk" '' '' "$1.apk"
;;

ru.aaaaaadz.installer)
apk='ru.aaaaaadz.installer'
name=' LP  Installer '
version='9.5.7'
versionCode=1717
author='未知'
description='幸运破解器'
time='2021年5月15日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 9943604 e7e9a8a3f91417b73a5b2aee37533a69 "$1.apk"
;;

com.linroid.zlive)
apk='com.linroid.zlive'
name='Z直播'
version='4.13.2'
versionCode=342
author='未知'
description='Z直播只有 6M 大小，非常流畅和简洁，一个 App 即可关注全网主播'
time='2020年8月14日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 6703460 6e110f47cece4fb763d43345cc76d991 "$1.apk"
;;

com.kuss.rewind)
apk='com.kuss.rewind'
name='倒带'
version='3.2.2'
versionCode=2000092
author='未知'
description='简单的音乐播放器'
time='2021年5月17日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 8382714 95ae7de9e912781310fa4ce51d2ecf5d "$1.apk"
;;

rikka.riru)
apk='rikka.riru'
name='Riru'
version='25.4.4'
versionCode=426
author='Rikka  酷安@蓝莓味绿茶 '
description='显示Riru状态【最新版的riru已经移除了此app，此为25.4.4的旧版模块中提取】'
apkfile="$PeiZhi_File/$apk-$versionCode.apk"
time='2021年5月15日'
    if [[ $Choice = 1 ]]; then
        if [[ ! -s "$apkfile" ]]; then
            rm -rf "$PeiZhi_File/$apk-"*.apk
            Riru_version=3
            . "$Load" riru-core
            unzip -p "$Download_File" 'app.apk' >$apkfile
        fi
    fi
    Download_File="$apkfile"
;;

# Xposed模块
com.tsng.hidemyapplist)
apk='com.tsng.hidemyapplist'
name='隐藏应用列表'
version='2.3.2'
versionCode=73
author='DR-TSNG'
description='拦截应用对应用列表的请求，使应用无法检测到特定应用/应用列表  作用域只需要系统框架【此应用诞生的初衷是为了保护隐私，请不要用来开G】'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "V2.3.2.apk" "$1.apk" 6019753 d82d541f312e6930c1151fda1f5258ce "$1.apk"
;;

com.tsng.applistdetector)
apk='com.tsng.applistdetector'
name='应用列表检测器'
version='2.0'
versionCode=38
author='DR-TSNG'
description='检测Magisk管理器等可疑应用程序的Android示例应用程序，可用于检测ROOT应用隐藏情况'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "ApplistDetector-V2.0.apk" "$1.apk" '' '' "$1.apk"
;;

com.coderstory.toolkit)
apk='com.coderstory.toolkit'
name='安卓4.4-12核心破解'
version='3.8'
versionCode='1921'
author='CoderStory'
description='XP模块：降级安装/不同签名安装'
time='2022年1月24日'
    case $SDK in
    29 | 30 | 31) #3
        [[ $Choice = 1 ]] && Download -cos "com.coderstory.toolkit_3.8.apk" "$1.apk" 37544 2f33f7f058ec3db91227731208c505d2 "$1.apk"
    ;;
    28) #2
        version='2.2'
        versionCode=1765
        [[ $Choice = 1 ]] && Download -file "APK/CorePatch/2.2.apk" "${1}2.apk" 1327894 65a25c6d5d2e42475fb215ac0d9eb504 "${1}2.apk"
    ;;
    24 | 25 | 26 | 27) #1
        version='2.1'
        versionCode=1765
        [[ $Choice = 1 ]] && Download -file "APK/CorePatch/2.1.apk" "${1}1.apk" 1423421 8b746d3c648f48cb0189fe4b53e9462c "${1}1.apk"
    ;;
    19 | 20 | 21 | 22 | 23)
        version='1.4'
        versionCode=1580
        [[ $Choice = 1 ]] && Download -file "APK/CorePatch/1.4.apk" "$1.apk" 88680 d5df351b2754df0d5cc0251553fbd1d7 "$1.apk"
    ;;
    *)
        [[ $Choice = 1 ]] && echo "不支持SDK=$SDK"
    ;;
    esac
;;

me.teble.xposed.autodaily)
apk='me.teble.xposed.autodaily'
name='XAutoDaily'
version='3.0.0-rc9.1'
versionCode='22021601'
author='凌动千煞'
description='XP模块：QQ自动签到模块'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "XAutoDaily-3.0.0-rc9.1.apk" "$1.apk" '' '' "$1.apk"
;;

nil.nadph.qnotified)
apk='nil.nadph.qnotified'
name='QNotified'
version='1.0.1.6f5520f'
versionCode=1644664825
author='reinit'
description='XP模块：QQ辅助性功能增强'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "QNotified-release1.0.1.6f5520f.apk" "$1.apk" '' '' "$1.apk"
;;

com.hicore.Inataller)
apk='com.hicore.Inataller'
name='小菜豆安装器4.11'
version='4.1'
versionCode=233
author='Hicores'
description='XP模块：QQ辅助性功能增强'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "com.hicore.Inataller_4.11.apk" "$1.apk" 3314068 ca332362d754c8d2a362d248a2923342 "$1.apk"
;;

me.kyuubiran.qqcleaner)
apk='me.kyuubiran.qqcleaner'
name='QQ瘦身'
version='2.0.1'
versionCode='71'
author='KyuubiPie'
description='XP模块：定时自动清理QQ/TIM/微信的缓存文件'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "2.0.1(71).apk" "$1.apk" '' '' "$1.apk"
;;

com.fkzhang.qqxposed)
apk='com.fkzhang.qqxposed'
name='QX模块'
version='2.9'
versionCode=35
author='fkzhang'
description='XP模块：Add Extra features to QQ Mobile. QQ增加更多功能'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "QQXposed35_2.9.apk" "$1.apk" 3177384 4ce72acafda0fc88a459a188295cb8fe "$1.apk"
;;

com.fankes.qqsavebattery)
apk='com.fankes.qqsavebattery'
name='TSBattery'
version='3.3'
versionCode=12
author='星夜不荟'
description='XP模块：QQ/TIM/微信省电模块'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "fankes/TSBattery/releases/download/3.3/app-release.apk" "$1.apk" '' '' "$1.apk"
;;

com.fkzhang.wechatxposed)
apk='com.fkzhang.wechatxposed'
name='微X模块'
version='2.30'
versionCode=94
author='fkzhang'
description='XP模块：Add extra features to Wechat. 微信增加更多功能'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "WechatXposed_p_94_2.30.apk" "$1.apk" '' '' "$1.apk"
;;

com.mhook.dialog)
apk='com.mhook.dialog'
name='对话框取消'
version='2.3.5'
versionCode=235
author='myhanbing'
description='XP模块：对话框取消'
time='2020年9月4日'
    [[ $Choice = 1 ]] && Download -file "APK/MHookDialog/com.mhook.dialog-235-2.3.apk" "$1.apk" 1507161 a30f0617f21997df08e623fa93ee4934 "$1.apk"
;;

com.varuns2002.disable_flag_secure)
apk='com.varuns2002.disable_flag_secure'
name='Disable-FLAG_SECURE'
version='2.0.0'
versionCode='2'
author='varuns2002'
description='XP模块：在不允许截屏的应用上强制截屏'
time='2021年6月14日'
    [[ $Choice = 1 ]] && Download -file "APK/Disable-FLAG_SECURE/Disable-FLAG_SECURE_2.apk" "$1.apk" 23470 c5a849406b06f46b29a1fb6274f4b06a "$1.apk"
;;

org.hello.coolapk)
apk='org.hello.coolapk'
name='FuckCoolapkR'
version='Release-1.12'
versionCode=112
author='qq little ice'
description='XP模块：去除酷安各种广告(请使用最新版酷安，请自行隐藏模块)'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "Xposed-Modules-Repo/org.hello.coolapk/releases/download/112-Release-1.12/FuckCoolapkR-Release1.12.apk" "$1.apk" '' '' "$1.apk"
;;

com.surcumference.fingerprintpay)
apk='com.surcumference.fingerprintpay'
name='指纹支付'
version='4.3.1'
versionCode=21
author='eritpchy'
description='XP模块：让微信、支付宝、淘宝和腾讯QQ在支持指纹识别的手机上使用指纹支付, 即使他们都不打算支持!'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/xposed.com.surcumference.fingerprintpay.wechatfp.4.3.1.release.apk" "$1.apk" '' '' "$1.apk"
;;

com.coderstory.flyme)
apk='com.coderstory.flyme'
name='Flyme9助手'
version='4.3.3'
versionCode=485
author='CoderStory'
description='XP模块：flyme9助手基于dexposed/xposed开发的插件，实现了去除系统广告，核心破解，隐藏桌面应用标签等实用功能。使用插件前请申请root权限并安装LSPosed/EdXposed，也可以选择xposed。'
time='2021年5月17日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 4940822 667cc18bd0add6e1ca68b00312ffed5d "$1.apk"
;;

com.lt2333.simplicitytools)
apk='com.lt2333.simplicitytools'
name='Simplicity Tools'
version='1.4.8'
versionCode=49
author='乌堆小透明'
description='一个基于 MIUI13（Android12）适配的系统拓展Xposed模块【仅支持Android12】'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "Xposed-Modules-Repo/com.lt2333.simplicitytools/releases/download/49-1.4.8/Simplicity_Tools_Xposed-1.4.8-release.apk" "$1.apk" '' '' "$1.apk"
;;

name.mikanoshi.customiuizer)
apk='name.mikanoshi.customiuizer'
name='CustoMIUIzer'
version='3.1.6'
versionCode=68
author='Mikanoshi'
description='XP模块：MIUI增强美化工具，支持MIUI10-12（功能十分强大，可以说是MIUI上的重力工具箱）'
time='2021年7月7日'
    [[ $Choice = 1 ]] && Download -file "APK/CustoMIUIzer/CustoMIUIzer_3.1.6.apk" "$1.apk" 1617163 83e647288feb0f8cf40386ff66ab0f15 "$1.apk"
;;

com.coderstory.purify)
apk='com.coderstory.purify'
name='小米净化'
version='3.3.1 Dev'
versionCode=108002
author='CoderStory'
description='XP模块：小米净化是基于dexposed/xposed开发的插件，实现了去除系统广告，核心破解，隐藏桌面应用标签等实用功能。使用插件前请申请root权限并安装magisk版EdXposed。'
time='2020年8月14日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 1955700 628e33908c26ebec2489082c22d04ecb "$1.apk"
;;

chili.xposed.chimi)
apk='chili.xposed.chimi'
name='ChiMi'
version='4.08.10'
versionCode=300810
author='yonghen'
description='XP模块：MIUI扩展插件（EdXposed/TaiChi）'
time='2021年8月10日'
    [[ $Choice = 1 ]] && Download -gh "yonghen/chimi-/releases/download/v4.08.10/ChiMi-v4.08.10-release.apk" "$1.apk" 231835 1466b4423a8dbac3179b3f51d5429991 "$1.apk"
;;

cn.lovesykun.miui_force_fps)
apk='cn.lovesykun.miui_force_fps'
name='MIUI 全局高帧'
version='1.0'
versionCode=1
author='yujincheng08'
description='XP模块：强制MIUI 全局高帧'
time='2021年3月18日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/cn.lovesykun.miuiforcefps.apk" "$1.apk" 7448 c9757f98794ba42259094080c13ef24d "$1.apk"
;;

org.meowcat.xposed.miui)
apk='org.meowcat.xposed.miui'
name='MIUI双开限制解除'
version='1.1'
versionCode=2
author='yonghen'
description='XP模块：解除MIUI双开应用限制'
time='2021年2月23日'
    [[ $Choice = 1 ]] && Download -file "APK/MIUI/org.meowcat.xposed.miui.apk" "$1.apk" 91157 dab61d4cdc27f7ce337163b41c069f27 "$1.apk"
;;

cn.coderstory.miui.water)
apk='cn.coderstory.miui.water'
name='淘米水'
version='1.7.3'
versionCode='12'
author='CoderStory'
description='XP模块：小米净化同作者，一款MIUI去广告插件。仅支持最新版本的MIUI 12.5，Android版本10.0起步'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "1.7.3.apk" "$1.apk" 1271070 fe2814c3e8843d4068f45788d6619b90 "$1.apk"
;;

com.mikutart.bettermiui)
apk='com.mikutart.bettermiui'
name='不要多管闲事'
version='1.5'
versionCode=7
author='Eggtart'
description='XP模块：跳过MIUI/ColorOS授权倒计时/安装应用需登陆账号等功能'
time='2021年6月14日'
    [[ $Choice = 1 ]] && Download -file "APK/BetterMIUI/com.mikutart.bettermiui_7.apk" "$1.apk" 2877714 33f60640a6ed4ff1a681666b59aac8ea "$1.apk"
;;

com.variable.apkhook)
apk='com.variable.apkhook'
name='应用伪装'
version='1.9.8-炼妖壶'
versionCode='10'
author='叼毛'
description='XP模块：自定义应用获取的设备数据'
time='2021年7月7日'
    [[ $Choice = 1 ]] && Download -file "APK/ApkHook/com.variable.apkhook_10.apk" "$1.apk" 4291653 4f1b3a3a69e158b2706bfd40dcd7c4ee "$1.apk"
;;

pansong291.xposed.quickenergy)
apk='pansong291.xposed.quickenergy'
name='XQ_Crystal'
version='1.5.0'
versionCode=20211120
author='未知'
description='XP模块：支付宝扩展模块，快速收取蚂蚁森林能量'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "XQ_Crystal_1.5.0.apk" "$1.apk" 428444 a6f821f0ae850a9f7ce1e9feaa304ed3 "$1.apk"
;;

com.god.vip)
apk='com.god.vip'
name='GodVip'
version='1.22.1'
versionCode=2108182339
author='God/明月/小婵婵'
description='XP模块：懂得自然懂（未适配EdXposed）'
time='2021年8月19日'
    [[ $Choice = 1 ]] && Download -cos "GodVip_1.22.1.apk" "$1.apk" 124935 39f5b150e43c64b1d72aaad3252bb98a "$1.apk"
;;

com.xmnh.viphook)
apk='com.xmnh.viphook'
name='vipHook'
version='1.5.0'
versionCode=25
author='by:希梦☆奈何'
description='XP模块：懂得自然懂'
time='2021年4月4日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 1586050 53e33ecff5327d0305b3d0cca5fcc3b6 "$1.apk"
;;

club.youppgd.adhook)
apk='club.youppgd.adhook'
name='联璧模块'
version='99'
versionCode=99
author='youppgd'
description='XP模块：去除腾讯视频、爱奇艺、优酷、芒果、豆瓣的各处广告，只支持官方app'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "adhook_v99.apk" "$1.apk" 2388501 9399a6c5b55bbccd08ae1394af579b76 "$1.apk"
;;

cn.kwaiching.hook)
apk='cn.kwaiching.hook'
name='要妳命三千'
version='21.05.04'
versionCode=78
author='youppgd'
description='XP模块：一加/TikTok/抖音/Musical.ly/快手/Tumblr/墳頭草/內涵段子'
time='2021年5月17日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 4583990 a0f2989acdd21b226668b5f14aefac19 "$1.apk"
;;

com.xloger.exlink.app)
apk='com.xloger.exlink.app'
name='去你大爷的内置浏览器'
version='3.0'
versionCode=18
author='xloger & oott123'
description='XP模块：它可以自定义接管App打开浏览器的事件，当点击链接时跳转浏览器打开，不再默认使用内置浏览器打开'
time='2020年9月6日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 2133497 84e68e8b7a209902392d8f18dd6d181c "$1.apk"
;;

me.iacn.biliroaming)
apk='me.iacn.biliroaming'
name='哔哩漫游'
version='1.5.9'
versionCode=59
author='yujincheng08'
description='XP模块：解除B站客户端番剧区域限制的Xposed模块，并且提供其他小功能'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "yujincheng08/BiliRoaming/releases/download/v1.5.9/BiliRoaming_1.5.9.apk" "$1.apk" '' '' "$1.apk"
;;

com.raincat.dolby_beta)
apk='com.raincat.dolby_beta'
name='杜比大喇叭β版'
version='3.4.0'
versionCode=340
author='nining377'
description='XP模块：网易云音乐去广告/签到/精简美化/解灰'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "com.raincat.dolby_beta-3.4.0.apk" "$1.apk" 47683673 0af8a300fdae5e498c43ad0d02aa11ce "$1.apk"
;;

me.dyq.android.SDLink)
apk='me.dyq.android.SDLink'
name='SD重定向'
version='1.4.3'
versionCode=13
author='未知'
description='XP模块：解决APP在内部储存根目录乱拉屎'
time='2020年8月14日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 401063 61d45f2477b3efa5b8910cfefa2d33e5 "$1.apk"
;;

com.lemonsqueeze.fakewificonnection)
apk='com.lemonsqueeze.fakewificonnection'
name='伪装wifi'
version='1.10'
versionCode=11
author='未知'
description='XP模块：伪装成wifi连接'
time='2020年8月14日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 327389 43a28736d96ade25351d6db3ce37d9ff "$1.apk"
;;

me.lee.adaway.sina)
apk='me.lee.adaway.sina'
name='SinaAdAway'
version='0.0.6'
versionCode=6
author='未知'
description='XP模块：去除新浪微博广告'
time='2020年8月23日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 1258617 dad0ce3efc5ef5f680bb78eb43c7e65d "$1.apk"
;;

me.lee.adaway)
apk='me.lee.adaway'
name='AdAway'
version='0.6.2'
versionCode=49
author='lis216'
description='XP模块：微博抖音增强模块'
time='2021年3月31日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 2006902 339abd566d384c7b4854f2834ae837a4 "$1.apk"
;;

com.github.tianma8023.xposed.smscode)
apk='com.github.tianma8023.xposed.smscode'
name='验证码提取器(Xposed)'
version='2.2.5'
versionCode=45
author='tianma8023'
description='XP模块：提取新短信中的验证码并复制到剪贴板，并能自动输入验证码'
time='2021年2月9日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 1925433 e3af8dbc824ac4175cdf277194965371 "$1.apk"
;;

com.viewblocker.jrsen)
apk='com.viewblocker.jrsen'
name='上帝模式'
version='3.0.0-beta1'
versionCode=22
author='kaisar945'
description='XP模块：去除apk布局，哪里不要点哪里'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -cos "GodMode_3.0.0-beta1.apk" "$1.apk" '' '' "$1.apk"
;;

#模块
Automatic_brick_rescue)
id='Automatic_brick_rescue'
name='自动神仙救砖'
version='v2021081508'
versionCode=43
author='by：Han | 情非得已c & 快播内部工作人员'
description='用途：当刷入某模块后导致无法正常开机，自动触发已设置好的救砖操作（建议用应用仓库里面那个）'
time='2021年8月15日'
;;

riru_lsposed)
id='riru_lsposed'
name='Riru - LSPosed'
version='v1.8.3'
versionCode='6552'
author='LSPosed Developers'
description='一款基于Riru API开发的Xposed框架，支持运行在安卓8.1.0 ~ 13系统上。需要安装Riru v25.0.0或更高版本，Telegram: @LSPosed'
time='2022年6月9日'
    if [[ $Choice = 1 ]]; then
        mask -v
        if [[ $MAGISK_VER_CODE -ge 23000 ]]; then
             [[ $Choice = 1 ]] && Download -file "Modules/LSPosed/LSPosed-v1.8.3-6552-riru-release.zip" "$1.zip" '2353735' 'fccb0513bcac0e868e49b2b09005db86' "$1.zip"
        else
            echo "- 检测到Magisk版本在v23以下，无法安装最新版$version（$versionCode），开始安装v1.3.4（5501）版本"
            Download -file "Modules/LSPosed/LSPosed-v1.3.4-5501-release.zip" "$1.zip" 2189720 de39ec10f67b538fbdc60b7f0e6520f7 "$1.zip"
        fi
    fi
;;

zygisk_lsposed)
id='zygisk_lsposed'
name='Zygisk - LSPosed'
version='v1.8.3'
versionCode='6552'
author='LSPosed Developers'
description='一款基于Zygisk API开发的Xposed框架，支持运行在安卓8.1.0 ~ 13系统上。需要Magisk开启Zygisk支持，Telegram: @LSPosed'
time='2022年6月9日'
    if [[ $Choice = 1 ]]; then
        mask -v
        if [[ $MAGISK_VER_CODE -ge 24000 ]]; then
             [[ $Choice = 1 ]] && Download -file "Modules/LSPosed/LSPosed-v1.8.3-6552-zygisk-release.zip" "$1.zip" '2357751' '51a8ad0d00426f5af7650fd5f9a005cc' "$1.zip"
        else
            echo "- 检测到Magisk版本在v24以下，无法安装Zygisk版LSPosed，请更新Magisk或安装Riru版" 
        fi
    fi
;;

riru_edxposed)
showapk='4.6.2-pre (46200)'
id='riru_edxposed'
name='Riru - EdXposed'
version='v0.5.2.2_4683-master'
versionCode='4683'
author='solohsu, MlgmXyysd'
description='一款基于Riru API开发的Xposed框架，支持运行在安卓8 ~ 11系统上。需要安装Riru v23或更高版本【请使用riru25.4.4及以下版本】，Telegram: @EdXposed'
time='2021年2月18日'
    [[ $Choice = 1 ]] && Riru_version=3 && Download -coding "21051601/modules/EdXposed-v0.5.2.2_4683-master-release.zip" "$1.zip" 3461516 71382a57c7e7861b4695d2089e5422a9 "$1.zip"
;;

riru_dreamland)
showapk='0.0.7(7)'
id='riru_dreamland'
name='Riru - Dreamland（梦境框架）'
author='canyie'
version='2.1_2100'
versionCode='2100'
description='一款基于Riru API开发的Xposed框架，支持运行在安卓 7.0 ~ 11，需要安装Riru v23或更高版本，Telegram：@DreamlandFramework, QQ群：949888394'
time='2021年10月4日'
    [[ $Choice = 1 ]] && Download -cos "magisk-dreamland-2100.zip" "$1.zip" 729692 a1f0560c33ae29b0d55f3b3d3968d9e4 "$1.zip"
;;

xposed)
id='xposed'
name='Xposed Framework（原始Xposed框架）'
version='v90-beta3'
versionCode='9030'
author='rovo89 & topjohnwu'
description='打包的官方Xposed框架 by @topjohnwu，支持安卓 5-8.1'
time='2021年3月24日'
    [[ $Choice = 1 ]] && Download -file "Modules/Xposed/xposed.zip" "$1.zip" 108675627 d083690c555fa59b5f29112fc1dbb0dc "$1.zip"
;;

MIUI13.22)
id='MIUI13.22'
name='MIUI开发版增强补全模块（安卓12）'
version='v13.22'
versionCode='2'
author='酷安@andlao＆酷安@星苒鸭'
description='酷安@星苒鸭修改MIUI全机型适用，超多功能（在module.prop）知你所想，快快下载吧'
time='2022年1月27日'
    [[ $Choice = 1 ]] && Download -url "https://u.qqcn.xyz/iXQRYs" "$1.zip" 60023244 55f7c25af1234f594ab43477626a7175 "$1.zip"
;;

ttf)
MIUI=1
id='ttf'
name='空字体-自动识别'
version='v4.2(211229)'
versionCode='211229'
author='余空&阿巴酱'
description='解决MIUI使用字体模块失效及无法实现多字重问题.'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "ttfv4.2.zip" "$1.zip" 30332 d603c98633f91832bcdd0927481c9161 "$1.zip"
;;

ViPERFXCN)
id='ViPERFXCN'
name='蝰蛇 ViPERFX 2.7.2.1 完整简中'
version='Redux'
versionCode=''
author='Team de Witt，汉化 wushidi，模块 wvwvw'
description='蝰蛇 ViPERFX 是一款用于Android系统的全局音效驱动，主要用于给音频渲染各种各样的音频效果。'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "ViPERFX2.7.2.1_CN.zip" "$1.zip" 5655348 02fef126818b97052d999c2773b04884 "$1.zip"
;;

turbo-charge)
id='turbo-charge'
name='充电加速（全机型测试）'
version='v3'
versionCode='3'
author='酷安@诺鸡鸭'
description='删除温控，关闭阶梯式充电，持续修改电池温度及充电电流，以达到最快充电速度'
time='2021年8月8日'
    [[ $Choice = 1 ]] && Download -cos "turbo_charge.zip" "$1.zip" 4741 088f55d8ea3aa4804df031251777abba "$1.zip"
;;

gpspro)
id='gpspro'
name='GPS Pro'
version='v210422'
versionCode='1'
author='OLX-新的&分歧'
description='以增强您的GPS定位搜星速度，同时为您提供更精确的定位！'
time='2021年8月8日'
    [[ $Choice = 1 ]] && Download -cos "Magisk_GPS-Pro-20210422.zip" "$1.zip" 325803 1a69eafd9ab50947df08b369325e05d1 "$1.zip"
;;

huzeASGuard)
id='huzeASGuard'
name='H-无障碍服务守护[ASGuard]'
version='v4.8.7_fix'
versionCode='202107051'
author='沍澤'
description='开机自动开启且实时保护无障碍服务(辅助功能)，防止应用意外关闭导致无障碍服务连同关闭，前往酷安下载ASGuard以进行配置 或修改/data/media/0/Android/ASGuard.conf'
time='2021年7月9日'
    [[ $Choice = 1 ]] && Download -file "Modules/ASGuard/ASGuard_v4.8.7.zip" "$1.zip" 10372 a0d358bd2e629c594afc83832868c88c "$1.zip"
;;

shadow_screenshots)
id='shadow_screenshots'
name='阴影截图'
version='v3.1.2'
versionCode='2107091'
author='酷安@巴啦啦魔仙女王'
description='（仅支持ARM64设备）手机截图自动套阴影，前往酷安下载魔仙堡管理手册以进行配置 或修改/data/adb/modules/shadow_screenshots/module.prop文件'
time='2021年7月9日'
    [[ $Choice = 1 ]] && Download -file "Modules/Shadow_Screenshots/ShadowScreenshots_v3.1.2.zip" "$1.zip" 19128245 5feccffeda5de7596a93264035e47af2 "$1.zip"
;;

AD-Hosts)
eval `(curl -s https://aisauce.coding.net/p/ad-hosts/d/ad-hosts/git/raw/master/Han.GJZS.prop)`
id='AD-Hosts'
    [[ $Choice = 1 ]] && Download -url "$zipurl" "$1.zip" "$size" "$md5" "$1.zip"
#https://aisauce.coding.net/public/ad-hosts/ad-hosts/git/files
;;

MIUI_Functional_Complement)
id='MIUI_Functional_Complement'
name='K30息屏显示'
version='v1.0'
versionCode='20210605'
author='愿君惜且不离'
description='安装前请先安装万象息屏'
time='2021年6月5日'
MIUI=1
    [[ $Choice = 1 ]] && Download -file "Modules/K30lcdmod/K30LCDmod.zip" "$1.zip" 5533 d2cbe3cce1e730ce3c81a6d20a57af28 "$1.zip"
;;

FUCK-SHIT-FILE)
id='FUCK-SHIT-FILE'
name='A-循环吃掉乱拉屎的文件/文件夹'
version='v3.1.2'
versionCode='20210404'
author='阿巴酱(Petit-Abba)'
description='到处拉屎？不存在！吔屎啦雷: [ /sdcard ] [/sdcard/Android ] [ /sdcard/Download ]'
time='2021年4月4日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/FUCK-SHIT-FILEv3.1.2.zip" "$1.zip" 7815 4cf40745efb452cb5f0445b50ca74b76 "$1.zip"
;;

crond_clear_the_blacklist)
id='crond_clear_the_blacklist'
name='crond 清理黑名单列表'
version='v4.4.2 (21/10/03)'
versionCode='20211003'
author='阿巴酱(Petit-Abba)'
description='和上面那个差不多，上面的是循环清，这个是定时清'
    [[ $Choice = 1 ]] && Download -cos "Clear_The_Blacklist_v4.4.2.zip" "$1.zip" 812009 615df83662324b46241008565c28193f "$1.zip"
;;

S-T-E-P-S)
id='S-T-E-P-S'
name='A-智能步数管理'
version='v3.2'
versionCode='20210318'
author='阿巴酱(Petit-Abba)'
description='哦豁！'
time='2021年3月18日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/S-T-E-P-Sv3.2.zip" "$1.zip" 28555 24797d3382f31d153570d4e96d41bed5 "$1.zip"
;;

Third_Party_Redirect)
id='Third_Party_Redirect'
name='第三方应用下载目录重定向'
version='v5.2.2-[云端版]'
versionCode='20210620'
author='落葉淒涼(高雄佬) & 阿巴酱'
description='字面意思'
time='2021年7月21日'
    [[ $Choice = 1 ]] && Download -file "Modules/Third_Party_Redirect/v5.2.zip" "$1.zip" 14987 210081c69b51e4b8e1cfd7132a16b8d2 "$1.zip"
;;

MIUI12ABajiangXiaoJingJian)
MIUI=1
id='MIUI12ABajiangXiaoJingJian'
name='MIUI12小精简&移除mdnsd服务'
version='v4.1'
versionCode='20210104'
author='阿巴酱'
description='①解决mdnsd耗电严重问题。②通过精简可以有效提升续航、流畅度、减少内存占用，如果你需要用到的某个程序被精简，请自行拆包删除相应内容再打包重刷即可（有详细注释），更新支持MIUI12.5。'
time='2021年7月21日'
    [[ $Choice = 1 ]] && Download -file "Modules/ABJ/MIUI12ABajiangXiaoJingJianv4.1.zip" "$1.zip" 6614 ffa6a3a26637304f4db73770b3d0037b "$1.zip"
;;

AnyHosts)
id='AnyHosts'
name='AnyHosts'
version='v3.0'
versionCode='300'
author='Ai Sauce'
description='一个自动更新自定义hosts订阅源的脚本，请在使用前启用设置中的Systemless Hosts'
time='2021年4月12日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/AnyHosts_v3.0.zip" "$1.zip" 21041 89185fd1d4202ed05e03754c4f7a888f "$1.zip"
;;

zw_fileclear)
id='zw_fileclear'
name='FileClear for ZW'
version='3.9.0'
versionCode='20210329'
author='乐阿兰那'
description='一个基于MIUI系统编写的面具模块。旨在通过Linux命令清理微信、微薄、QQ等APP缓存、垃圾文件，屏蔽ad、.um、.uuid、debug_log、MiPushlog和腾讯X5内核的Shell脚本。相比其他同类软件具有不安装App、清理范围大、清理类型多(清理更彻底)、效果显著且自动化的优点；与同类软件一样，对APP实时新建的缓存文件无法清理(清理后，App会立即或开机后立即新建缓存文件)。请与MIUI官方“垃圾清理”APP搭配食用！！！安装模块后，每次重启将自动调用MIUI官方清理APP。2020-12-07尝试调用模块的Crontab定时执行任务命令，在每2天的凌晨5点执行脚本。'
time='2020年2月29日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/FileClear-for-ZW_Magisk-Modules.zip" "$1.zip" 1332174 1a888ff2d1d564af8933c731a91a932e "$1.zip"
;;

MIUI-12_All_in_one)
MIUI=1
id='MIUI-12_All_in_one'
version='v1.12'
versionCode=12
name="MIUI 12多合一通用模块"
author='by：Han | 情非得已c'
description="$name"
time='2021年4月6日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 1125623 6a76d73f76635d53395539e13c72af07 "$1.zip"
;;

MIUI_In_Common_Use)
MIUI=1
id='MIUI_In_Common_Use'
version='2019-08-17'
versionCode='1'
name="MIUI9 - MIUI10多合一通用模块"
author='by：Han | 情非得已c'
description="$name"
time='2019年8月17日'
;;

He_zheng)
id='He_zheng'
name='A亮屏满血模块'
version='2.4(22.01.06)'
versionCode='211212'
author='酷安ID:鹤征'
description='基本适配所有机型(私有协议自测，比如一加，蓝绿)，温度墙50度(50度后降流或者断电30s用来保护手机)，此模块本身不删除温控！且卸载恢复官方充电速度。(生效条件为亮屏充电电流大于原本电流)'
time='2022年1月27日'
    [[ $Choice = 1 ]] && Download -cos "hezheng_2.4.zip" "$1.zip" 9438 600432a2a8e1e42344c1d374f0bc316b "$1.zip"
;;

theme_pojie_apktool)
id='theme_pojie_apktool'
name='主题破解 Auto'
version='v1.6.2'
versionCode='211230'
author='YuKongA'
description='这是一个适用于中国版MIUI的主题破解，截至目前支持MIUI11及之后所有的主题壁纸版本。'
time='2022年3月20日'
MIUI=1
    [[ $Choice = 1 ]] && Download -gh "YuKongA/UnlockMiuiThemeManager/releases/download/1.6.2/Unlock_MIUI_ThemeManager_1.6.2.zip" "$1.zip" '' '' "$1.zip"
;;

GJZS_Theme_Color)
MIUI=1
id='GJZS_Theme_Color'
version='v1'
versionCode='1'
name='自定义「搞机助手」主题配色'
author='by：Han | 情非得已c'
description="$name"
time='2020年6月15日'
;;

Installation_lion-miui)
MIUI=1
Show_Compatibility_Mode=0
id='Installation_lion-miui'
name='安装狮-MIUI'
version='v3.7.5-miui'
versionCode='43'
author='dadaewq & by：Han | 情非得已c'
description='将MIUI的应用包管理组件替换为安装狮来静默安装应用，注：无需在「安装狮 静默安装」里做任何设置，也不需要开启「安装狮-Root」模式授权ROOT权限因为默认就可以使用「安装狮-DPM」来静默安装应用﻿'
time='2021年8月19日'
    [[ $Choice = 1 ]] && Download -file "Modules/MIUI/Installation_lion-miui.zip" "$1.zip" 1421892 6e0e362b2648cf8dacf758c1fb1f9136 "$1.zip"
;;

com.android.thememanager)
MIUI=1
Show_Compatibility_Mode=0
    id='com.android.thememanager'
name='主题壁纸'
version='v1.9.3.0（930）'
versionCode=9
author='by：Han | 情非得已c'
description='一些玄学优化'
time='2021年4月7日'
    [[ $Choice = 1 ]] && Download -file "Other/com.android.thememanager.apk" "$1.apk" 19185369 4858a32066bcac5c8cc695dcf6de0395 "$1.apk"
;;

com.miui.packageinstaller)
id='com.miui.packageinstaller'
name='MIUI应用包管理组件'
version='2.0.6-v1'
versionCode='2021062001'
author='酷安@快播内部工作人员'
description='将MIUI应用包管理组件替换为魔改版（基于2.0.6修改）【安装前请核心破解，否则易卡米】'
time='2021年6月20日'
MIUI=1
    [[ $Choice = 1 ]] && Download -file "Modules/com.miui.packageinstaller/com.miui.packageinstaller2.0.6_v1.zip" "$1.zip" 2531191 0503f881ea2c6a6700c808295fc6721c "$1.zip"
;;

MIUI-Advanced_power_supply)
MIUI=1
id='MIUI-Advanced_power_supply'
name='小米高级重启菜单'
version='v1.3'
versionCode=3
author='by：Han | 情非得已c'
description='给小米官方的电源菜单增加，重启到recovery 和 FASTBOOT，只在安卓10上测试通过其它机型自测，卡米可私信我修复'
time='2020年12月24日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 129565 8a9c232de79f40c3355e365cade0b068 "$1.zip"
;;

Game_BianShengQi)
MIUI=1
Show_Compatibility_Mode=0
id='Game_BianShengQi'
name='MIUI开发版游戏加速变声器'
version='v1'
versionCode='1'
author='淡淡的影寒'
description='工作原理：在prop内增加ro.vendor.audio.voice.change.support=true，打开游戏加速变声器功能'
time='2020年6月15日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

gametools)
MIUI=1
id='gametools'
name='修改游戏工具箱'
author='酷安ID流昔枫落'
version='基于4.1.6安全中心'
description='修改游戏工具箱快捷方式QQ为tim，适用于MIUI11安全中心版本4.1.2，最好安装mm以防卡米'
time='2020年8月7日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 19163791 cb08a33800824be1fe716a55afd6099a "$1.zip"
;;

10x5g_perfect_cutout)
MIUI=1
id='10x5g_perfect_cutout'
name='Redmi 10x 5G 完美缺口'
version='2.0.0'
versionCode='2'
author='嘟嘟Ski'
description='优化隐藏水滴效果，此模块适用于Redmi 10x 5G 及 10x 5G Pro，系统为基于Android 10的MIUI所有版本'
time='2020年6月25日'
    [[ $Choice = 1 ]] && Download -file "Modules/10x5g_perfect_cutout.zip" "$1.zip" 15826 9fbd92a81175a45eeac4a8cdf0c07440 "$1.zip"
;;

10x5g_perfect_cutout2)
MIUI=1
id='10x5g_perfect_cutout2'
name='Redmi 10x 5G水滴优化'
version='2.5.0'
versionCode='6'
author='嘟嘟Ski'
description='优化隐藏水滴效果，此模块仅适用于Redmi 10x 5G（不包括10x 5G Pro），且要求系统版本必须为MIUI 12.0.5。不符合要求的型号和系统版本，切勿使用！'
time='2021年5月17日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 48984 eb82f672596c5cc6811642421f89fd8c "$1.zip"
;;

pig)
MIUI=1
Show_Compatibility_Mode=0
id='pig'
name='K30 全系列  全局猪鼻子'
version='v1.4'
versionCode=4
author='by：Han | 情非得已c & Teemo_omeeT'
description='让K30系列的药丸孔，变成猪鼻子'
time='2021年1月30日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 3155 2b87f38a763dcc82277fbd6dee776965 "$1.zip"
;;

K30-5G_Status_bar)
Show_Compatibility_Mode=0
MIUI=1
id='K30-5G_Status_bar'
name='k30-5G猪鼻子加普通状态栏高度'
version='v1'
versionCode='1'
author='by：Han | 情非得已c & Teemo_omeeT'
description='让k30-5G的药丸孔，变成猪鼻子，加普通状态栏高度，猪鼻子由@Teemo_omeeT修改，不支持安卓11'
time='2020年6月23日'
    [[ $Choice = 1 ]] && Download -file "Modules/K30-5G_Status_bar.zip" "$1.zip" 31250 334935c6feef7cb2bdb8f26635930443 "$1.zip"
;;

Xiaomi_Full_frame_rate)
MIUI=1
Show_Compatibility_Mode=0
id='Xiaomi_Full_frame_rate'
name='小米系列全局高刷'
version='v1.3'
versionCode='3'
author='by：Han | 情非得已c'
description='使用模块方式冻结电量和性能，让支持小米高刷新率的设备，全局使用高刷，需要把在设置里 -->显示 -->屏幕刷新率设置为最高刷新率'
time='2020年6月25日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

Show_touch)
Show_Compatibility_Mode=0
id='Show_touch'
name='修改显示触摸点'
version='v1'
versionCode=1
author='by：Han | 情非得已c'
description='修改显示点按操作视觉反馈触摸点'
time='2020年12月15日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 55415 cd4efaa0ba3bb2a36c0b5436b6c5ca3a "$1.zip"
;;

Magisk_Abnormal_Repair)
id='Magisk_Abnormal_Repair'
name='Magisk异常修复'
version='v1.2'
versionCode='3'
author='by：Han | 情非得已c'
description='修复进入Magisk时提示：Magisk 不支持安装为系统应用，请还原为用户应用。'
description2='修复进入Magisk时提示Running this app as a system app is not supported. Please revert the app to a user app.翻译：不支持将Magisk作为系统应用程序运行，请将该应用还原为用户应用'
time='2021年2月25日'
;;

Hide_system_ROOT)
Show_Compatibility_Mode=0
id='Hide_system_ROOT'
name='隐藏系统ROOT'
version='v1.6'
versionCode=6
author='by：Han | 情非得已c'
description='隐藏除Magisk以外的系统ROOT，只保留magisk su，因为系统ROOT的存在会让Magisk Hide失效，导致部分应用仍然会检测到ROOT，且部分机型会存在Magisk掉ROOT的情况，同时也还可以修复进入Magisk时提示
检测到不属于 Magisk 的 su 文件，请删除其他超级用户程序。其实说白了就是存在系统ROOT导致的'
time='2021年3月7日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

Volume_Adjustment)
id='Volume_Adjustment'
name='媒体音量级别调节'
version='v1.3'
versionCode='3'
author='by：Han | 情非得已c'
description='将默认的按下音量键15次后放大至最大音量，更改为自己喜欢的数值，我只在小米上测试OK，其它机型自己测试'
time='2020年12月12日'
;;

github-hosts)
Show_Compatibility_Mode=0
id='github-hosts'
name='解决Github网址打不开'
version='v2.0'
versionCode=7
author='by：Han | 情非得已c & 快播内部工作人员'
description='解决Github网址打不开，如果失效请再次安装本模块即可'
time='2021年8月19日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh

;;

lanzou-hosts)
Show_Compatibility_Mode=0
id='lanzou-hosts'
name='解决蓝奏云旧网址打不开'
version='v1'
versionCode=1
author='People11'
description='解决蓝奏云旧网址打不开'
time='2021年8月19日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

Freezing_system_app)
id='Freezing_system_app'
name='使用Magisk模块方式冻结系统应用'
version='v1'
versionCode='1'
author='by：Han | 情非得已c'
description="$name"
time='2020年8月9日'
;;

Convert_to_system_app)
id='Convert_to_system_app'
name='三方应用转系统应用'
version='v1.2'
versionCode='2'
author='by：Han | 情非得已c'
description='自定义方式使用模块方式将三方应用转为系统应用'
time='2020年8月20日'
;;

Remove_Temperature_Control)
id='Remove_Temperature_Control'
name='移除温控'
version='v2.1'
versionCode=12
author='People11'
description='以Magisk模块移除温控文件'
time='2021年10月4日'
;;

Clone_Configuration)
id=Clone_Configuration
name=克隆主用户EDXposed模块配置
version='v2021021402'
versionCode=2
author='by：Han | 情非得已c'
description='免双开EDXposed Manager和Xposed模块，使双开应用同步主用户Xposed模块配置'
time='2021年2月14日'
;;

wifi-bonding)
Show_Compatibility_Mode=0
id='wifi-bonding'
name='Wifi Bonding - 让Wi-Fi带宽提速（高通）'
version='1.14'
versionCode='15'
author='simonsmh'
description='Doubles your wi-fi bandwith by modifying WCNSS_qcom_cfg.ini（通过修改WCNSS_qcom_cfg.ini，让Wi-Fi带宽提速至最大）'
time='2020年12月13日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

Transition_Animation)
id='Transition_Animation'
name='过渡动画切换（不通用）'
version='v2020020300'
versionCode='1'
author='by：Han | 情非得已c'
description='原理：通过修改Android 系统，修改过渡动画。'
time='2020年6月15日'
    [[ $Choice = 1 ]] && Download -cos "Transition_Animation.zip" "$1.zip" 732022 c88194b23dc79665725d6aad47851faf "$1.zip"
;;

Model_Camouflage)
id='Model_Camouflage'
name='机型伪装'
version='v114514'
versionCode='114514'
author='People11'
description='原理：通过Magisk修改prop达到机型伪装。'
time='2022年1月24日'
;;

com.fb.fluid)
id='com.fb.fluid'
name='流体手势导航'
version='2.0-beta11'
versionCode='178'
author='佚名'
description='将流体手势导航内置为系统应用'
time='2020年6月15日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 7562544 c70b5ca61f0093f01b2d1b86b8f26156 "$1.apk" 2.0-11 178
;;

com.omarea.gesture)
id='com.omarea.gesture'
name='Gesture(手势导航) '
version='1.6.4'
versionCode='104'
author='嘟嘟Ski'
description='将Gesture(手势导航) 1.6.4(104)内置为系统应用'
time='2021年5月17日'
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "$1.apk" 179024 f90dee479057ead98f57deac3fb12168 "$1.apk" 1.6.4 104
;;

emojiR)
id='emojiR'
name='Android11 emoji'
version='11 beta3'
versionCode='1'
author='酷安@mdog Telegram@mdogfortg'
description='Its new emoji for android 11 beta3，这是安卓11的新emoji'
time='2020年8月14日'
    [[ $Choice = 1 ]] && Download -file "Modules/emojiR.zip" "$1.zip" 9133455 daacac30d0c4870dbfc8fe796d24f15e "$1.zip"
;;

SELinux_OFF)
Show_Compatibility_Mode=0
id='SELinux_OFF'
name='关闭SELinux'
version='v1.3'
versionCode='3'
author='by：Han | 情非得已c'
description='在每次重启/开机时，自动关闭SELinux/宽容模式/Permissive，针对部分模块需要关闭SELinux才能正常开机，以及部分Xposed模块需要关闭才生效，除非你很清楚关闭SELinux后果，否则不推荐使用本模块'
time='2021年2月7日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

SELinux_ON)
Show_Compatibility_Mode=0
id='SELinux_ON'
name='开启SELinux'
version='v1.3'
versionCode='3'
author='by：Han | 情非得已c'
description='在每次重启/开机时，自动开启SELinux/严格模式/强制模式/Enforcing，针对部分官改ROM系统默认关闭SELinux'
time='2021年2月7日'
    [[ $Choice = 1 ]] && . ./Magisk_Module/$1.sh
;;

scene_swap_controller)
id='scene_swap_controller'
name='Scene的附加模块(二)'
version='3.2.3'
versionCode='3203'
author='嘟嘟Ski'
description='Scene的附加模块之二（ZRAM/SWAP控制器），在开机时根据配置调整虚拟内存'
time='2021年10月16日'
    [[ $Choice = 1 ]] && Download -cos "swap-controller-3.2.3.zip" "$1.zip" 27101 c69a48127f82b3e0a3266d10297bcd47 "$1.zip"
;;

scene_cgroup)
id='scene_cgroup'
name='Scene的附加模块(三)'
version='1.0.0'
versionCode='1'
author='嘟嘟Ski'
description='自动调节部分关键进程的cgroup(memory|cpu)，从资源分配策略上(理论)提高系统稳定性(流畅度方面)'
time='2020年12月13日'
    [[ $Choice = 1 ]] && Download -file "Modules/Scene/cgroup/scene_cgroup_1.zip" "$1.zip" 8896 c138428e8abe7bbd7c6f5748c353c659 "$1.zip"
;;

riru-core)
List='：
riru-core-v21.3(36).zip
'
id='riru-core'
name='Riru (Riru - Core)'
version='v26.1.4.r524.125daf3f89'
versionCode=524
author='RikkaApps'
description='提供一种将代码注入zygote进程的方法，所有以Riru开头的模块必刷模块【需要使用EdXposed模块的用户请使用25.4.4版本，不要更新】(此模块已停更，建议使用Zygisk)'
time='2022年3月20日'
if [[ $Riru_version -eq 1 ]]; then
    [[ $Choice = 1 ]] && Download -gh "RikkaApps/Riru/releases/download/v26.1.5/riru-v26.1.4.r524.125daf3f89-release.zip" "$1.zip" '' '' "$1.zip"
elif [[ $Riru_version -eq 2 ]]; then
    #riru-core-21.3
    [[ $Choice = 1 ]] && Download -file "Modules/Riru/riru-core-v21.3.zip" "$1-v21.3.zip" 541223 6c395f29a2cc50ae4f4efdaf87f78ca3 "$1-v21.3.zip"
elif [[ $Riru_version -eq 3 ]]; then
    #riru-core-25.4.4
    [[ $Choice = 1 ]] && Download -file "Modules/Riru/riru-v25.4.4-release.zip" "$1-25.4.4.zip" 235467 cd0f5ef48c3da69997f0633d8d3d27b0 "$1-25.4.4.zip"
fi
;;

riru-sui)
id='riru-sui'
name='Riru - Sui'
version='v12.6.1'
versionCode=274
author='RikkaApps'
description='现代超级用户接口的实现，与Shizuku的API设计相同。该模块需要Riru v25.0.0或以上版本。'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "RikkaApps/Sui/releases/download/v12.6.1/sui-riru-v12.6.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

zygisk-sui)
id='zygisk-sui'
name='Zygisk - Sui'
version='v12.6.1'
versionCode=274
author='RikkaApps'
description='现代超级用户接口的实现，与Shizuku的API设计相同。该模块需要Magisk v24.0或更高版本且开启Zygisk。'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "RikkaApps/Sui/releases/download/v12.6.1/sui-zygisk-v12.6.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

hidemyapplist)
id='hidemyapplist'
name='Enhance mode for HideMyApplist'
version='v1.0'
versionCode='35'
author='Nullptr'
description='Xposed模块「隐藏应用列表」的扩展，实现对文件检测的拦截。（此为Riru模块，Zygisk版请前往GitHub下载）'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -cos "Riru-HideMyApplist-V1.0.zip" "$1.zip" 1228748 603c3cce0bf71a35161700c11a701b79 "$1.zip"
;;

riru-module-xfingerprint-pay-wechat)
id='riru-module-xfingerprint-pay-wechat'
name='Riru - 指纹支付 - 微信'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让微信支持指纹支付 Fingerprint pay for WeChat.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/riru-module-xfingerprint-pay-wechat-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

riru-module-xfingerprint-pay-qq)
id='riru-module-xfingerprint-pay-qq'
name='Riru - 指纹支付 - QQ'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让QQ支持指纹支付 Fingerprint pay for QQ.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/riru-module-xfingerprint-pay-qq-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

riru-module-xfingerprint-pay-alipay)
id='riru-module-xfingerprint-pay-alipay'
name='Riru - 指纹支付 - 支付宝'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让支付宝支持指纹支付 Fingerprint pay for Alipay.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/riru-module-xfingerprint-pay-alipay-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

riru-module-xfingerprint-pay-taobao)
id='riru-module-xfingerprint-pay-taobao'
name='Riru - 指纹支付 - 淘宝'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让淘宝支持指纹支付 Fingerprint pay for Taobao.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/riru-module-xfingerprint-pay-taobao-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

riru-module-xfingerprint-pay-unionpay)
id='riru-module-xfingerprint-pay-unionpay'
name='Riru - 指纹支付 - 云闪付'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让云闪付支持指纹支付 Fingerprint pay for Taobao.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/riru-module-xfingerprint-pay-unionpay-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

zygisk-module-xfingerprint-pay-wechat)
id='zygisk-module-xfingerprint-pay-wechat'
name='Zygisk - 指纹支付 - 微信'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让微信支持指纹支付 Fingerprint pay for WeChat.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/zygisk-module-xfingerprint-pay-wechat-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

zygisk-module-xfingerprint-pay-qq)
id='zygisk-module-xfingerprint-pay-qq'
name='Zygisk - 指纹支付 - QQ'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让QQ支持指纹支付 Fingerprint pay for QQ.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/zygisk-module-xfingerprint-pay-qq-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

zygisk-module-xfingerprint-pay-alipay)
id='zygisk-module-xfingerprint-pay-alipay'
name='Zygisk - 指纹支付 - 支付宝'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让支付宝支持指纹支付 Fingerprint pay for Alipay.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/zygisk-module-xfingerprint-pay-alipay-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

zygisk-module-xfingerprint-pay-taobao)
id='zygisk-module-xfingerprint-pay-taobao'
name='Zygisk - 指纹支付 - 淘宝'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让淘宝支持指纹支付 Fingerprint pay for Taobao.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/zygisk-module-xfingerprint-pay-taobao-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

zygisk-module-xfingerprint-pay-unionpay)
id='zygisk-module-xfingerprint-pay-unionpay'
name='Zygisk - 指纹支付 - 云闪付'
version='v4.3.1'
versionCode='3'
author='Jason Eric'
description='让云闪付支持指纹支付 Fingerprint pay for Taobao.'
time='2022年3月20日'
    [[ $Choice = 1 ]] && Download -gh "eritpchy/FingerprintPay/releases/download/4.3.1-ci/zygisk-module-xfingerprint-pay-unionpay-v4.3.1-release.zip" "$1.zip" '' '' "$1.zip"
;;

coloros-magisk)
id='coloros-magisk'
name='Magisk ColorOS'
version='1.0'
versionCode='1'
author='wuxianlin'
description='Magisk Module for ColorOS，用途：启用Magisk Hide时修复指纹，删除开启开发人员选项警告通知'
time='2021年4月5日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/ColorOS-Magisk.zip" "$1.zip" 4301 539ab990564c6f36efa0320a28dc9ce6 "$1.zip"
;;

riru_clipboard_whitelist)
id='riru_clipboard_whitelist'
name='Riru - Clipboard Whitelist'
version='v10'
versionCode=10
author='Kr328'
description='允许应用在Android 10上在后台访问剪贴板。请关闭兼容模式安装！'
time='2021年5月17日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/riru-clipboard-whitelist-10.zip" "$1.zip" 41790 a9bde48856540140bd4568ef682fee0a "$1.zip"
;;

taichi)
id='taichi'
name='Taichi'
version='v7.0.5'
versionCode='705'
author='weishu'
description='Use Xposed modules with Taichi in Magisk.（切换到太极 · 阳）'
expversion='含光·8.0.3.06211300'
time='2021年7月22日'
    [[ $Choice = 1 ]] && Download -file "Modules/TaiChi/magisk-taichi-v7.0.5.zip" "$1.zip" 413865 4a417ff52b4b3a54c7a814d2beaf3fd3 "$1.zip"
    [[ $exp = 1 ]] && Download -file "APK/TaiChi/me.weishu.exp_803.apk" "me.weishu.exp.apk" 8725516 2ce6f529844b030e9df8198680a3185c "me.weishu.exp.apk"
;;

mm)
id='mm'
name='MM管理器(叶子修改版)v3.0'
version='2020.2.26'
versionCode='202002260'
author='『酷安:@永恒丶叶子』'
description='使用方法：第三方REC→高级→在终端中运行 "/data/media/mm"、"/sdcard/mm"、"*/mm"、增加切换 magisk核心功能、增加备份还原模块!增加一键操作！'
time='2020年6月15日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 7374 f898f49917c231fae144e1ba60a58a14 "$1.zip"
;;

busybox-ndk)
id='busybox-ndk'
name='Busybox for Android NDK'
version='1.33.1'
versionCode='13310'
author='osm0sis @ xda-developers'
description='Static busybox binary for all Android architectures built with the NDK（busybox可执行的二进制命令，适用于使用NDK构建的所有Android手机）'
time='2021年3月31日'
    [[ $Choice = 1 ]] && Download -file "Modules/Busybox/busybox-ndk-master.zip" "$1.zip" 9829609 adb80381d38b40125ef77638bfc79ab3 "$1.zip"
;;

kfmark)
id='kfmark'
name='快否激活器'
version='v1.3'
versionCode='6'
author='酷安@汝南京'
description="用途：每次重启手机自动激活快否，由cn.endureblaze.activatebenchaf & 快否激活器v$6提供服务支持"
time='2020年6月18日'
    [[ $Choice = 1 ]] && Download -file "Other/KFMark/kfmark.txt" "$id.txt" 867016 c968d8cebc8e3b84870e8e3248854be5 "$id.txt"
;;

Disable-HWoverlays)
id='Disable-HWoverlays'
name='停用HW叠加层模块'
version='v2'
versionCode='3'
author='是陉湮吖'
description='强制开发者选项里停用HW叠加层，始终使用GPU进行屏幕合成'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 4604 0c80645bedc55ef88012bb7a7411c4a1 "$1.zip"
;;

MacRandomization)
id='MacRandomization'
name='Mac地址随机化模块'
version='v1'
versionCode='1'
author='Santiago'
description='Mac地址随机化模块，连接公共WIFI更安全。安装后去开发者设置找到选项打开设置即可。'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 8138 f988087ed2668cf6c8888774f6ceeaf8 "$1.zip"
;;

YuanSheng_unlock)
id='YuanSheng_unlock'
name='原神解除锁帧'
version='v2.2'
versionCode='22'
author='依然的爱'
description='解除原神的锁帧，设置中的帧数选项不会改变，跑多少帧取决于是否有那个性能，建议超频后使用，通过开关可控制开启状态。'
time='2022年1月27日'
    [[ $Choice = 1 ]] && Download -cos "ysunlock_2.2.zip" "$1.zip" 5476 dd0a9c4a9543ff3f5bb60cda9d4a68dd "$1.zip"
;;

20220124946205)
id='20220124946205'
name='原神字体 - (汉仪文黑85W)'
version='1.0'
versionCode='3'
author='酷安 XIII12238'
description='将系统字体替换为原神同款字体(原神游戏目录提取，仅单字重)'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -url "https://u.qqcn.xyz/eTxDZE" "$1.zip" 68938472 13ef828b93ed4830209b807ceb276c98 "$1.zip"
;;

MISANSbyFUNBOAT)
id='MISANSbyFUNBOAT'
name='MI SANS模块byFUNBOAT（多字重）'
version='v4.0'
versionCode='4'
author='FUNBOAT'
description='MIUI13的Mi Sans字体，九字重'
time='2022年1月24日'
    [[ $Choice = 1 ]] && Download -url "https://u.qqcn.xyz/rjcnED" "$1.zip" 48338760 22e5ccfc52da03f94ce8102030476a5c "$1.zip"
;;

ziyouzhiyi)
id='ziyouzhiyi'
name='自由之翼美化缩小版字体'
version='v1'
versionCode='1'
author='@酷安by:巴啦啦魔仙女王'
description='字体模块'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -file "Modules/ziyouzhiyi.zip" "$1.zip" 5730560 6b6b310f616b9877c70af399bf86b3b4 "$1.zip"
;;

blacksharkfront)
id='blacksharkfront'
version='v3.0'
name='黑鲨字体'
versionCode='2'
author='卐卐卐(1085373193)'
description='黑鲨字体1.0'
time='2020年10月3日'
    [[ $Choice = 1 ]] && Download -file "Modules/blacksharkfront.zip" "$1.zip" 11818088 92214d4a5a5b84c6ea7e3438294f5d10 "$1.zip"
;;

201806112158)
id='201806112158'
name='金刚黑体DFKingGothicJP（2018年全网首发移植日系苹方），微信公众号：宁静之雨'
version='2.0'
versionCode='2'
author='宁静之雨'
description='不修改系统文件实现多字重字体替换，勾选模块后重启生效，如果手机系统自带字体切换功能请务必切回系统默认字体。'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -cos "201806112158.zip" "$1.zip" 60131628 91aca7dbd08a18ede807e9caaf1d65f1 "$1.zip"
;;

201806031309)
id='201806031309'
name='iOS12苹方中英文+emoji移植'
version='13.0d1e3'
versionCode='1'
author='宁静之雨'
description='不修改系统文件实现多字重字体替换，勾选模块后重启生效，如果手机系统自带字体切换功能请务必切回系统默认字体，更多字体请关注微信公众号【宁静之雨】和小号【小梨科技】获取。注意，勾选多个字体模块会相互干扰，某些所谓开启系统隐藏特性的模块也会修改字体配置文件，同样会干扰我的字体显示效果。我的所有分享都完全免费，请勿轻信任何付费专享服务，如果喜欢我分享的字体，记得每天帮我点一下文章中间和底部的的广告，免费创作不易，还请多多支持。'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -cos "201806031309.zip" "$1.zip" 83743185 e90203bea5ad241fa3b8922a1fe2d6bf "$1.zip"
;;

keepqdark)
id='keepqdark'
name='Android10强制黑暗模式'
version='v1'
versionCode='1'
author='robgiering'
description='在Android Q上重新启动后强制黑暗(ForceDark)模式'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 6574 bcf9188bc1b03729765def5c8ece039b "$1.zip"
;;

curl)
id=curl
name='curl for Android NDK'
version='v7.74.0'
versionCode=4
author='by：Han | 情非得已c & Github@Rui Ying'
description='使用Android NDK构建，适用于arm arm64 x86 x86_64架构的安卓手机，由于x86和x86_64编译上的错误不知道解决未能编译出curl，所以特此引用了Github@Rui Ying的二进制curl，https://github.com/robertying/openssl-curl-android，特别鸣谢Android NDK & libssh2 & nghttp2 & openssl & curl网站'
time='2021年2月6日'
    [[ $Choice = 1 ]] && Download -file "Modules/Curl/curl.zip" "$1.zip" 7907878 2588203be6cdfe0d03a05d5b0ec0e9d1 "$1.zip"
;;

mi.an)
id='mi.an'
name='给米安配个主题'
version='v1'
versionCode='1'
author='@酷安by:巴啦啦魔仙女王'
description='<请使用白色默认主题蟹蟹>辣鸡米安，毁我青春，颓我精神，耗我钱财，坑我历史，废我智商😡'
time='2020年6月11日'
    [[ $Choice = 1 ]] && Download -coding "21051601/modules/$1.zip" "$1.zip" 3643715 4dc82ced9f17623bc287f69b2a5e42e7 "$1.zip"
;;

org.meowcat.edxposed.manager)
    apk='org.meowcat.edxposed.manager'
    name='EdXposed Manager'
    version='4.5.7'
    versionCode='45700'
    author='MlgmXyysd'
    description='EDXposed框架模块管理器'
    time='2021年2月3日'
    [[ $Choice = 1 ]] && Download -file "APK/EdXposed_Manager/org.meowcat.edxposed.manager.45700.apk" "$1.apk" 5181074 d46a9905d4561343b9906c8bdd21577e "$1.apk"
;;

EdXposed)
List='
EdXposed_Manager-4.5.7 (45700).apk
Alpha-EdXposed-YAHFA-v0.4.6.4(4563).zip
Alpha-EdXposed-SandHook-v0.4.6.4(4563).zip
'
[[ $Old_YAHFA = 1 ]] && Download -file "Modules/EdXposed/riru_edxposed-4563.zip" "riru_edxposed-4563.zip" 2861079 ebb0129db6b2080246e11a4607cad926 "riru_edxposed-4563.zip"
[[ $Old_SandHook = 1 ]] && Download -file "Modules/EdXposed/riru_edxposed_sandhook-4563.zip" "riru_edxposed_sandhook-4563.zip" 3092528 6791a626ef893fb2a15047eb35d88620 "riru_edxposed_sandhook-4563.zip"
;;

exit_sideload)
    Download_File="$PeiZhi_File/$1.zip"
;;

Card_Brush_Bag)
    Download_File="$PeiZhi_File/Card_Brush_Bag/$3.zip"
;;

Redmi-K30-5G-recovery)
List="
Redmi-K30-5G-3.4.1B-0313-wzsx150.img
Redmi-K30-5G-3.4.2B-0623-wzsx150.img"
    [[ $Version = 11 ]] && Download -file "Other/TWRP/Redmi-K30-5G-3.4.2B-0623-wzsx150.img" "Redmi-K30-5G-11-3.4.1B-0313-wzsx150.img" 134217728 941a7ff1f4de4745b9bdd68bf895bd9f "Redmi-K30-5G-11"
    [[ $Version = 12 ]] && Download -file "Other/TWRP/Redmi-K30-5G-3.4.1B-0313-wzsx150.img" "Redmi-K30-5G-12-3.4.2B-0623-wzsx150.img" 134217728 1a734c45512fbbecd79bb861e74968ca "Redmi-K30-5G-12"
;;

MIUI)
    MIUI -file "Modules/MIUI1.4.7.zip" MIUI1.4.7.zip 6504587 ba44181b58d10929b7ae1fc3293dd659 MIUI
;;

Charging_Sound_Effect)
    versionCode=1
    [[ $Choice = 1 ]] && Download -file "Modules/Charging_Sound_Effect.zip" "$1.zip" 6297837 bb400cbb13333d3d68dc73dc4f6d3dee "$1.zip"
;;

BootAnimation_Screen1)
    BootAnimation_Screen1 -file "Modules/BootAnimation_Screen1.zip" "$1.zip" 10697488 8a69c474a8287108a1a79b01146349a7 "$1.zip" 18
;;

Zipsigner)
    Download -file "Other/Zipsigner-1.zip" "$1-1.zip" 5206525 8b75d8340b336f118d3c15db46b53cbb "$1-"
;;

payload_dumper-win64)
    [[ $Choice = 1 ]] && Download -file "Other/payload_dumper-win64.zip" "$1.zip" 6755703 20029a0740cba709789ad074949bf5fa "$1.zip"
;;

# 原版Xposed下载链接由「抱抱猫People11」提供
Xposed_rovo89)
    if [[ $2 = -install ]]; then
        v=89
        SDK2=$SDK/$Type
            case $SDK in
            21)
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EW92GjwR9VdCg4lZ8MYGoDsBxVoWuokyBnPSphIGGrxpyw" "xposed-v$v-sdk$SDK-$Type.zip" 3480379 614d01a116809abf09cadfd7a1abc8f2 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ET_RDRPDzRtAuN8s--ln1YUBm0UDd_U-faIsAn4TCKc33g" "xposed-v$v-sdk$SDK-$Type.zip" 5853627 0a460e9f52ddb3e9ba1f389badd7bd6e "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EWUH_XcZKc1FooIbblVsyP8BR5csKfmVZLSxaKvBVuZ0DQ" "xposed-v$v-sdk$SDK-$Type.zip" 4012550 be4b512111cc3efc45d8cb85e07173c2 "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            22)
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EQgJA51IbHVHo9tSMw-EoMoBTzYKRVtJfsw_sisP9Ryeug" "xposed-v$v-sdk$SDK-$Type.zip" 3561425 80fff79c7ad85141c520e5fd0c644ec7 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EdoeD6dwr-dJm_vhWUnNgVgBTU9jHnvgROnX4iolvj-xkQ" "xposed-v$v-sdk$SDK-$Type.zip" 5969129 4d3bac2357dd004afff54cc48cb18fff "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EU5GfvdTQqpAt4tNVGG5bCwBVx3dRC9gcuF-LcmeM4KyMQ" "xposed-v$v-sdk$SDK-$Type.zip" 4094816 050a3d6cf4468556f2f87c9526b9e30e "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            23)
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ER9PDHG2AkFDjnWd6Cgk9vYBCyFoDW9VcmIc_jr_j6gaQQ" "xposed-v$v-sdk$SDK-$Type.zip" 4874299 9361a270336427455c7e09af5f9c6969 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EdAJT8XuputCpQoyP1wjNnwBq2KyiBzITEyWZPaQBppPrg" "xposed-v$v-sdk$SDK-$Type.zip" 8206844 bdaee35f5c9239d399d75ca25e89db7c "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EaZ4cRypZvlHiIs9lu_pHEsBNYTGx8mx40e5yQVQd0_9cg" "xposed-v$v-sdk$SDK-$Type.zip" 5715178 973c8a8725d7a0bcbd718ce1f8cfa31c "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            24)
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EUHDRf-2APlBgT_1xnGpp0wBZwAt2zrg7l3PpHVqbWrz4w" "xposed-v$v-sdk$SDK-$Type.zip" 4389429 f6fcabd71339d549699e62524f7d6c1f "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EbrFi6GoDDNEtC4T8T7O8BABAUprzcn7Qm1kQaG7nOeNxw" "xposed-v$v-sdk$SDK-$Type.zip" 8238874 1e867e70bae5e6b38cdf937b8e79df37 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=Ebm49rWATmNJpje-yjqFt9IB3OcmASaunJN7o7fhU2hHQg" "xposed-v$v-sdk$SDK-$Type.zip" 5191178 44696b7092a69a263160365a6c058b41 "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            25)
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=Ec15fRZiiwhLqyUHUXNeJUgB4PZ8cr4fo-7kFhalF-SyUw" "xposed-v$v-sdk$SDK-$Type.zip" 4405400 778dd744f0dfa6bd7608ae17281c0faa "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=Ecq8prz0mntCgJCTXZgZLRkBtSQSeKlFyfJZrSwHwfoxYg" "xposed-v$v-sdk$SDK-$Type.zip" 8272548 3039d5169746025a075a3bf297af2f86 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EW-c4W023fhLqjal6FLI6YoBBZYrhOaaQ6OsGrkwNIGGPw" "xposed-v$v-sdk$SDK-$Type.zip" 5206379 544f993de6ec2be20583a23116c342de "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            26)
                v=90
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EQD6r0ixGTFDik1eQzPHascBUf6Atj7pHIG97yf4foyVeA" "xposed-v$v-sdk$SDK-$Type.zip" 4277017 405ee87d04741bbfbbd0a02ffb938428 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EYcmRaQBg7FMt8ItRr5ZxZkBFfiEAd-Q0RAAKCoXdhPdwA" "xposed-v$v-sdk$SDK-$Type.zip" 8068001 a18f89a0470b126ac5dfe7e0ed2d5d0c "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EXE9CUn1EfZKooA0I3_wPswBpRKIeyTM7_lhhYZhTJ9RYA" "xposed-v$v-sdk$SDK-$Type.zip" 4770182 e68569d68dc6b9badeb2f41cd87bbe87 "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            27)
                v=90
                if [[ $Type = arm ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ETMtFMi7cGNNjeRSnx8BVVQBkyL6ptrEVSXgFwOyhzOvqQ" "xposed-v$v-sdk$SDK-$Type.zip" 4229826 fa6b26bec7d95b41716ebdc746e4d576 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = arm64 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EZGrPqkwwA5LmlTTkqaNIm0Bzm9exmdhxMF2epS64qa-IA" "xposed-v$v-sdk$SDK-$Type.zip" 8038926 1085eb845483523a1b5a30547f24fc46 "xposed-v$v-sdk$SDK-$Type.zip"
                elif [[ $Type = x86 ]]; then
                    Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ESifg0DT9upDloiFaxVCu5MB2Di61sUI-2F58OPNNWDKHw" "xposed-v$v-sdk$SDK-$Type.zip" 4963220 69705e2d5c6e88815d7f984f69d03200 "xposed-v$v-sdk$SDK-$Type.zip"
                fi
            ;;
            *)
                abort "！原版Xposed不支持您的设备SDK：$SDK"
            esac

    elif [[ $2 = -uninstall ]]; then
        SDK2=uninstall
        case $SDK in
            21 | 22 | 23 | 24 | 25 | 26 | 27) :;;
            *) abort "！原版Xposed不支持您的设备SDK：$SDK";;
        esac
            if [[ $Type = arm ]]; then
                Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EUtpaCJqGpdMiiZTDhflfysBFjgcZTcNpgAXNRqImPlx_g" "xposed-uninstaller-20180117-$Type.zip" 311568 d4d2fa1d22779d70d3be10a0b920aaea "xposed-uninstaller-20180117-$Type.zip"
            elif [[ $Type = arm64 ]]; then
                Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EXRfBhCN9Z9EvzN2SvA5Qe4BFgVMLrl1sfNs1n6sQ-Jhcw" "xposed-uninstaller-20180117-$Type.zip" 311568 d4d2fa1d22779d70d3be10a0b920aaea "xposed-uninstaller-20180117-$Type.zip"
            elif [[ $Type = x86 ]]; then
                Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EQTAqhlmEPBLl-L_g1z0Uh4BnsKtLn91W_KLZEYmoXvSfw" "xposed-uninstaller-20180117-$Type.zip" 455283 87846dd6c7fe48eabbe2763c4dd6cb86 "xposed-uninstaller-20180117-$Type.zip"
            fi
        fi
;;

# Big thank to People-11
# 特别感谢「抱抱猫People11」
# 以下开机动画大部分由「抱抱猫People11」提供
BootAnimation_Screen2)
    if [[ $2 = QQCaiGou ]]; then
        Download -cos "bootanimation.zip" "$2.zip" 92787316 1742b12672bd0d994559c5cfd1beb052 "$2.zip"
    elif [[ $2 = Harmony_OS ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ETZ_mSS645JNibHse7PAgpgB8_fdNh_HhImLxUq8sHZ4Sw" "$2.zip" 96187051 2e418d056841d638d3b522bde3dd1f12 "$2.zip"
    elif [[ $2 = DotOS ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EeKv9KInnGVMmR9G1CqEL3oBqpNb_n4pa_s0gC8XhWVSDw" "$2.zip" 8557408 1cad1b8d9d84ad1064a6aebad0fb3c22 "$2.zip"
    elif [[ $2 = Google_Dark ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EdnTOQRKCRtKve9jpGgCcyMBcpXKwTGX4TyIJwEgHxP0FQ" "$2.zip" 2415413 24ec7a08c55fdf908995ea9c99bfd15c "$2.zip"
    elif [[ $2 = Google_White ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EVPIefmtUlJCsjwV1yNrrdsBaA7wlrEpr0HF-uotM4VXkg" "$2.zip" 2431275 8582603d8b8e5b3c184416ca384e3983 "$2.zip"
    elif [[ $2 = 2233_Pink ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ERBovEfJ8uVFh4NxnmX-16gBg-4lt7ZiOWeOElg6vhkLqA" "$2.zip" 19659178 3847a30ee173b3be44548c8bfbac404b "$2.zip"
    elif [[ $2 = 2233_Blue ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EWXWuSb9q75ApS7RuNrHaGgB2kPFENTME3uRFYha2mmgDA" "$2.zip" 12037019 b8a8f960eec94753a93e21a71acc64d1 "$2.zip"
    elif [[ $2 = MIUI11 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EdIIfkyu7qdDqqUChA_GBaoBn9PgPHJTst-OdQcOltEK4Q" "$2.zip" 33852072 63059bb9857720d83f418ce1ec062486 "$2.zip"
    elif [[ $2 = Scary_EP ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EfeJ8deMD7lJm0j2T9K_NOEBV5a5Tvh0PtjeyukCoSVDAQ" "$2.zip" 12246016 cc47ea9fc3e5984a23cae71b9b02f9fb "$2.zip"
    elif [[ $2 = Scary_MI ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EUpw3jS41FdIvP7no0HZyJoBbvh7S9_4I7iXJ9qQfftSHA" "$2.zip" 14386690 e49820c65d6dae3158a7263f6e239022 "$2.zip"
    elif [[ $2 = Scary_OnePlus ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ES3PJTqaLTVOrhzxYHQpAAkBUxmnkJ6sBQXlX2GQgdyNcg" "$2.zip" 9387253 e9888de8d5458b1265e2b912abc02955 "$2.zip"
    elif [[ $2 = OnePlus_2077 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EQNU93IWeSFGqB85nZJK3usB0GvDxJ_43DfnbWU-Mh-ahA" "$2.zip" 70335956 a67184db7350916de41e62e028ec01a3 "$2.zip"
    elif [[ $2 = ROG2 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ET2f15OYyjlKh5vox6dZLPoBtFd99608-pce2llBZAocog" "$2.zip" 12758779 cdd773fd2148844948417dc985893016 "$2.zip"
    elif [[ $2 = LittleFox ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ETnTD_--rQZDnH0AH3n6_LcB_8SC6vmySWQcq7xlg39jSg" "$2.zip" 2138454 607fa72c3440fd6ba7a7071133671dc8 "$2.zip"
    elif [[ $2 = iOS ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=Ea3b2mZTuKRNhtvfZAdm-RcB3c67nHh73T87AlrVgpOlgA" "$2.zip" 20501 f28958c51c65dc9718673cb29c902dd0 "$2.zip"
    elif [[ $2 = Horizon_Line_1920 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=Eb41aqE9UvhPnREQHzOIS_EBBVzdAuQUOUXX9iLG58e7aQ" "$2.zip" 116540719 fdb2aa8511ac17eb88cc4f76d2451dff "$2.zip"
    elif [[ $2 = Horizon_Line_2400 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ESFiD5Cfo0xOiYnn0BgPEIEBRMXFWXc4BfYy6Ru-l4Pc8w" "$2.zip" 116540719 99705fbbae0a2d017c3913151f3417a6 "$2.zip"
    elif [[ $2 = KOBE_1920 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ER1m90LJulhDtF4AILQlAXQBYrf91lGYdqLvyqp80dLjRQ" "$2.zip" 108363348 347cb7b4d8e88595791cf08a00172bc5 "$2.zip"
    elif [[ $2 = KOBE_2400 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EdrhNwgd99JNtwmZaM_IFbABEzXKdmZ0yUEK2k-IdxeUxg" "$2.zip" 108363348 72f3226747ec099a3934a6a29eea096a "$2.zip"
    elif [[ $2 = Your_Name_1920 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EVCxpFGB8ElFqHBOd0BWVKgBJLt4Hd4cSwJ_6TkZoAzQAw" "$2.zip" 116114234 87a17012955b38213a18213de2b050db "$2.zip"
    elif [[ $2 = Your_Name_2400 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ET3FRTn4DWJHiY86VB4W7yIB9BUurjU3cX9MsvzPe2L10A" "$2.zip" 116114234 7bf9e3b9c1cefb154e45c05f7c2eb9fe "$2.zip"
    elif [[ $2 = Kang_In_Kyung_1920 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=EbwH4KMS5hVMnzAUYnfrQVQBFegkPkdKjbHNDUHLih63ig" "$2.zip" 345712297 7649c8b3d1feb855fb7897c4c3fd93f2 "$2.zip"
    elif [[ $2 = Kang_In_Kyung_2400 ]]; then
        Download -url "https://bincat-my.sharepoint.com/personal/people11_bincat_onmicrosoft_com/_layouts/52/download.aspx?share=ERZxClKITFFPpP82dxflXFQBpebFo4vuQlMRuSWqwn_VAw" "$2.zip" 345786085 704b88462902bc774c8791bcd6c49257 "$2.zip"
    fi
;;

EdXposed_Manager_Repo)
    Download -cos "repo_cache.db" "repo_cache.db" 5951488 61e3c689b90ba063247519ac8583b3c8 "repo_cache.db"
;;

Installation_lion)
    version=3.7.5-miui
    versionCode=42
    [[ $Choice = 1 ]] && Download -coding "21051601/apks/$1.apk" "Installation_lion.apk" 1869340 865a0a9a40d289a36e9a8ee17bb6e774 "Installation_lion.apk"
;;

com.miui.miwallpaper)
    version='ALPHA-2.6.205-03082129-ogl'
    versionCode=206000205
    [[ $Choice = 1 ]] && Download -cos "com.miui.miwallpaper.apk" "$1.apk" 56406991 124a1dd155294d05827264f253ce860f "$1.apk"
;;

com.miui.miwallpaper.snowmountain)
    version='ALPHA-2.6.151-12171721-ogl'
    versionCode=206000151
    [[ $Choice = 1 ]] && Download -cos "com.miui.miwallpaper.snowmountain.apk" "$1.apk" 89837236 f5c971e0e6735ab653b4dd8f0bbbc6ac "$1.apk"
;;

Install_Applet)
    name=Applet
    versionCode=81
    Install_Applet2 -cos "start/Applet-81.zip" "$name.zip" 8341732 d0b98b504265f9766cd07c0762bfbf6a "$name" $versionCode
;;

binwalk)
    version=2.3.1
    Download -file "Other/binwalk.zip" "$1.zip" 39656863 023e3f4d48ecf496a67d283c071d3129 "$1.zip"
;;

Install_busybox)
    name="busybox-$Type"
    [[ $Type = arm ]] && Start_Install -cos "start/$name-selinux" "$name-selinux" 1460236 172294eda113c62a2eecd35472850ee0 "$name" 1.34.1 13412
    [[ $Type = arm64 ]] && Start_Install -cos "start/$name-selinux" "$name-selinux" 2087000 d9ca92e7e180d203be629f463ffe8248 "$name" 1.34.1 13412
    [[ $Type = x86 ]] && Start_Install -cos "start/$name-selinux" "$name-selinux" 2111256 802bd3cc68e2c9e7562e6bef3800d31b "$name" 1.34.1 13412
    [[ $Type = x86_64 ]] && Start_Install -cos "start/$name-selinux" "$name-selinux" 2238792 61ab268e9a41ef06809c17dca82d4052 "$name" 1.34.1 13412
    [[ $Type = mips ]] && Start_Install -cos "start/$name" "$name" 1918764 33a9ee5c1192b4d65bb0b00f7e75420e "$name" 1.34.1 13412
    [[ $Type = mips64 ]] && Start_Install -cos "start/$name" "$name" 1951784 3ecdd5c91ed81d245a9637924f5f46c6 "$name" 1.34.1 13412
;;

*)
    abort "！未找到$1服务"
;;
esac
true
