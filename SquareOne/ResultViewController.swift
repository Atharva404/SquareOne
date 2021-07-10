//
//  ResultViewController.swift
//  SquareOne
//
//  Created by Atharva Gupta on 7/9/21.
//

import UIKit

class ResultViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var meetingButton: UIButton!
    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var DateandTime: UIDatePicker!
    @IBOutlet weak var className: UITextField!
    override func viewDidLoad() {
        DateandTime.backgroundColor = .white
        meetingButton.layer.cornerRadius = 8
        super.viewDidLoad()
        Description.delegate = self
        className.delegate = self
        // Do any additional setup after loading the view.
    }
     
    @IBAction func returnPressed(_ sender: UIButton) {
        let vc = ViewController()
        vc.text = "\(className.text!)"
        print("Description: \(Description.text!)\nClassName: \(className.text!)\n Date: \(DateandTime.date)")
        self.dismiss(animated: true, completion: nil)
    }

}
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
