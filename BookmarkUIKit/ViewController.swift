//
//  ViewController.swift
//  BookmarkUIKit
//
//  Created by Алдияр Айтпаев on 18.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @objc private func buttonDidPress() {
        print("Button was pressed!")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image")
        imageView.frame = CGRect(x: 0, y: 0, width: 390, height: 614)
        
//        let label = UILabel()
//        label.text = "something"
//        label.textColor = .green
//        label.frame = CGRect(x: 0, y: 614, width: 358, height: 92)
        
        let textView = UILabel()
        textView.text = "Save all interesting links in one app"
        textView.frame = CGRect(x: 0, y: 614, width: 358, height: 92)
        textView.textColor = .white
        textView.font = UIFont.systemFont(ofSize: 36)
        textView.numberOfLines = 0
        
//        let button = UIButton()
//        button.setTitle("Press me!", for: .normal)
//        button.addTarget(self, action: #selector(buttonDidPress), for: .touchUpInside)
//        button.setTitleColor(.black, for: .normal)
        
        let button = UIButton(type: .custom)
        button.setTitle("Let’s start collecting", for: .normal)
        button.frame = CGRect(x: 0, y: 730, width: 358, height: 58)
        button.addTarget(self, action: #selector(buttonDidPress), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 16

        
        view.addSubview(imageView)
        view.addSubview(textView)
        view.addSubview(button)
    
    }
}


