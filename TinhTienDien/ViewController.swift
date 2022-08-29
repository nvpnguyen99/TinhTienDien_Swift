//
//  ViewController.swift
//  TinhTienDien
//
//  Created by Nguyễn Văn Phước Nguyên on 26/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionCalculate(_ sender: UIButton) {
        if let number = Int(inputTextField.text ?? ""),
           number > 0 {
            var money = 0
            switch money{
            case ...50:
                money = number * 1549
            case 50...100:
                money = 50 * 1549 + (number-50) * 1600
            case 100...200:
                money = 50 * 1549 + 50*1600 + (number-100)*1858
            default:
                money = 50*1549 + 50*1600 + 100*1858 + (number-200)*2340
            }
            let alertController = UIAlertController(title: "Thông báo", message: "Tổng số tiền: \(money)", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default){ _ in
                self.inputTextField.text = ""
            }
            
            alertController.addAction(okAction)
            present(alertController, animated: true)
        } else {
            // Nếu số nhập vào không hợp lệ
            let alertController = UIAlertController(title: "Error", message: "Nhập số lớn hơn 0", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
                self.inputTextField.text = ""
            }
            
            alertController.addAction(okAction)
            present(alertController, animated: true)
        }
    }
}

