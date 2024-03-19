//
//  ViewController.swift
//  lec2
//
//  Created by Vin Bui on 9/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties (view)
    
    // 1. Create the view property
    private let nameLabel = UILabel()
    
    // MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        // 6. Call setup function
        setupNameLabel()
    }
    
    // MARK: - Set Up Views
    
    // 2. Setup the view
    private func setupNameLabel() {
        // 3. Configure the view's properties
        nameLabel.text = "Vin"
        nameLabel.font = .systemFont(ofSize: 24)
        nameLabel.textColor = UIColor.black
        
        // 4. Add view as a subview and enable auto-layout
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 5. Set Up Constraints
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
