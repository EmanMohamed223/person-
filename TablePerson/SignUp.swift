//
//  SignUp.swift
//  TablePerson
//
//  Created by Eman on 13/01/2023.
//

import UIKit

class SignUp: UIViewController {

    
    @IBOutlet weak var usernametxt: UITextField!
    
    
    
    @IBOutlet weak var passtxt: UITextField!
    
    var user = UserDefaults.standard
    var name = UserDefaults.standard.string(forKey: "username")
    var pass = UserDefaults.standard.integer(forKey: "pass")
    var flage = UserDefaults.standard.bool(forKey: "loged")
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func dnbtm(_ sender: UIButton) {
        var x = (Int)(passtxt.text!)
        UserDefaults.standard.set(usernametxt.text, forKey: "username")
        UserDefaults.standard.set( x, forKey: "pass")
        
        var log = self.storyboard?.instantiateViewController(withIdentifier: "log") as!Login
        self.navigationController?.popViewController(animated: true)
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
