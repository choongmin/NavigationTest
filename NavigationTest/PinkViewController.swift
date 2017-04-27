//
//  PinkViewController.swift
//  NavigationTest
//
//  Created by SDS-014 on 2017. 4. 26..
//  Copyright © 2017년 SDS-014. All rights reserved.
//

import UIKit

class PinkViewController: UIViewController {

    @IBOutlet var myTextField: UITextField!
    
    @IBAction func sendStr(_ sender: Any) {
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            if let str = myTextField.text {
                appdelegate.myName = str
            }
        }
        
        self.performSegue(withIdentifier: "gopurple", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            self.view.backgroundColor = appdelegate.bgColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let vc = segue.destination as? PurpleViewController {
            vc.myStr = myTextField.text
        }
    }
 

}
