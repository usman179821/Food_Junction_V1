//
//  TestingVC.swift
//  Food Junction
//
//  Created by Swifty on 3/25/22.
//

import UIKit

class TestingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func btnCliecked(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message: "What do you want to d o?", preferredStyle: .actionSheet)
            // Add actions to the menu
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil )
            optionMenu.addAction(cancelAction)
            // Add Call action
        let callActionHandler = { (action:UIAlertAction!) -> Void in
        let alertMessage = UIAlertController(title: "Service Unavailable", message : "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
        alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler
        : nil))
        self.present(alertMessage, animated: true, completion: nil)
        }
//        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
//            optionMenu.addAction(callAction)
//            // Check-in action
        let checkInAction = UIAlertAction(title: "Check in", style: .default, handler: {
                (action:UIAlertAction!) -> Void in
//                let cell = tableView.cellForRow(at: indexPath)
//                cell?.accessoryType = .checkmark
            })
            optionMenu.addAction(checkInAction)
            // Display the menu
            present(optionMenu, animated: true, completion: nil)
        
    }
}
