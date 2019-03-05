//
//  ViewController.swift
//  StackViewVsScrollView
//
//  Created by trinh.hoang.hai on 3/5/19.
//  Copyright © 2019 trinh.hoang.hai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupConstraints()

    }

    func setupConstraints() {

        let redView = UIView()
        let orangeView = UIView()
        let blueView = UIView()
        let greenView = UIView()

        redView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false

        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        blueView.backgroundColor = .blue
        greenView.backgroundColor = .green

        self.view.addSubview(redView)
        self.view.addSubview(orangeView)
        self.view.addSubview(blueView)
        self.view.addSubview(greenView)

        redView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true


        orangeView.firstBaselineAnchor.constraint(equalTo: redView.firstBaselineAnchor).isActive = true
        orangeView.lastBaselineAnchor.constraint(equalTo: redView.lastBaselineAnchor).isActive = true
        orangeView.leadingAnchor.constraint(equalTo: redView.trailingAnchor, constant: 2).isActive = true
        orangeView.widthAnchor.constraint(equalToConstant: 40)


        greenView.firstBaselineAnchor.constraint(equalTo: redView.firstBaselineAnchor).isActive = true
        greenView.lastBaselineAnchor.constraint(equalTo: redView.lastBaselineAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -2).isActive = true
        greenView.widthAnchor.constraint(equalToConstant: 40)


        blueView.leadingAnchor.constraint(equalTo: redView.leadingAnchor).isActive = true
        blueView.trailingAnchor.constraint(equalTo: redView.trailingAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: redView.topAnchor, constant: 20)
        blueView.heightAnchor.constraint(equalToConstant: 40)



    }
}

