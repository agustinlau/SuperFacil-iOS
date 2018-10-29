//
//  ViewController.swift
//  SuperFacil
//
//  Created by Agustin Lau on 10/22/18.
//  Copyright © 2018 Agustin A. Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let categories: [String] = ["Produce", "Dairy", "Meat and Seafood"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        
        // Set up produce button
        let produceImage = UIImage(named: "produce") as UIImage?
        let produceButton = UIButton()
        produceButton.setTitle(categories[0], for: .normal)
        produceButton.frame = CGRect(x: 35, y: 125, width: 100, height: 100)
        produceButton.setImage(produceImage, for: .normal)
        produceButton.layer.cornerRadius = produceButton.frame.size.width / 2
        produceButton.clipsToBounds = true
        produceButton.addTarget(self, action: #selector(goToProductListPage), for: .touchUpInside)
        
        // Set up produce label
        let produceLabel = UILabel()
        produceLabel.frame = CGRect(x: 55, y: 190, width: 100, height: 100)
        produceLabel.text = categories[0]
        
        // Set up dairy button
        let dairyImage = UIImage(named: "dairy") as UIImage?
        let dairyButton = UIButton()
        dairyButton.setTitle(categories[1], for: .normal)
        dairyButton.frame = CGRect(x: 155, y: 125, width: 100, height: 100)
        dairyButton.setImage(dairyImage, for: .normal)
        dairyButton.layer.cornerRadius = dairyButton.frame.size.width / 2
        dairyButton.clipsToBounds = true
        dairyButton.addTarget(self, action: #selector(goToProductListPage), for: .touchUpInside)
        // Set up dairy label
        let dairyLabel = UILabel()
        dairyLabel.frame = CGRect(x: 180, y: 190, width: 100, height: 100)
        dairyLabel.text = categories[1]
        
        // Set up meat and seafood button
        let meatSeafoodImage = UIImage(named: "meat-and-seafood") as UIImage?
        let meatSeafoodButton = UIButton()
        meatSeafoodButton.setTitle(categories[2], for: .normal)
        meatSeafoodButton.frame = CGRect(x: 275, y: 125, width: 100, height: 100)
        meatSeafoodButton.setImage(meatSeafoodImage, for: .normal)
        meatSeafoodButton.layer.cornerRadius = meatSeafoodButton.frame.size.width / 2
        meatSeafoodButton.clipsToBounds = true
        meatSeafoodButton.addTarget(self, action: #selector(goToProductListPage), for: .touchUpInside)
        // Set up meat and seafood label
        let meatSeafoodLabel = UILabel()
        meatSeafoodLabel.frame = CGRect(x: 260, y: 190, width: 200, height: 100)
        meatSeafoodLabel.text = categories[2]

        // Display all buttons
        self.view.addSubview(produceButton)
        self.view.addSubview(dairyButton)
        self.view.addSubview(meatSeafoodButton)
        
        // Display all labels
        self.view.addSubview(produceLabel)
        self.view.addSubview(dairyLabel)
        self.view.addSubview(meatSeafoodLabel)
        
    }
    
    @objc func goToProductListPage(sender: UIButton!) {
        let view = ProductListViewController()
        view.category = sender.currentTitle ?? "food"
        self.navigationController?.pushViewController(view, animated: true)
    }


}

