//
//  FirstViewController.swift
//  Tabbed3Screens
//
//  Created by Yoda Dev on 5/7/16.
//  Copyright © 2016 Yury G. All rights reserved.
//

import UIKit
import AVFoundation

//  Global Class-Wide Variables
let mySpeechSynth = AVSpeechSynthesizer()

var myRate: Float = 0.50
var myPitch: Float = 0.99
var myVolume: Float = 0.50



class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
  
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordsDataSet.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MyUITableViewCell
        
        ///cell.textLabel!.text = wordsDataSet[indexPath.item]
    
        
        let countryCode = globalSelectedWordLangFlag.0
        
        
        var mainString = "\(wordsDataSet[indexPath.item]) "
        cell.myLabel1.text = wordsDataSet[indexPath.item]
        let fullString = "\(globalSelectedWordLangFlag.1) \(globalSelectedWordLangFlag.2) \(globalSelectedWordLangFlag.4) "
        cell.mysubTitleLabel1.text = fullString
        
        print("wordDataSet: \(wordsDataSet[indexPath.item])")
        return cell

    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        theWord = wordsDataSet[indexPath.row]
        
        print("theWord= \(theWord) \(globalSelectedWordLangFlag.0)")
        
        
    }

    
    func wordTransMatch(){
 //       for code in langCodeAll38.0 {
            
        }
        
    
    
    
    
}

