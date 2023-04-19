//
//  Login.swift
//  TablePerson
//
//  Created by Eman on 13/01/2023.
//

import UIKit

class Login: UIViewController {

    
    @IBOutlet weak var usernametxt: UITextField!
    
    
    @IBOutlet weak var passtxt: UITextField!
    
    var sign = SignUp()
    override func viewDidLoad() {
        super.viewDidLoad()
        if sign.flage == true
        {
            let table = (self.storyboard?.instantiateViewController(withIdentifier: "table")) as!MaleAndFemaleTable
            self.navigationController?.pushViewController(table, animated: true)
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func logbtm(_ sender: UIButton)
    {
        
        
        let s = (String)(sign.pass)
        if (usernametxt.text == sign.name && passtxt.text == s )
        {
            UserDefaults.standard.set(true, forKey: "loged")
            let table = (self.storyboard?.instantiateViewController(withIdentifier: "table")) as!MaleAndFemaleTable
            self.navigationController?.pushViewController(table, animated: true)
            
        }
        
        
        
        
    }

    
    @IBAction func signbtm(_ sender: UIButton)
    {
        
        var signscre = self.storyboard?.instantiateViewController(withIdentifier: "sign")as! SignUp
        self.navigationController?.pushViewController(signscre, animated: true)
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
