//
//  ViewController.swift
//  SampleCalcAppXcode11_3
//
//  Created by Muneharu Onoue on 2019/12/20.
//  Copyright © 2019 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var lb: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calc(_ sender: UIButton) {
        // テキストフィールドから数値を取得
        let i1 = Int(tf1.text!) ?? 0
        let i2 = Int(tf2.text!) ?? 0
        
        // 足し算して結果を取得
        let result = i1 + i2
        
        // 結果をラベルに表示
        lb.text = "\(result)"
        
        // キーボードを閉じる
        view.endEditing(true)
    }
    
}

