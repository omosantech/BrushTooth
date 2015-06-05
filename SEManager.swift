//
//  SEManager.swift
//  Aquarium
//
//  Created by Yukinaga Azuma on 2014/09/20.
//  Copyright (c) 2014年 Yukinaga Azuma. All rights reserved.
//

import Foundation
import AVFoundation

class SEManager:NSObject, AVAudioPlayerDelegate {
    //複数の効果音を格納する配列
    var soundArray = [AVAudioPlayer]()
    //効果音の再生
    func play(soundName sName:String){
        let soundPath = NSBundle.mainBundle().bundlePath.stringByAppendingPathComponent(sName)
        let url:NSURL? = NSURL.fileURLWithPath(soundPath)
        let p:AVAudioPlayer? = AVAudioPlayer(contentsOfURL:url, error:nil)
        if let player = p{
            player.numberOfLoops = 0
            player.delegate = self
            soundArray.append(player)
            player.prepareToPlay()
            player.play()
        }
    }
    //サウンドの再生後に呼ばれるメソッド
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        var i = find(soundArray, player)
        if let index = i{
            soundArray.removeAtIndex(index)
        }
    }
}
