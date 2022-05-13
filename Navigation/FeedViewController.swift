//
//  FeedViewController.swift
//  Navigation
//
//  Created by Павел on 28.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    var post = Post(title: "POST")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.navigationItem.title = "Feed"
        let button = UIButton (frame: CGRect(x: 100, y: 300, width: 200, height: 50))
                button.setTitle("Press me", for: .normal)
                button.addTarget(self, action: #selector(tap), for: .touchUpInside)
                view.addSubview(button)
            }
            @objc func tap() {
                let vc = PostViewController()
                navigationController?.pushViewController(vc, animated: true)
            }

    }

