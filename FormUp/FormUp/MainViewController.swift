//
//  ViewController.swift
//  FormUp
//
//  Created by Aditya Bhatia on 2019-05-19.
//  Copyright © 2019 adbht. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: Properties
    let tapticFeedback = UINotificationFeedbackGenerator()
    
    // MARK: UI Element
    let navBarView: UIView = {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height * 0.15
        let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        view.backgroundColor = UIColor(hex: 0x4A7073)
        return view
    }()
    
    let navBarTitle: UILabel = {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height * 0.15
        let label = UILabel(frame: CGRect(x: 0, y: 15, width: width, height: height))
        label.textAlignment = .center
        label.text = "FORMUP"
        label.font = UIFont(name: "Copperplate", size: 30)
        label.textColor = .white
        return label
    }()
    
    let calisthenicsButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        button.tag = 0
        button.layer.cornerRadius = 10.0
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 10.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.backgroundColor = UIColor(hex: 0x4A7073)
        button.setTitle("CALISTHENICS", for: .normal)
        button.addTarget(self, action: #selector(tapped(the:)), for: .touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    let weightsButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        button.tag = 1
        button.layer.cornerRadius = 10.0
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 10.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.backgroundColor = UIColor(hex: 0x4A7073)
        button.setTitle("WEIGHTS", for: .normal)
        button.addTarget(self, action: #selector(tapped(the:)), for: .touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
   
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpNavBar()
        addButtons()
    }
    
    // MARK: Methods
    func addButtons() {
        view.addSubview(calisthenicsButton)
        calisthenicsButton.center.x = view.center.x
        calisthenicsButton.center.y = view.center.y - 100
        
        view.addSubview(weightsButton)
        weightsButton.center.x = view.center.x
        weightsButton.center.y = view.center.y + 100
    }
    
    func setUpNavBar() {
        view.addSubview(navBarView)
        navBarView.addSubview(navBarTitle)
    }
    
    @objc func tapped(the button: UIButton) {
        let destination = button.tag == 0 ? CalisthenicsViewController() : WeightsViewController()
        present(destination, animated: true, completion: nil)
    }
}

// MARK: Extensions

