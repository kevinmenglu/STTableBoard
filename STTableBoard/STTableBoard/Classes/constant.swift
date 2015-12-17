//
//  constant.swift
//  STTableBoard
//
//  Created by DangGu on 15/11/26.
//  Copyright © 2015年 StormXX. All rights reserved.
//

import UIKit

enum SnapViewStatus {
    case Moving
    case Origin
}

enum ScrollDirection {
    case Left
    case Right
    case None
}

enum STTableBoardMode {
    case Page
    case Scroll
}

enum STTableBoardOrientation {
    case Landscape
    case Portrait
}

let timerUserInfoTableViewKey = "theTableView"
let leading: CGFloat  = 30.0
let trailing: CGFloat = leading
let top: CGFloat = 20.0
let bottom: CGFloat = top
let pageSpacing: CGFloat = leading / 2
let overlap: CGFloat = pageSpacing * 3
let rotateAngel: CGFloat = CGFloat(M_PI/36)
let headerViewHeight: CGFloat = 60.0
let footerViewHeight: CGFloat = 48.0
let scaleForPage: CGFloat = 1.0
let scaleForScroll: CGFloat = 0.5
let defaultScrollViewScrollVelocity: CGFloat = 50.0
let currentBundle = NSBundle(forClass: STTableBoard.self)

//Color
let boardBackgroundColor: UIColor = UIColor(red: 248.0/255.0, green: 248.0/255.0, blue: 248.0/255.0, alpha: 1.0)
let tableBoardBackgroundColor: UIColor = UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)
let boardBorderColor: UIColor = UIColor(red: 226.0/255.0, green: 226.0/255.0, blue: 226.0/255.0, alpha: 1.0)

var currentDevice: UIUserInterfaceIdiom {
    get {
        return UIDevice.currentDevice().userInterfaceIdiom
    }
}

var currentOrientation: STTableBoardOrientation {
    get {
        var orientation: STTableBoardOrientation = .Portrait
        switch UIApplication.sharedApplication().statusBarOrientation {
        case .Portrait, .PortraitUpsideDown, .Unknown:
            orientation = .Portrait
        case .LandscapeLeft, .LandscapeRight:
            orientation = .Landscape
        }
        return orientation
    }
}
