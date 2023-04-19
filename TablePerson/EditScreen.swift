//
//  EditScreen.swift
//  TablePerson
//
//  Created by Eman on 12/01/2023.
//

import UIKit

class EditScreen: UIViewController {
var temp = Person()
    var ref : addProtocol?
    var flage : Bool?
    
    
    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var age: UITextField!
    
    
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        name.text = temp.name
//        age.text = String(temp.age!)
//        if temp.image == "M"
//        { gender.selectedSegmentIndex = 0
//            flage = true
//        }
//        else
//        {  gender.selectedSegmentIndex = 1
//            flage = false
//        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dnedit(_ sender: Any) {
        
//        temp.name = name.text!
//        temp.age = Int (age.text!)
//        if gender.selectedSegmentIndex == 0 {  temp.image = "M"}
//      
//        else {  temp.image = "F"}
//        ref?.editPerson(person: temp)
//        self.navigationController?.popViewController(animated: true)
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
