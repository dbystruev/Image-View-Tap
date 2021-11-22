//
//  ViewController.swift
//  Image View Tap
//
//  Created by Denis Bystruev on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var folderImageView: UIImageView!
    @IBOutlet weak var escapeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for imageView in [escapeImageView, folderImageView] {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
            imageView?.addGestureRecognizer(tapGesture)
            imageView?.isUserInteractionEnabled = true
        }
        
    }

    @objc func imageTapped(_ sender: Any) {
        guard let gesture = sender as? UITapGestureRecognizer else {
            print(#line, "ERROR: \(sender) is not \(UITapGestureRecognizer.self)")
            return
        }
        
        guard let imageView = gesture.view as? UIImageView else {
            print(#line, "ERROR: \(String(describing: gesture.view)) is not \(UIImageView.self)")
            return
        }
        
        print(#line, "\(String(describing: imageView.image))")
    }

}

