//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Павел on 09.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rick"))
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 50
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Rick"
        return label
    }()
    private lazy var statusLabel : (UILabel) = {
            let subText = UILabel()
            subText.text = "Waiting for something..."
            subText.font = UIFont.systemFont(ofSize: 14 , weight: .regular)
            subText.textColor = .gray
            return subText
}()
    private lazy var setStatusButton : (UIButton) = {
            let button = UIButton()
            button.backgroundColor = .blue
            button.setTitle("Show status", for: .normal)
            button.layer.cornerRadius = 16
            button.layer.masksToBounds = false
            button.layer.shadowOffset = CGSize(width: 4, height: 4)
            button.layer.shadowRadius = 4
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.7
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            
            return button
        }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(setStatusButton)
    }
      
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        nameLabel.frame = CGRect(x: 16+100+16, y: 27, width: self.bounds.width - (16+100+16) - 16 , height: 32)
        statusLabel.frame = CGRect(x: 16+100+16, y: 60, width: 250, height: 32)
        setStatusButton.frame = CGRect(x: 16, y: 150, width: 350, height: 50)
    }
    @objc func buttonPressed() {
        print(statusLabel.text ?? "Hello")
}
}
