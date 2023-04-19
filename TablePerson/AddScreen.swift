//
//  AddScreen.swift
//  TablePerson
//
//  Created by Eman on 12/01/2023.
//

import UIKit
import CoreData

class AddScreen: UIViewController {
    
    var ref : addProtocol?
    var temp = Person()
    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var age: UITextField!
    
    
    
    
    
    @IBOutlet weak var genderseg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addbtm(_ sender: Any) {
        var alert :UIAlertController = UIAlertController(title: "ADD ", message: "Do you want to add this person?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .default , handler: { [self] action in
            
//            temp.name = name.text!
//            temp.age = Int (age.text!)
//            if genderseg.selectedSegmentIndex == 0
//            { temp.image = "M"}
//            else {
//                temp.image = "F"
//            }
//
//            ref?.addPerson(person: temp)
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let managedContext = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "Person", in: managedContext)
            let person = NSManagedObject(entity: entity!, insertInto: managedContext)
            person.setValue(name.text!, forKey: "name")
            person.setValue(Int (age.text!), forKey: "age")
            person.setValue("F", forKey: "image")
            
            do{
                try managedContext.save()
            }catch let error as NSError
            {
                print(error)
            }
            
            self.navigationController?.popViewController(animated: true)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil))
        self.present(alert, animated: true , completion: nil)
        
        
        
    }
    
    
    
    
    @IBAction func segmac(_ sender: Any) {
        switch (genderseg.selectedSegmentIndex)
        {
        case 0 :
         print("0")

        case 1 :
           print("1")

        default:
            0
        }
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
