//
//  AppDelegate.swift
//  IMTest
//
//  Created by CXY on 16/4/12.
//  Copyright © 2016年 CXY. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        RCIM.sharedRCIM().initWithAppKey("uwd1c0sxd9pf1")
        
        
        
        let token = "qOAErW4WBOvqfvuSzs9dBTqMAjMPA6eoeGb2C3ZxXVJOa4/+DjF6vx7yxbRVhmJT+sa1wMCDU9c="
        
        
        
        
        
        RCIM.sharedRCIM().connectWithToken(token,
                                           success: { (_) -> Void in

                                            print("登陆成功。")
                                            
                                            let userInfo = RCUserInfo(userId: "ccc", name: "cheng",portrait: "http://img5.imgtn.bdimg.com/it/u=1569649294,64396477&fm=21&gp=0.jpg");
                                            RCIMClient.sharedRCIMClient().currentUserInfo = userInfo;

                                            
                                            
            }, error: { (status) -> Void in
                print("登陆的错误码为:\(status.rawValue)")
            }, tokenIncorrect: {
                //token过期或者不正确。
                //如果设置了token有效期并且token过期，请重新请求您的服务器获取新的token
                //如果没有设置token有效期却提示token错误，请检查您客户端和服务器的appkey是否匹配，还有检查您获取token的流程。
                print("token错误")
        })
        
        

        
        
        

        
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

