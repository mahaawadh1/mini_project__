//
//  ViewController.swift
//  navigation
//
//  Created by maha on 29/02/2024.
//
import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let instructionsButton = UIButton(type: .system)
    let myButton = UIButton(type: .system)
    let imageTextField = UITextField()
    let fullName = UITextField()
    let employeeSalary = UITextField()
    let email = UITextField()
    let phoneNumber = UITextField()
    let iban = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Employee Information"
        subView()
        setupUI()
        autoLayout()
        setupNavigationBar()
        
        myButton.addTarget(self, action: #selector(navigationButtonTapped), for: .touchUpInside)
        instructionsButton.addTarget(self, action: #selector(instructionsButtonTapped), for: .touchUpInside)
        
    }
    func subView() {
        
        view.addSubview(myButton)
        view.addSubview(imageTextField)
        view.addSubview(fullName)
        view.addSubview(employeeSalary)
        view.addSubview(email)
        view.addSubview(phoneNumber)
        view.addSubview(iban)
        view.addSubview(instructionsButton)
        
    }
    
    func setupUI(){
        myButton.setTitle("Save", for: .normal)
        imageTextField.placeholder = "Image Name ... "
        fullName.placeholder = " employee fullname... "
        employeeSalary.placeholder = " employee salary..."
        email.placeholder = " email address... "
        phoneNumber.placeholder = " phone number..."
        iban.placeholder = " IBAN number..."
        
        
    }
    
    func autoLayout(){
        
        fullName.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
        myButton.backgroundColor = .gray
        myButton.setTitleColor(.white, for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        myButton.layer.cornerRadius = 0
        myButton.layer.borderWidth = 1
        myButton.layer.borderColor = UIColor.black.cgColor
        
        myButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(40)
            make.leading.trailing.equalToSuperview().inset(100)
            make.height.equalTo(50)
        }
        
        imageTextField.textColor = .blue
        imageTextField.textAlignment = .left
        imageTextField.keyboardType = .default
        
        imageTextField.snp.makeConstraints { make in
            make.top.equalTo(fullName.snp.top).offset(60)
            //make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
        employeeSalary.snp.makeConstraints { make in
            make.top.equalTo(imageTextField.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(80)
        }
        email.snp.makeConstraints { make in
            make.top.equalTo(employeeSalary.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(100)
        }
        phoneNumber.snp.makeConstraints { make in
            make.top.equalTo(email.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(120)
        }
        iban.snp.makeConstraints { make in
            make.top.equalTo(phoneNumber.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(140)
        }
        instructionsButton.snp.makeConstraints { make in
            make.top.equalTo(iban.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
    }
    
    
    @objc func navigationButtonTapped(){
        print("Button Tapped")
        
        let employeeVC = EmployeeViewController()
        
        employeeVC.image = imageTextField.text
        employeeVC.name = fullName.text
        employeeVC.salary=employeeSalary.text
        employeeVC.iban=iban.text
        employeeVC.email=email.text
        employeeVC.phoneNumber=phoneNumber.text
        self.navigationController?.pushViewController(employeeVC, animated: true)
        
    }
    
    func setupNavigationBar(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "doc.badge.gearshape"),
            style: .plain,
            target: self,
            action: #selector(instructionsButtonTapped)
        )
        
    }
    
    @objc func instructionsButtonTapped(){
        print("Instructions Button Tapped")
        let instructionsVC = InstructionsViewController()
        instructionsVC.modalPresentationStyle = .popover
        self.present(instructionsVC,animated: true,completion: nil)
        self.navigationController?.pushViewController(instructionsVC, animated: true)
    }
}
    
