//
//  InstrumentDetailViewController.swift
//  Traditional_Music_Test
//
//  Created by Yiran Zhao on 8/9/20.
//  Copyright © 2020 People-Aware Computing Lab. All rights reserved.
//

import UIKit

class InstrumentDetailViewController: UIViewController {
    
    @IBOutlet weak var inst_name: UILabel!
    @IBOutlet weak var inst_description: UILabel!
    
    @IBAction func playSound(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "PlaySoundViewController")
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func showInst(_ sender: UIButton) {
    }
    
    var image = UIImage()
    var name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inst_name.text = name
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

}
