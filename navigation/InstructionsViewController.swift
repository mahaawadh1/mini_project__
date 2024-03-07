//
//  InstructionsViewController.swift
//  navigation
//
//  Created by maha on 29/02/2024.
//

import UIKit
import SnapKit

class InstructionsViewController: UIViewController {
    
    let instructionsLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(instructionsLabel)
        setupUI()
        autoLayout()
    }
    
    func setupUI(){
        instructionsLabel.text = "1. Fill out the employee form with the required information.\n2. Tap the 'Save' button to save the employee.\n3. The employee will be displayed in the EmployeeViewController."
        instructionsLabel.numberOfLines = 0
        instructionsLabel.textAlignment = .center
    }
    
    func autoLayout(){
        instructionsLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }
}
