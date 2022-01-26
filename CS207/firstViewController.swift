//
//  firstViewController.swift
//  CS207
//
//  Created by Johnny Pesavento on 1/24/22.
//

import UIKit

class firstViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    @IBAction func clickBtn(_ sender: Any) {
        print("Button clicked!")
        
        messageLabel.text = "Hello " + nameLabel.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello from firstViewController")

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
