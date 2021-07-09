//
//  ViewController.swift
//  SquareOne
//
//  Created by Atharva Gupta on 7/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MeetingButton: UIButton!
    override func viewDidLoad() {
        MeetingButton.layer.cornerRadius = 8
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func newMeetingPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "newMeeting", sender: self)
    }
}



