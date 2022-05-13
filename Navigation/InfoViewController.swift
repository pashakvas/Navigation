//
//  InfoViewController.swift
//  Navigation
//
//  Created by Павел on 03.03.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemFill
        
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.setTitle("The Best Series", for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func tap() {
        let alertVC = UIAlertController(title: "The Best Series", message: "Rick or Morty?", preferredStyle: .alert)
        let leftAction = UIAlertAction(title: "Rick", style: .cancel, handler: {(action:UIAlertAction!) in print("Rick")})
        let rightAction = UIAlertAction(title: "Morty", style: .default, handler: {(action:UIAlertAction!) in print("Morty")})
        alertVC.addAction(leftAction)
        alertVC.addAction(rightAction)
        self.present(alertVC, animated: true, completion: nil)
    }

}

