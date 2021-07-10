//
//  ResultViewController.swift
//  SquareOne
//
//  Created by Atharva Gupta on 7/9/21.
//

import UIKit

class ResultViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var DateandTime: UIDatePicker!
    @IBOutlet weak var className: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Description.delegate = self
        className.delegate = self
        // Do any additional setup after loading the view.
    }
     
    @IBAction func returnPressed(_ sender: UIButton) {
        print("Description: \(Description.text!)\nClassName: \(className.text!)\n Date: \(DateandTime.date)")
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
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
