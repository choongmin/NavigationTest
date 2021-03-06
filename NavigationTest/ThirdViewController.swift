//
//  ThirdViewController.swift
//  NavigationTest
//
//  Created by SDS-014 on 2017. 4. 26..
//  Copyright © 2017년 SDS-014. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var myFunc:((UIColor) -> ())? = nil

    @IBOutlet var myTextField: UITextField!
    
    @IBAction func done(_ sender: Any) {
        if let aFunc = myFunc {
            aFunc(UIColor.black)
        }
        
        if let myDelegate = delegate, let myStr = myTextField.text {
            myDelegate.sendText(newText: myStr)
            let _ = self.navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: SecondViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(Notification:)), name: NSNotification.name.init(rawValue:"CHANGE_COLOR"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(notification:)), name: NSNotification.Name.init(rawValue:"CHANGE_COLOR"), object: nil)
    }
    
    func changeColor(notification:NSNotification) {
        self.view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBackColor(_ colorFunc:@escaping(UIColor) -> ()) {
        self.myFunc = colorFunc
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
