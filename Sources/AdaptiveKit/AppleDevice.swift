//
//  File.swift
//  
//
//  Created by paige on 2022/04/16.
//

import SwiftUI

public enum AppleDevice{
    case iPhone13
    case iPhone13mini
    case iPhone13ProMax
    case iPhone13Pro
    case iPhone12
    case iPhone12mini
    case iPhone12ProMax
    case iPhone12Pro
    case iPhoneSE2ndgen
    case iPhone11ProMax
    case iPhone11Pro
    case iPhone11
    case iPhoneXR
    case iPhoneXSMax
    case iPhoneXS
    case iPhoneX
    case iPhone8Plus
    case iPhone8
    case iPhone7Plus
    case iPhone7
    case iPhoneSE1stgen
    case iPhone6sPlus
    case iPhone6s
    case iPhone6Plus
    case iPhone6
    case iPhone5C
    case iPhone5S
    case iPhone5
    case iPhone4S
    case iPhone4
    case iPhone3GS
    case iPhone3G
    case iPhone1stgen
    case iPadMini6thgen
    case iPad9thgen
    case iPadPro5thgen12_9
    case iPadPro5thgen11
    case iPadAir4thgen
    case iPad8thgen
    case iPadPro4thgen12_9
    case iPadPro4thgen11
    case iPad7thgen
    case iPadMini5thgen
    case iPadAir3rdgen
    case iPadPro3rdgen12_9
    case iPadPro3rdgen11
    case iPad6thgen
    case iPadPro2ndgen12_9
    case iPadPro2ndgen10_5
    case iPad5thgen
    case iPadPro1stgen9_7
    case iPadPro1stgen12_9
    case iPadmini4
    case iPadAir2
    case iPadmini3
    case iPadmini2
    case iPadAir
    case iPad4thgen
    case iPadmini
    case iPad3rdgen
    case iPad2
    case iPad1stgen
    case iPodtouch7thgen
    case iPodtouch6thgen
    case iPodtouch5thgen
    case iPodtouch4thgen
    case iPodtouch3rdgen
    case iPodtouch2ndgen
    case iPodtouch1stgen
    
    
    var logicalWidth: CGFloat {
        switch self {
        case .iPhone13: return 390
        case .iPhone13mini: return 375
        case .iPhone13ProMax: return 428
        case .iPhone13Pro: return 390
        case .iPhone12: return 390
        case .iPhone12mini: return 375
        case .iPhone12ProMax: return 428
        case .iPhone12Pro: return 390
        case .iPhoneSE2ndgen: return 375
        case .iPhone11ProMax: return 414
        case .iPhone11Pro: return 375
        case .iPhone11: return 414
        case .iPhoneXR: return 414
        case .iPhoneXSMax: return 414
        case .iPhoneXS: return 375
        case .iPhoneX: return 375
        case .iPhone8Plus: return 414
        case .iPhone8: return 375
        case .iPhone7Plus: return 476
        case .iPhone7: return 375
        case .iPhoneSE1stgen: return 320
        case .iPhone6sPlus: return 476
        case .iPhone6s: return 375
        case .iPhone6Plus: return 476
        case .iPhone6: return 375
        case .iPhone5C: return 320
        case .iPhone5S: return 320
        case .iPhone5: return 320
        case .iPhone4S: return 320
        case .iPhone4: return 320
        case .iPhone3GS: return 320
        case .iPhone3G: return 320
        case .iPhone1stgen: return 320
        case .iPadMini6thgen: return 744
        case .iPad9thgen: return 810
        case .iPadPro5thgen12_9: return 1024
        case .iPadPro5thgen11: return 834
        case .iPadAir4thgen: return 820
        case .iPad8thgen: return 810
        case .iPadPro4thgen12_9: return 1024
        case .iPadPro4thgen11: return 834
        case .iPad7thgen: return 810
        case .iPadMini5thgen: return 768
        case .iPadAir3rdgen: return 834
        case .iPadPro3rdgen12_9: return 1024
        case .iPadPro3rdgen11: return 834
        case .iPad6thgen: return 768
        case .iPadPro2ndgen12_9: return 1024
        case .iPadPro2ndgen10_5: return 834
        case .iPad5thgen: return 768
        case .iPadPro1stgen9_7: return 768
        case .iPadPro1stgen12_9: return 1024
        case .iPadmini4: return 768
        case .iPadAir2: return 768
        case .iPadmini3: return 768
        case .iPadmini2: return 768
        case .iPadAir: return 768
        case .iPad4thgen: return 768
        case .iPadmini: return 768
        case .iPad3rdgen: return 768
        case .iPad2: return 768
        case .iPad1stgen: return 768
        case .iPodtouch7thgen: return 320
        case .iPodtouch6thgen: return 320
        case .iPodtouch5thgen: return 320
        case .iPodtouch4thgen: return 320
        case .iPodtouch3rdgen: return 320
        case .iPodtouch2ndgen: return 320
        case .iPodtouch1stgen: return 320
        }
    }
    
    var logicalHeight: CGFloat {
        switch self {
        case .iPhone13: return 844
        case .iPhone13mini: return 812
        case .iPhone13ProMax: return 926
        case .iPhone13Pro: return 844
        case .iPhone12: return 844
        case .iPhone12mini: return 812
        case .iPhone12ProMax: return 926
        case .iPhone12Pro: return 844
        case .iPhoneSE2ndgen: return 667
        case .iPhone11ProMax: return 896
        case .iPhone11Pro: return 812
        case .iPhone11: return 896
        case .iPhoneXR: return 896
        case .iPhoneXSMax: return 896
        case .iPhoneXS: return 812
        case .iPhoneX: return 812
        case .iPhone8Plus: return 736
        case .iPhone8: return 667
        case .iPhone7Plus: return 847
        case .iPhone7: return 667
        case .iPhoneSE1stgen: return 568
        case .iPhone6sPlus: return 847
        case .iPhone6s: return 667
        case .iPhone6Plus: return 847
        case .iPhone6: return 667
        case .iPhone5C: return 568
        case .iPhone5S: return 568
        case .iPhone5: return 568
        case .iPhone4S: return 480
        case .iPhone4: return 480
        case .iPhone3GS: return 480
        case .iPhone3G: return 480
        case .iPhone1stgen: return 480
        case .iPadMini6thgen: return 1133
        case .iPad9thgen: return 1080
        case .iPadPro5thgen12_9: return 1366
        case .iPadPro5thgen11: return 1194
        case .iPadAir4thgen: return 1180
        case .iPad8thgen: return 1080
        case .iPadPro4thgen12_9: return 1366
        case .iPadPro4thgen11: return 1194
        case .iPad7thgen: return 1080
        case .iPadMini5thgen: return 1024
        case .iPadAir3rdgen: return 1112
        case .iPadPro3rdgen12_9: return 1366
        case .iPadPro3rdgen11: return 1194
        case .iPad6thgen: return 1024
        case .iPadPro2ndgen12_9: return 1366
        case .iPadPro2ndgen10_5: return 1112
        case .iPad5thgen: return 1024
        case .iPadPro1stgen9_7: return 1024
        case .iPadPro1stgen12_9: return 1366
        case .iPadmini4: return 1024
        case .iPadAir2: return 1024
        case .iPadmini3: return 1024
        case .iPadmini2: return 1024
        case .iPadAir: return 1024
        case .iPad4thgen: return 1024
        case .iPadmini: return 1024
        case .iPad3rdgen: return 1024
        case .iPad2: return 1024
        case .iPad1stgen: return 1024
        case .iPodtouch7thgen: return 568
        case .iPodtouch6thgen: return 568
        case .iPodtouch5thgen: return 568
        case .iPodtouch4thgen: return 480
        case .iPodtouch3rdgen: return 480
        case .iPodtouch2ndgen: return 480
        case .iPodtouch1stgen: return 480
            
        }
    }
    
    var physicalWidth: CGFloat {
        switch self {
        case .iPhone13: return 1170
        case .iPhone13mini: return 1080
        case .iPhone13ProMax: return 1284
        case .iPhone13Pro: return 1170
        case .iPhone12: return 1170
        case .iPhone12mini: return 1080
        case .iPhone12ProMax: return 1284
        case .iPhone12Pro: return 1170
        case .iPhoneSE2ndgen: return 750
        case .iPhone11ProMax: return 1242
        case .iPhone11Pro: return 1125
        case .iPhone11: return 828
        case .iPhoneXR: return 828
        case .iPhoneXSMax: return 1242
        case .iPhoneXS: return 1125
        case .iPhoneX: return 1125
        case .iPhone8Plus: return 1080
        case .iPhone8: return 750
        case .iPhone7Plus: return 1242
        case .iPhone7: return 750
        case .iPhoneSE1stgen: return 640
        case .iPhone6sPlus: return 1242
        case .iPhone6s: return 750
        case .iPhone6Plus: return 1242
        case .iPhone6: return 750
        case .iPhone5C: return 640
        case .iPhone5S: return 640
        case .iPhone5: return 640
        case .iPhone4S: return 640
        case .iPhone4: return 640
        case .iPhone3GS: return 320
        case .iPhone3G: return 320
        case .iPhone1stgen: return 320
        case .iPadMini6thgen: return 1488
        case .iPad9thgen: return 1620
        case .iPadPro5thgen12_9: return 2048
        case .iPadPro5thgen11: return 1668
        case .iPadAir4thgen: return 1640
        case .iPad8thgen: return 1620
        case .iPadPro4thgen12_9: return 2048
        case .iPadPro4thgen11: return 1668
        case .iPad7thgen: return 1620
        case .iPadMini5thgen: return 1536
        case .iPadAir3rdgen: return 1668
        case .iPadPro3rdgen12_9: return 2048
        case .iPadPro3rdgen11: return 1668
        case .iPad6thgen: return 1536
        case .iPadPro2ndgen12_9: return 2048
        case .iPadPro2ndgen10_5: return 1668
        case .iPad5thgen: return 1536
        case .iPadPro1stgen9_7: return 1536
        case .iPadPro1stgen12_9: return 2048
        case .iPadmini4: return 1536
        case .iPadAir2: return 1536
        case .iPadmini3: return 1536
        case .iPadmini2: return 1536
        case .iPadAir: return 1536
        case .iPad4thgen: return 1536
        case .iPadmini: return 768
        case .iPad3rdgen: return 1536
        case .iPad2: return 768
        case .iPad1stgen: return 768
        case .iPodtouch7thgen: return 640
        case .iPodtouch6thgen: return 640
        case .iPodtouch5thgen: return 640
        case .iPodtouch4thgen: return 640
        case .iPodtouch3rdgen: return 320
        case .iPodtouch2ndgen: return 320
        case .iPodtouch1stgen: return 320
            
        }
    }
    
    var physicalHeight: CGFloat {
        switch self {
        case .iPhone13: return 2532
        case .iPhone13mini: return 2340
        case .iPhone13ProMax: return 2778
        case .iPhone13Pro: return 2532
        case .iPhone12: return 2532
        case .iPhone12mini: return 2340
        case .iPhone12ProMax: return 2778
        case .iPhone12Pro: return 2532
        case .iPhoneSE2ndgen: return 1334
        case .iPhone11ProMax: return 2688
        case .iPhone11Pro: return 2436
        case .iPhone11: return 1792
        case .iPhoneXR: return 1792
        case .iPhoneXSMax: return 2688
        case .iPhoneXS: return 2436
        case .iPhoneX: return 2436
        case .iPhone8Plus: return 1920
        case .iPhone8: return 1334
        case .iPhone7Plus: return 2208
        case .iPhone7: return 1334
        case .iPhoneSE1stgen: return 1136
        case .iPhone6sPlus: return 2208
        case .iPhone6s: return 1334
        case .iPhone6Plus: return 2208
        case .iPhone6: return 1334
        case .iPhone5C: return 1136
        case .iPhone5S: return 1136
        case .iPhone5: return 1136
        case .iPhone4S: return 960
        case .iPhone4: return 960
        case .iPhone3GS: return 480
        case .iPhone3G: return 480
        case .iPhone1stgen: return 480
        case .iPadMini6thgen: return 2266
        case .iPad9thgen: return 2160
        case .iPadPro5thgen12_9: return 2732
        case .iPadPro5thgen11: return 2388
        case .iPadAir4thgen: return 2360
        case .iPad8thgen: return 2160
        case .iPadPro4thgen12_9: return 2732
        case .iPadPro4thgen11: return 2388
        case .iPad7thgen: return 2160
        case .iPadMini5thgen: return 2048
        case .iPadAir3rdgen: return 2224
        case .iPadPro3rdgen12_9: return 2732
        case .iPadPro3rdgen11: return 2388
        case .iPad6thgen: return 2048
        case .iPadPro2ndgen12_9: return 2732
        case .iPadPro2ndgen10_5: return 2224
        case .iPad5thgen: return 2048
        case .iPadPro1stgen9_7: return 2048
        case .iPadPro1stgen12_9: return 2732
        case .iPadmini4: return 2048
        case .iPadAir2: return 2048
        case .iPadmini3: return 2048
        case .iPadmini2: return 2048
        case .iPadAir: return 2048
        case .iPad4thgen: return 2048
        case .iPadmini: return 1024
        case .iPad3rdgen: return 2048
        case .iPad2: return 1024
        case .iPad1stgen: return 1024
        case .iPodtouch7thgen: return 1136
        case .iPodtouch6thgen: return 1136
        case .iPodtouch5thgen: return 1136
        case .iPodtouch4thgen: return 960
        case .iPodtouch3rdgen: return 480
        case .iPodtouch2ndgen: return 480
        case .iPodtouch1stgen: return 480
            
        }
    }
    
    var ppi: CGFloat {
        switch self {
        case .iPhone13: return 460
        case .iPhone13mini: return 476
        case .iPhone13ProMax: return 458
        case .iPhone13Pro: return 460
        case .iPhone12: return 460
        case .iPhone12mini: return 476
        case .iPhone12ProMax: return 458
        case .iPhone12Pro: return 460
        case .iPhoneSE2ndgen: return 326
        case .iPhone11ProMax: return 458
        case .iPhone11Pro: return 458
        case .iPhone11: return 326
        case .iPhoneXR: return 326
        case .iPhoneXSMax: return 458
        case .iPhoneXS: return 458
        case .iPhoneX: return 458
        case .iPhone8Plus: return 401
        case .iPhone8: return 326
        case .iPhone7Plus: return 401
        case .iPhone7: return 326
        case .iPhoneSE1stgen: return 326
        case .iPhone6sPlus: return 401
        case .iPhone6s: return 326
        case .iPhone6Plus: return 401
        case .iPhone6: return 326
        case .iPhone5C: return 326
        case .iPhone5S: return 326
        case .iPhone5: return 326
        case .iPhone4S: return 326
        case .iPhone4: return 326
        case .iPhone3GS: return 163
        case .iPhone3G: return 163
        case .iPhone1stgen: return 163
        case .iPadMini6thgen: return 326
        case .iPad9thgen: return 264
        case .iPadPro5thgen12_9: return 264
        case .iPadPro5thgen11: return 264
        case .iPadAir4thgen: return 264
        case .iPad8thgen: return 264
        case .iPadPro4thgen12_9: return 264
        case .iPadPro4thgen11: return 264
        case .iPad7thgen: return 264
        case .iPadMini5thgen: return 326
        case .iPadAir3rdgen: return 264
        case .iPadPro3rdgen12_9: return 264
        case .iPadPro3rdgen11: return 264
        case .iPad6thgen: return 264
        case .iPadPro2ndgen12_9: return 264
        case .iPadPro2ndgen10_5: return 264
        case .iPad5thgen: return 264
        case .iPadPro1stgen9_7: return 264
        case .iPadPro1stgen12_9: return 264
        case .iPadmini4: return 326
        case .iPadAir2: return 326
        case .iPadmini3: return 264
        case .iPadmini2: return 326
        case .iPadAir: return 264
        case .iPad4thgen: return 264
        case .iPadmini: return 163
        case .iPad3rdgen: return 264
        case .iPad2: return 132
        case .iPad1stgen: return 132
        case .iPodtouch7thgen: return 326
        case .iPodtouch6thgen: return 326
        case .iPodtouch5thgen: return 326
        case .iPodtouch4thgen: return 326
        case .iPodtouch3rdgen: return 163
        case .iPodtouch2ndgen: return 163
        case .iPodtouch1stgen: return 163
            
        }
    }
    
    var scaleFactor: CGFloat {
        switch self {
        case .iPhone13: return 3
        case .iPhone13mini: return 3
        case .iPhone13ProMax: return 3
        case .iPhone13Pro: return 3
        case .iPhone12: return 3
        case .iPhone12mini: return 3
        case .iPhone12ProMax: return 3
        case .iPhone12Pro: return 3
        case .iPhoneSE2ndgen: return 2
        case .iPhone11ProMax: return 3
        case .iPhone11Pro: return 3
        case .iPhone11: return 2
        case .iPhoneXR: return 2
        case .iPhoneXSMax: return 3
        case .iPhoneXS: return 3
        case .iPhoneX: return 3
        case .iPhone8Plus: return 3
        case .iPhone8: return 2
        case .iPhone7Plus: return 3
        case .iPhone7: return 2
        case .iPhoneSE1stgen: return 2
        case .iPhone6sPlus: return 3
        case .iPhone6s: return 2
        case .iPhone6Plus: return 3
        case .iPhone6: return 2
        case .iPhone5C: return 2
        case .iPhone5S: return 2
        case .iPhone5: return 2
        case .iPhone4S: return 2
        case .iPhone4: return 2
        case .iPhone3GS: return 1
        case .iPhone3G: return 1
        case .iPhone1stgen: return 1
        case .iPadMini6thgen: return 2
        case .iPad9thgen: return 2
        case .iPadPro5thgen12_9: return 2
        case .iPadPro5thgen11: return 2
        case .iPadAir4thgen: return 2
        case .iPad8thgen: return 2
        case .iPadPro4thgen12_9: return 2
        case .iPadPro4thgen11: return 2
        case .iPad7thgen: return 2
        case .iPadMini5thgen: return 2
        case .iPadAir3rdgen: return 2
        case .iPadPro3rdgen12_9: return 2
        case .iPadPro3rdgen11: return 2
        case .iPad6thgen: return 2
        case .iPadPro2ndgen12_9: return 2
        case .iPadPro2ndgen10_5: return 2
        case .iPad5thgen: return 2
        case .iPadPro1stgen9_7: return 2
        case .iPadPro1stgen12_9: return 2
        case .iPadmini4: return 2
        case .iPadAir2: return 2
        case .iPadmini3: return 2
        case .iPadmini2: return 2
        case .iPadAir: return 2
        case .iPad4thgen: return 2
        case .iPadmini: return 1
        case .iPad3rdgen: return 2
        case .iPad2: return 1
        case .iPad1stgen: return 1
        case .iPodtouch7thgen: return 2
        case .iPodtouch6thgen: return 2
        case .iPodtouch5thgen: return 2
        case .iPodtouch4thgen: return 2
        case .iPodtouch3rdgen: return 1
        case .iPodtouch2ndgen: return 1
        case .iPodtouch1stgen: return 1
            
        }
    }
    
    var screenDiagonal: CGFloat {
        switch self {
        case .iPhone13: return 6.06
        case .iPhone13mini: return 5.42
        case .iPhone13ProMax: return 6.68
        case .iPhone13Pro: return 6.06
        case .iPhone12: return 6.06
        case .iPhone12mini: return 5.42
        case .iPhone12ProMax: return 6.68
        case .iPhone12Pro: return 6.06
        case .iPhoneSE2ndgen: return 4.7
        case .iPhone11ProMax: return 6.46
        case .iPhone11Pro: return 5.85
        case .iPhone11: return 6.1
        case .iPhoneXR: return 6.06
        case .iPhoneXSMax: return 6.46
        case .iPhoneXS: return 5.85
        case .iPhoneX: return 5.85
        case .iPhone8Plus: return 5.5
        case .iPhone8: return 4.7
        case .iPhone7Plus: return 5.5
        case .iPhone7: return 4.7
        case .iPhoneSE1stgen: return 4
        case .iPhone6sPlus: return 5.5
        case .iPhone6s: return 4.7
        case .iPhone6Plus: return 5.5
        case .iPhone6: return 4.7
        case .iPhone5C: return 4
        case .iPhone5S: return 4
        case .iPhone5: return 4
        case .iPhone4S: return 3.5
        case .iPhone4: return 3.5
        case .iPhone3GS: return 3.5
        case .iPhone3G: return 3.5
        case .iPhone1stgen: return 3.5
        case .iPadMini6thgen: return 8.3
        case .iPad9thgen: return 10.2
        case .iPadPro5thgen12_9: return 12.9
        case .iPadPro5thgen11: return 11
        case .iPadAir4thgen: return 10.9
        case .iPad8thgen: return 10.2
        case .iPadPro4thgen12_9: return 12.9
        case .iPadPro4thgen11: return 11
        case .iPad7thgen: return 10.2
        case .iPadMini5thgen: return 7.9
        case .iPadAir3rdgen: return 10.5
        case .iPadPro3rdgen12_9: return 12.9
        case .iPadPro3rdgen11: return 11
        case .iPad6thgen: return 9.7
        case .iPadPro2ndgen12_9: return 12.9
        case .iPadPro2ndgen10_5: return 10.5
        case .iPad5thgen: return 9.7
        case .iPadPro1stgen9_7: return 9.7
        case .iPadPro1stgen12_9: return 12.9
        case .iPadmini4: return 7.9
        case .iPadAir2: return 9.7
        case .iPadmini3: return 7.9
        case .iPadmini2: return 7.9
        case .iPadAir: return 9.7
        case .iPad4thgen: return 9.7
        case .iPadmini: return 7.9
        case .iPad3rdgen: return 9.7
        case .iPad2: return 9.7
        case .iPad1stgen: return 9.7
        case .iPodtouch7thgen: return 4
        case .iPodtouch6thgen: return 4
        case .iPodtouch5thgen: return 4
        case .iPodtouch4thgen: return 3.5
        case .iPodtouch3rdgen: return 3.5
        case .iPodtouch2ndgen: return 3.5
        case .iPodtouch1stgen: return 3.5
            
        }
    }
    
    var release: String {
        switch self {
        case .iPhone13: return "2021-09-14"
        case .iPhone13mini: return "2021-09-14"
        case .iPhone13ProMax: return "2021-09-14"
        case .iPhone13Pro: return "2021-09-14"
        case .iPhone12: return "2020-10-13"
        case .iPhone12mini: return "2020-10-13"
        case .iPhone12ProMax: return "2020-10-13"
        case .iPhone12Pro: return "2020-10-13"
        case .iPhoneSE2ndgen: return "2020-04-24"
        case .iPhone11ProMax: return "2019-09-20"
        case .iPhone11Pro: return "2019-09-20"
        case .iPhone11: return "2019-09-20"
        case .iPhoneXR: return "2018-10-26"
        case .iPhoneXSMax: return "2018-09-21"
        case .iPhoneXS: return "2018-09-21"
        case .iPhoneX: return "2017-11-03"
        case .iPhone8Plus: return "2017-09-22"
        case .iPhone8: return "2017-09-22"
        case .iPhone7Plus: return "2016-09-16"
        case .iPhone7: return "2016-09-16"
        case .iPhoneSE1stgen: return "2016-03-31"
        case .iPhone6sPlus: return "2015-09-25"
        case .iPhone6s: return "2015-09-25"
        case .iPhone6Plus: return "2014-09-19"
        case .iPhone6: return "2014-09-19"
        case .iPhone5C: return "2013-09-20"
        case .iPhone5S: return "2013-09-20"
        case .iPhone5: return "2012-09-21"
        case .iPhone4S: return "2011-10-14"
        case .iPhone4: return "2010-06-21"
        case .iPhone3GS: return "2009-06-19"
        case .iPhone3G: return "2008-07-11"
        case .iPhone1stgen: return "2007-06-29"
        case .iPadMini6thgen: return "2019-03-18"
        case .iPad9thgen: return "2021-09-14"
        case .iPadPro5thgen12_9: return "2021-05-21"
        case .iPadPro5thgen11: return "2021-05-21"
        case .iPadAir4thgen: return "2020-10-23"
        case .iPad8thgen: return "2020-09-18"
        case .iPadPro4thgen12_9: return "2020-03-25"
        case .iPadPro4thgen11: return "2020-03-25"
        case .iPad7thgen: return "2019-09-25"
        case .iPadMini5thgen: return "2019-03-18"
        case .iPadAir3rdgen: return "2019-03-18"
        case .iPadPro3rdgen12_9: return "2018-11-07"
        case .iPadPro3rdgen11: return "2018-11-07"
        case .iPad6thgen: return "2018-03-27"
        case .iPadPro2ndgen12_9: return "2017-06-13"
        case .iPadPro2ndgen10_5: return "2017-06-13"
        case .iPad5thgen: return "2017-03-24"
        case .iPadPro1stgen9_7: return "2016-03-31"
        case .iPadPro1stgen12_9: return "2015-11-11"
        case .iPadmini4: return "2015-09-09"
        case .iPadAir2: return "2014-10-22"
        case .iPadmini3: return "2014-10-22"
        case .iPadmini2: return "2013-11-12"
        case .iPadAir: return "2013-11-01"
        case .iPad4thgen: return "2012-11-12"
        case .iPadmini: return "2012-11-02"
        case .iPad3rdgen: return "2012-03-16"
        case .iPad2: return "2011-03-11"
        case .iPad1stgen: return "2010-04-03"
        case .iPodtouch7thgen: return "2019-05-28"
        case .iPodtouch6thgen: return "2015-07-15"
        case .iPodtouch5thgen: return "2012-10-11"
        case .iPodtouch4thgen: return "2010-09-01"
        case .iPodtouch3rdgen: return "2009-09-09"
        case .iPodtouch2ndgen: return "2008-09-09"
        case .iPodtouch1stgen: return "2007-09-05"
            
        }
    }
    
}
