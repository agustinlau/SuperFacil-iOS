//
//  ViewController.swift
//  SuperFacil
//
//  Created by Agustin Lau on 10/22/18.
//  Copyright © 2018 Agustin A. Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let produceButton = UIButton()
        let produceImage = UIImage(named: "produce") as UIImage?
        produceButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        produceButton.setImage(produceImage, for: .normal)
        produceButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(produceButton)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
        let view = ProductListViewController()
//        view.category = "test"
        self.navigationController?.pushViewController(view, animated: true)
        
    }


}

