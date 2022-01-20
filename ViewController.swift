//
//  ViewController.swift
//  TIP CALCULATOR
//
//  Created by Chirag Singh on 1/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Totallbl: UILabel!
    @IBOutlet weak var TIPlbl: UILabel!
    
    @IBOutlet weak var Billpercenttxt: UITextField!
    @IBOutlet weak var billamountxt: UITextField!
    @IBOutlet weak var calcbtn: UIButton!
    
    @IBAction func GetTip(_ sender: Any) {
        
        let totalamount:Double = Double(billamountxt.text!)!
        let billamount:Double = (Double(Billpercenttxt.text!)! / 100) * totalamount
        
        TIPlbl.text = "\(billamount)"
        
        Totallbl.text = "\(billamount + totalamount)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

