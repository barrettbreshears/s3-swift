//
//  AppDelegate.swift
//  s3-swift
//
//  Created by Barrett Breshears on 12/6/14.
//  Copyright (c) 2014 Barrett Breshears. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        var credentialsProvider:AWSCognitoCredentialsProvider = AWSCognitoCredentialsProvider.credentialsWithRegionType(AWSRegionType.USEast1, accountId:"156974311006", identityPoolId:"us-east-1:87b1638e-1e2d-45a5-9999-505778436a17", unauthRoleArn:"arn:aws:iam::156974311006:role/Cognito_s3demoUnauth_DefaultRole", authRoleArn:"arn:aws:iam::156974311006:role/Cognito_s3demoAuth_DefaultRole")
        
        var configuration:AWSServiceConfiguration = AWSServiceConfiguration(region: AWSRegionType.USEast1, credentialsProvider: credentialsProvider)
        
        AWSServiceManager.defaultServiceManager().setDefaultServiceConfiguration(configuration)
        
        
        
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

