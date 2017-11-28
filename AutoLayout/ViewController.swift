//
//  ViewController.swift
//  AutoLayout
//
//  Created by Channat Tem on 11/28/17.
//  Copyright © 2017 Channat Tem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dogImageView: UIImageView = {
       let imageView = UIImageView(image: #imageLiteral(resourceName: "sun"))
        // enable auto layout for imageview
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today!"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(descriptionTextView)
        setupLayout()

    }
    
    private func setupLayout() {

          // ---------- Top Container -----------
        let topImageContainerImageView = UIView()
        topImageContainerImageView.backgroundColor = .blue
        view.addSubview(topImageContainerImageView)
        topImageContainerImageView.translatesAutoresizingMaskIntoConstraints = false

        topImageContainerImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        // hiegh half of the screen
        topImageContainerImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        // --------- Dog Image ---------
        topImageContainerImageView.addSubview(dogImageView)
        dogImageView.centerXAnchor.constraint(equalTo: topImageContainerImageView.centerXAnchor).isActive = true
        dogImageView.centerYAnchor.constraint(equalTo: topImageContainerImageView.centerYAnchor).isActive = true
        dogImageView.heightAnchor.constraint(equalTo: topImageContainerImageView.heightAnchor, multiplier: 0.5).isActive = true

        // -------- Description TextView --------
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerImageView.bottomAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
    }
    
   
}

