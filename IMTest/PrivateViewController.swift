//
//  PrivateViewController.swift
//  IMTest
//
//  Created by CXY on 16/4/12.
//  Copyright © 2016年 CXY. All rights reserved.
//

import UIKit

class PrivateViewController: RCConversationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.targetId = "ccc"
        self.userName = "cheng"
        
         self.conversationType = .ConversationType_PRIVATE
        
        self.setMessageAvatarStyle(RCUserAvatarStyle.USER_AVATAR_CYCLE)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
