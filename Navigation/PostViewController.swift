//
//  PostViewController.swift
//  Navigation
//
//  Created by Павел on 03.03.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Hello world!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.navigationItem.title = "Profile"
     
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tap))
        self.navigationItem.title = titlePost
    }
    
            @objc func tap() {
                let vc = InfoViewController()
                vc.modalPresentationStyle = .automatic
                self.present(vc, animated: true)
    }
}
