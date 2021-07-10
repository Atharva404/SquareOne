//
//  ViewController.swift
//  SquareOne
//
//  Created by Atharva Gupta on 7/9/21.
//

import UIKit

class ViewController: UIViewController {
    var classNameToDisplay : String?
    @IBOutlet weak var MeetingButton: UIButton!
    @IBOutlet weak var ClassText: UILabel?
    
    @IBOutlet weak var scheduleLocker: UIButton!
    var text: String = ""
    
    override func viewDidLoad() {
        MeetingButton.layer.cornerRadius = 8
        scheduleLocker.layer.cornerRadius = 8
        super.viewDidLoad()
        ClassText?.text = text
    }
    @IBAction func newMeetingPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "newMeeting", sender: self)
    }

}




