//
//  ViewController.swift
//  SquareOne
//
//  Created by Atharva Gupta on 7/9/21.
//

import UIKit

class ViewController: UIViewController {
    var className = ""
    @IBOutlet weak var MeetingButton: UIButton!
    
    
    override func viewDidLoad() {
        MeetingButton.layer.cornerRadius = 8
        
        super.viewDidLoad()
    }
    @IBAction func newMeetingPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "newMeeting", sender: self)
    }
}




