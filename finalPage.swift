//
//  finalpage.swift
//  HackTJ4-10-2021
//
//  Created by Shuji Yoshizaki on 4/10/21.
//

import UIKit

class finalpage: UIViewController {

    public var checkedBoxes = [Bool]()
    public var completionHandler: (([Bool]?)-> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        checkedBoxes = [false, false, false,false,false,false,false,false,false,false,false,false,]

        // Do any additional setup after loading the view.
    }
    
    

    
    
    
    @IBAction func checkbox1(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[0] = true
        } else {
            sender.isSelected = true
        }
    }
    
    @IBAction func checkbox2(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[1] = true
        } else {
            sender.isSelected = true
        }
    }
    @IBAction func checkbox3(_ sender: UIButton) {
    if sender.isSelected {
        sender.isSelected = false
        checkedBoxes[2] = true

    } else {
        sender.isSelected = true
    }
    }
    @IBAction func checkbox4(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[3] = true

        } else {
            sender.isSelected = true
        }
    }
    
    @IBAction func checkbox5(_ sender: UIButton){
        if sender.isSelected {
        sender.isSelected = false
            checkedBoxes[4] = true

    } else {
        sender.isSelected = true
    }
    }
    @IBAction func checkbox6(_ sender: UIButton) {
        if sender.isSelected {
        sender.isSelected = false
            checkedBoxes[5] = true

    } else {
        sender.isSelected = true
    }
    }
    @IBAction func checkbox7(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[6] = true

        } else {
            sender.isSelected = true
        }
    
    }
    @IBAction func checkbox8(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[7] = true

        } else {
            sender.isSelected = true
        }
    }
    @IBAction func checkbox9(_ sender: UIButton) {if sender.isSelected {
        sender.isSelected = false
        checkedBoxes[8] = true

    } else {
        sender.isSelected = true
    }
     }
    @IBAction func checkbox10(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[9] = true

        } else {
            sender.isSelected = true
        }
     }
    @IBAction func checkbox11(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[10] = true

        } else {
            sender.isSelected = true
        }
    }
    @IBAction func checkbox12(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            checkedBoxes[11] = true

        } else {
            sender.isSelected = true
        }
    }
    
    
    
    @IBAction func didTapButton(){
            let vc = storyboard?.instantiateViewController(identifier: "personalizedList") as! personalizedpage
        vc.array = checkedBoxes
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
