//
//  PurpleViewController.swift
//  NavigationTest
//
//  Created by SDS-014 on 2017. 4. 26..
//  Copyright © 2017년 SDS-014. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {
    
    var myStr: String? = nil

    @IBAction func delegateChangeBackColor(_ sender: Any) {
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            appdelegate.bgColor = UIColor.yellow
        }
    }
    
    @IBAction func changeBackColor(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name.init(rawValue:"CHANGE_COLOR"), object: nil, userInfo: nil)
    }
    
    @IBOutlet var myStrLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let str = myStr {
            myStrLabel.text = str
        }
        
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            myStrLabel.text = appdelegate.myName
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
