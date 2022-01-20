//
//  SecondScreen.swift
//  BookmarkUIKit
//
//  Created by Алдияр Айтпаев on 18.01.2022.
//

import UIKit
import SnapKit


class SecondScreen: UIViewController {
    
    var label: UILabel = {
        let textView = UILabel()
        textView.text = "Bookmark App"
        textView.textColor = .black
        textView.frame = CGRect(x: 130, y: 56, width: 130, height: 22)
        textView.font = UIFont.boldSystemFont(ofSize: 17)
        return textView
    }()
    
    var label2: UILabel = {
        let textView2 = UILabel()
        textView2.numberOfLines = 2
        textView2.text = "Save your first bookmark"
        textView2.textColor = .black
        textView2.frame = CGRect(x: 75, y: 366, width: 358, height: 92)
        textView2.font = UIFont.boldSystemFont(ofSize: 36)
        textView2.numberOfLines = 0
        return textView2
    }()

    var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 710, width: 350, height: 58))
        button.backgroundColor = .black
        button.setTitle("Add bookmark", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)


        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(label)
        
        view.addSubview(label2)

        view.addSubview(button)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }
}
        
