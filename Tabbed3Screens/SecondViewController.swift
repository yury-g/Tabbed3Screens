//
//  SecondViewController.swift
//  Tabbed3Screens
//
//  Created by Yoda Dev on 5/7/16.
//  Copyright © 2016 Yury G. All rights reserved.
//

import UIKit
import AVFoundation









class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    // UI Elements [Outlets]
    
    @IBOutlet weak var rateNumLabel: UILabel!
    @IBOutlet weak var pitchNumLabel: UILabel!
    //  @IBOutlet weak var volumeNumLabel: UILabel!
    @IBOutlet weak var speakButtonText: UIButton!
    
    
    // UI Elements [Action]
    
    @IBAction func rateSliderMoved(sender: UISlider) {
        rateNumLabel.text =  String(sender.value)
        myRate = sender.value
        speakThisString(theWord, inLangCode: currentLang.0)
    }
    
    @IBAction func pitchSliderMoved(sender: UISlider) {
        pitchNumLabel.text = String(sender.value)
        myPitch = sender.value
        speakThisString(theWord, inLangCode: currentLang.0)
    }
    
    
    @IBAction func speakButtonPressed(sender: UIButton) {
        speakThisString(theWord, inLangCode: currentLang.0)
        
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UIPickerView Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return langCodeAll38.count
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let myString = "\(langCodeAll38[row].3)  \(langCodeAll38[row].4)  \(langCodeAll38[row].1)"
        
        return myString
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentLang = langCodeAll38[row]
        globalSelectedWordLangFlag = currentLang
        
//        speakThisString("\(langCodeAll38[row].4)", )
  
        speakThisString(langCodeAll38[row].3, inLangCode: langCodeAll38[row].0)
    }
   
    
    func speakThisString(passedString: String, inLangCode: String){
        
        mySpeechSynth.stopSpeakingAtBoundary(AVSpeechBoundary.Immediate)
        
        let myUtterance = AVSpeechUtterance(string: passedString)
        myUtterance.rate = myRate
        myUtterance.pitchMultiplier = myPitch
        //    myUtterance.volume = myVolume
        myUtterance.voice = AVSpeechSynthesisVoice(language: currentLang.0)
        mySpeechSynth.speakUtterance(myUtterance)
        
        
        
    }
    
    
    
    
}

