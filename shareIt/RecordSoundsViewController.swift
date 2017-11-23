//
//  ViewController.swift
//  shareIt
//
//  Created by Abhishek kumar on 20/11/17.
//  Copyright © 2017 quiqsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stopRecordingButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stopRecording(_ sender: Any) {

        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLable.text = "Tap to record"
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLable.text = "recording button pressd"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
        
    }
}

