//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    var themeHelper: ThemeHelper?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }
    
    func setUpSubviews() {
        let darkButton = UIButton(type: .system)
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        darkButton.setTitle("Dark Theme", for: .normal)
        darkButton.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        view.addSubview(darkButton)
        
        let blueButton = UIButton(type: .system)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.setTitle("Blue Theme", for: .normal)
        blueButton.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
        view.addSubview(blueButton)
        
        darkButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        darkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        darkButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -20).isActive = true
        
        blueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        blueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        blueButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        
    }
    
    
    @objc func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    
}
