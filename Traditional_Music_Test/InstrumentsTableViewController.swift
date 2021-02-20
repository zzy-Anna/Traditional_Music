//
//  InstrumentsTableViewController.swift
//  Traditional_Music_Test
//
//  Created by Yiran Zhao on 8/6/20.
//  Copyright © 2020 People-Aware Computing Lab. All rights reserved.
//

import UIKit

struct Instrument {
    var name: String
    var description: String
}

class InstrumentTableViewCell: UITableViewCell {
    @IBOutlet weak var instrument_image: UIImageView!
    @IBOutlet weak var instrument_name: UILabel!
    
    
}
class InstrumentsTableViewController: UITableViewController {

    let instrument_list = [
        Instrument(name:"六孔陶笛", description: "中国陶笛，目前可追溯至陕西半坡遗址出土的陶哨，距今6000多年历史。"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return instrument_list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstrumentCell", for: indexPath) as! InstrumentTableViewCell

        let instrument_item = instrument_list[indexPath.row]
        cell.instrument_name?.text = instrument_item.name
        
        /* Make edits to this line of code*/
        cell.imageView?.image = UIImage(named: "place_holder")
        
        
        
        //cell.detailTextLabel?.text = instrument_item.description
        //cell.imageView?.image = UIImage(named: country.isoCode)
        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Instruments"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        //let vc = storyboard.instantiateInitialViewController()!
        //self.present(vc, animated: true, completion: nil)
        
        let instrument_item = instrument_list[indexPath.row]
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as?
            InstrumentDetailViewController
        
        vc?.name = instrument_item.name
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

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
