//
//  ScoreViewController.swift
//  VeseKentei
//
//  Created by Sachico Kuwamura on 2015/03/26.
//  Copyright (c) 2015年 Haruyoshi Kuwamura. All rights reserved.
//

import UIKit
//Socialフレームワークをインポート
import Social


    //Facebook投稿メソッド
    @IBAction func postFacebook(sender: AnyObject) {
        //Facebook投稿用定数を作成
        let fbVC:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)!
        //投稿テキストを設定
        fbVC.setInitialText("私は、はをみがきました！")
        //投稿画像を設定
        fbVC.addImage(UIImage(named: "4.png"))
        //投稿用URLを設定
        fbVC.addURL(NSURL(string: "http://asksun.net/blog"))
        //投稿コントローラーを起動
        self.presentViewController(fbVC, animated: true, completion: nil)
    }
    //Twitter投稿メソッド
    @IBAction func postTwitter(sender: AnyObject) {
        //Twitter投稿用定数を作成
        let twVC:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
        //投稿テキストを設定
        twVC.setInitialText("私は、はをみがきました！")
        //投稿画像を設定
        twVC.addImage(UIImage(named: "4.png"))
        //投稿用URLを設定
        twVC.addURL(NSURL(string: "http://asksun.net/blog"))
        //投稿コントローラーを起動
        self.presentViewController(twVC, animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    

