//
//  ViewController.swift
//  IMTest
//
//  Created by CXY on 16/4/12.
//  Copyright © 2016年 CXY. All rights reserved.
//

import UIKit

class ViewController: RCConversationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //设置需要显示哪些类型的会话
        self.setMessageAvatarStyle(RCUserAvatarStyle.USER_AVATAR_CYCLE)
        
        self.targetId = "ccc"
        self.userName = "cheng"
        
        self.conversationType = .ConversationType_PRIVATE
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

