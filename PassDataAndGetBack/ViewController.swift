//
//  ViewController.swift
//  PassDataAndGetBack
//
//  Created by PhuongDo on 12/12/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = textField.text!
        vc?.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
    }
}

extension ViewController:passDataToVC{
    func passData(str: String) {
        textField.text = str
    }
}


