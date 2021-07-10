//
//  ScheduleViewController.swift
//  SquareOne
//
//  Created by Atharva Gupta on 7/10/21.
//

import UIKit

class ScheduleViewController: UIViewController {

    @IBOutlet weak var exit: UIButton!
    @IBOutlet weak var stats: UILabel!
    @IBOutlet weak var res: UILabel!
    @IBOutlet weak var bday: UILabel!
    @IBOutlet weak var bio: UILabel!
    @IBOutlet weak var calc: UILabel!
    @IBOutlet weak var fit: UILabel!
    @IBOutlet weak var physicsLabel: UILabel!
    @IBOutlet weak var artHistroyLabel: UILabel!
    override func viewDidLoad() {
        exit.layer.cornerRadius = 8
        physicsLabel.layer.cornerRadius = 8
        physicsLabel.layer.masksToBounds = true
        artHistroyLabel.layer.cornerRadius = 8
        artHistroyLabel.layer.masksToBounds = true
        calc.layer.cornerRadius = 8
        calc.layer.masksToBounds = true
        stats.layer.cornerRadius = 8
        stats.layer.masksToBounds = true
        bday.layer.cornerRadius = 8
        bday.layer.masksToBounds = true
        bio.layer.cornerRadius = 8
        bio.layer.masksToBounds = true
        fit.layer.cornerRadius = 8
        fit.layer.masksToBounds = true
        res.layer.cornerRadius = 8
        res.layer.masksToBounds = true
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func exit(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
