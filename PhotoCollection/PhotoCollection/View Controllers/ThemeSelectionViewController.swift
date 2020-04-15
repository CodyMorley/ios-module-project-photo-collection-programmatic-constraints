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
    
    func setUpSubviews() {
        let darkButton = UIButton(type: .system)
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        darkButton.setTitle("Dark Theme", for: .normal)
        darkButton.target(forAction: #selector(selectDarkTheme), withSender: self)
        view.addSubview(darkButton)
        
        let blueButton = UIButton(type: .system)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.setTitle("Blue Theme", for: .normal)
        blueButton.target(forAction: #selector(selectBlueTheme), withSender: self)
        view.addSubview(blueButton)
        
        
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
