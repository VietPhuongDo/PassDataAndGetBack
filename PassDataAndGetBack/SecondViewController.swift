//
//  SecondViewController.swift
//  PassDataAndGetBack
//
//  Created by PhuongDo on 12/12/2023.
//

import UIKit

protocol passDataToVC{
    func passData(str: String)
}

class SecondViewController: UIViewController {
    
    var data = ""
    var delegate: passDataToVC!

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = data
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickButton(_ sender: UIButton) {
        delegate.passData(str: textField.text!)
        navigationController?.popViewController(animated: true)
    }
    

}
