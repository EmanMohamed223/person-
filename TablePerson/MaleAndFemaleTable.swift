//
//  MaleAndFemaleTable.swift
//  TablePerson
//
//  Created by Eman on 12/01/2023.
//

import UIKit
import CoreData
class MaleAndFemaleTable: UITableViewController {
   // var dmale = UserDefaults.standard.array(forKey: "male")
    //var Dfemale = UserDefaults.standard.array(forKey: "female")
   // var malearr : Array<Person>?
  //  var femalearr : [Person]?
    var People : [NSManagedObject]?
    override func viewDidLoad() {
        super.viewDidLoad()
        People = []
        
       
        
        
        
        
        
        
        
        
        
//        let eman = Person(name :"Eman",age :22,image : "F")
//        let mariam = Person(name :"Mariam",age :21,image : "F")
//        let salma = Person(name :"Salma",age :20,image : "F")
//     femalearr = [eman , mariam , salma]
//        let ali = Person(name :"ali",age :22,image : "M")
//        let adam = Person(name :"adam",age :21,image : "M")
//        let zayn = Person(name :"zaynn",age :20,image : "M")
//        malearr = [ali , adam , zayn]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Person")
        do
        {
            People = try managedContext.fetch(fetchRequest)
        }
        catch let error as NSError {
            print(error)
        }
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //return 2
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        switch (section){
//        case 0 :
//            return  malearr!.count
//        case 1 :
//            return femalearr!.count
//        default:
//            return 0
       // }
        return People!.count
    }

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        var editscr = self.storyboard?.instantiateViewController(withIdentifier: "edit") as!EditScreen
//        editscr.ref = self
//        switch (indexPath.section){
//        case 0 :
//            editscr.temp = malearr![indexPath.row]
//
//        case 1 :
//            editscr.temp = femalearr![indexPath.row]
//        default:
//            0
//        }
//        self.navigationController?.pushViewController(editscr, animated: true)
//        }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!Cell
    
        var temp = People![indexPath.row]
        cell.age.text = temp.value(forKey: "age") as? String

        
        cell.name.text = (temp.value(forKey: "name") as! String)
                //  let imagee = UIImage(named: temp.image)
          //      cell.img .image = imagee
        //        switch (indexPath.section){
//        case 0 :
//            temp = malearr![indexPath.row]
//            cell.age.text = String (temp.age!)
//            cell.name.text = temp.name
//            let imagee = UIImage(named: temp.image)
//            cell.img .image = imagee
//        case 1 :
//            temp = femalearr![indexPath.row]
//            cell.age.text = String (temp.age!)
//            cell.name.text = temp.name
//            let imagee = UIImage(named: temp.image)
//            cell.img .image = imagee
//
//        default:
//            0
        //}
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
  
  //  func addPerson (person:Person)
   // {
   //     if person.image == "F"
  //      {
  //          femalearr?.append(person)
         //  UserDefaults.standard.set(femalearr, forKey: "female")
  //      }
  //      else
  //      {
  //          malearr?.append(person)
          // UserDefaults.standard.set(malearr, forKey: "male")
  //      }
   //     tableView.reloadData()
//        UserDefaults.standard.set(femalearr, forKey: "female")
//        UserDefaults.standard.set(malearr, forKey: "male")
   // }
    
    
    @IBAction func addbtm(_ sender: Any) {
        var addsc = self.storyboard?.instantiateViewController(withIdentifier: "add")as!AddScreen
       // addsc.ref = self
        self.navigationController?.pushViewController(addsc, animated: true)
    }
//    func editPerson (person:Person)
//    {
//
//        if person.image == "F"
//        {
//            femalearr?.append(person)
//
//        }
//        else
//        {
//            malearr?.append(person)
//
//        }
//        tableView.reloadData()
//
//
//    }
//    func delete (person:Person)
//    {
//        if person.image == "F"
//        {
//           // malearr?.remo
//
//        }
//            else {}
//
//    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            var alert = UIAlertController(title:"Take Care !" , message: "do you want to delete this Person?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default , handler: { [self] action in
               // var index = indexPath.row
               // movarr?.remove(at: indexPath.row)
               // switch (indexPath.section){
               // case 0 :
               //     malearr?.remove(at: indexPath.row)
              //  case 1 :
                
              //      femalearr?.remove(at: indexPath.row)
              //  default:
             //       0
             //   }
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let managedContext = appDelegate.persistentContainer.viewContext
                managedContext.delete((People?[indexPath.row])!)
                People?.remove(at: indexPath.row)
                do{
                    try managedContext.save()
                }catch let error as NSError
                {
                    print(error)
                }
                tableView.deleteRows(at: [indexPath], with: .fade)
               
                tableView.reloadData()
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil))
            self.present(alert, animated: true)
            // Delete the row from the data source
         //   tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
  
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
