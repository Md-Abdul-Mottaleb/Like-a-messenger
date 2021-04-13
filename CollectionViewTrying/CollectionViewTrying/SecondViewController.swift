//
//  SecondViewController.swift
//  CollectionViewTrying
//
//  Created by MacBook Pro on 8/4/21.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    var name = String()
    
    var iimage = Int()
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var namelabel2: UILabel!
    
    @IBOutlet weak var myswitch: UISwitch!
    
    
    @IBOutlet weak var texting: UITextField!
    
    @IBOutlet weak var buttoning: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image2.image = imagearray[iimage]
        
        self.title = "Text Field"
        
        namelabel2.text = "\(name)"
        
        image2.layer.cornerRadius = image2.frame.height / 2
        image2.layer.cornerRadius = image2.frame.width / 2
        
        texting.returnKeyType = .done
        texting.autocapitalizationType = .words
        texting.autocorrectionType = .no
        texting.becomeFirstResponder()
        texting.delegate = self
        
    }
    @IBAction func Tappedbutton(){
        texting.resignFirstResponder()
        
    }
    
    @IBAction func switchDidChanged(_ sender: UISwitch){
        
        
        if sender.isOn{
            view.backgroundColor = .white
            
        }else{
            
            view.backgroundColor = .darkGray
        }
    }

}
extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
