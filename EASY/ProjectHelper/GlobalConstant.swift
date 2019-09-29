//
//  GlobalConstant.swift
//  EASY
//
//  Created by Rohit Saini on 13/01/19.
//  Copyright © 2019 Rohit Saini. All rights reserved.
//

import Foundation
import UIKit

//========================
//MARK:- STORYBOARD
struct STORYBOARD {
    static var MAIN = UIStoryboard(name: "Main", bundle: nil)
    static var HOME = UIStoryboard(name: "Home", bundle: nil)
    static var MYCHAT = UIStoryboard(name: "MyChat", bundle: nil)
    static var GROUPCHAT = UIStoryboard(name: "GroupChat", bundle: nil)
    static var SETTINGS = UIStoryboard(name: "Settings", bundle: nil)
    
}

//========================
//MARK:- GROUPS_CATEGORIES
struct GROUPS_CATEGORIES {
    static var GROUP_PHOTOS_PLUS_NAME = ["Technology","Education","Travel","Gym","Fashion","Sports","Etc"]
}

//========================
//MARK:- NAVIGATION
struct NAVIGATION{
    static func CreateGroup(){
        let vc : CreateGroup = STORYBOARD.HOME.instantiateViewController(withIdentifier: "CreateGroup") as! CreateGroup
        UIViewController.top?.navigationController?.pushViewController(vc, animated: true)
    }
    static func JoinGroup(){
        let vc : JoinGroup = STORYBOARD.HOME.instantiateViewController(withIdentifier: "JoinGroup") as! JoinGroup
        UIViewController.top?.navigationController?.pushViewController(vc, animated: true)
    }
    static func BackToPreviousController(){
    UIViewController.top?.navigationController?.popViewController(animated: true)
    }
}
