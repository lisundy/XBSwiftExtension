//
//  SwiftCommonExtension.swift
//  SwiftExtension
//
//  Created by Lee on 2020/10/14.
//

import UIKit

class SwiftCommonExtension: NSObject {

}

func getAppBuild() -> String {
    guard let info = Bundle.main.infoDictionary else {
        return "0"
    }
    return info["CFBundleVersion"] as! String
}


func getAppVersion() -> String {
    guard let info = Bundle.main.infoDictionary else {
        return "1.0.0"
    }
    return info["CFBundleShortVersionString"] as! String
}

func screenSize() -> CGSize {
    return UIScreen.main.bounds.size
}

func screenWidth() -> CGFloat {
    return UIScreen.main.bounds.size.width
}

func screenHeight() -> CGFloat {
    return UIScreen.main.bounds.size.height
}

func statusBarHeight() -> CGFloat {
    if #available(iOS 13, *) {
        return UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    }else{
        return UIApplication.shared.statusBarFrame.height
    }
}

func navigationBarHeight() -> CGFloat {
    return statusBarHeight() + 44.0
}

func bottomSafeHeight() -> CGFloat {
    if #available(iOS 11.0, *){
        return (UIApplication.shared.delegate?.window!?.safeAreaInsets.bottom)!
    }
    return 0.0
}

func tabBarHeight() -> CGFloat {
    return bottomSafeHeight() + 49.0
}
