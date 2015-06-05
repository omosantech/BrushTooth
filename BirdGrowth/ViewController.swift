//
//  ViewController.swift
//  Brushing Tooth
//
//  Created by Asuka Kadowaki on 2015/05/05.
//  Copyright (c) 2015年 Asuka Kadowaki. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    @IBAction func tw(sender: AnyObject) {
    }
    @IBOutlet var countLabel:UILabel!
    @IBOutlet var birdImageView: UIImageView!
    @IBOutlet var messageLabel: UILabel!
    var count = 50
    var count2 = 0
    var seManager = SEManager()
    
    @IBAction func talk(sender: UIButton){
        count--
        count2++
        countLabel.text = "\(count)"
        if count == 49{
            birdImageView.image = UIImage(named: "1");
            messageLabel.text = "ブラッシングしよう！"
            seManager.play(soundName: "change.mp3")
        }
        if count == 47{
            birdImageView.image = UIImage(  named: "2");
            messageLabel.text = "ゴシゴシ！"
            seManager.play(soundName: "change.mp3")
        }
        if count == 30{
            birdImageView.image = UIImage(named: "3");
            messageLabel.text = "いいね！いいね！"
            seManager.play(soundName: "change.mp3")
        }
        if count == 10{
            birdImageView.image = UIImage(named: "4");
            messageLabel.text = "やったね！きれいになった！"
            seManager.play(soundName: "change.mp3")
        }
        
        //ピクッと動くアニメーション
        UIView .animateWithDuration(1, animations: { () -> Void in
            self.birdImageView.transform = CGAffineTransformMakeScale(1.1, 1.1)
            self.birdImageView.center = CGPointMake(self.birdImageView.center.x,
                self.birdImageView.center.y-15.0)
            }) { _ -> Void in
                UIView .animateWithDuration(1, animations: { () -> Void in
                    self.birdImageView.transform = CGAffineTransformIdentity
                    self.birdImageView.center = CGPointMake(self.birdImageView.center.x,
                    self.birdImageView.center.y+0.0)
                })
        }
        
        seManager.play(soundName: "talk.mp3")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func postTwitter(sender: AnyObject) {
        //Twitter投稿用定数を作成
        let twVC:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
        //投稿テキストを設定
        twVC.setInitialText("ブラッシングアプリから投稿。私は、\(count2)回ブラッシングしました。")
        //投稿画像を設定
        twVC.addImage(UIImage(named: "5.png"))
        //投稿用URLを設定
        twVC.addURL(NSURL(string: "http://asksun.net/blog/service/swift-iot"))
        //投稿コントローラーを起動
        self.presentViewController(twVC, animated: true, completion: nil)
    }
    
    @IBAction func postFacebook(sender: AnyObject) {
        //Facebook投稿用定数を作成
        let fbVC:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)!
        //投稿テキストを設定
        fbVC.setInitialText("ブラッシングアプリから投稿。私は、\(count2)回ブラッシングしました。")
        //投稿画像を設定
        fbVC.addImage(UIImage(named: "5.png"))
        //投稿用URLを設定
        fbVC.addURL(NSURL(string: "http://asksun.net/blog/service/swift-iot"))
        //投稿コントローラーを起動
        self.presentViewController(fbVC, animated: true, completion: nil)
    }
    
    
    
}

