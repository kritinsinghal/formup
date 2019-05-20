//
//  SelectionViewController.swift
//  FormUp
//
//  Created by Aditya Bhatia on 2019-05-19.
//  Copyright © 2019 adbht. All rights reserved.
//

import UIKit
import SafariServices

class CalisthenicsViewController: UIViewController {
    
    // MARK: Properties
    let url = NSURL(string: "https://facebook.com")!
    
    // MARK: UI Elements
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
        label.text = "FORM UP"
        label.font = .boldSystemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    
    let pushUpsButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        button.tag = 0
        button.layer.cornerRadius = 10.0
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 10.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.backgroundColor = UIColor(hex: 0x4A7073)
        button.setTitle("PUSH UPS", for: .normal)
        button.addTarget(self, action: #selector(tapped(the:)), for: .touchUpInside)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return button
    }()
    
    let pullUpsButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        button.tag = 1
        button.layer.cornerRadius = 10.0
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 10.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.backgroundColor = UIColor(hex: 0x4A7073)
        button.setTitle("PULL UPS", for: .normal)
        button.addTarget(self, action: #selector(tapped(the:)), for: .touchUpInside)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return button
    }()

    let backButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.tag = 2
        button.layer.cornerRadius = 30.0
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 10.0
        button.backgroundColor = .white
        button.setBackgroundImage(UIImage(named: "cross.png"), for: .normal)
        button.addTarget(self, action: #selector(dissmissView), for: .touchUpInside)
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
        view.addSubview(pushUpsButton)
        pushUpsButton.center.x = view.center.x
        pushUpsButton.center.y = view.center.y - 100
        
        view.addSubview(pullUpsButton)
        pullUpsButton.center.x = view.center.x
        pullUpsButton.center.y = view.center.y + 100
        
        view.addSubview(backButton)
        let height = UIScreen.main.bounds.height * 0.90
        backButton.center.x = view.center.x
        backButton.center.y = height
    }
    
    // MARK: Methods
    func setUpNavBar() {
        view.addSubview(navBarView)
        navBarView.addSubview(navBarTitle)
    }
    
    @objc func tapped(the button: UIButton) {
        // launch the camera
        let svc = SFSafariViewController(url: url as URL)
        present(svc, animated: true, completion: nil)
    }
    
    @objc func dissmissView() {
        dismiss(animated: true, completion: nil)
    }
}

// MARK: Extensions
