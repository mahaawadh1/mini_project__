//
//  DetaildViewController.swift
//  navigation
//
//  Created by maha on 29/02/2024.
//
import UIKit
import SnapKit

class EmployeeViewController: UIViewController {
    
    var image : String?
    var name : String?
    var salary : String?
    var email : String?
    var phoneNumber : String?
    var iban : String?
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let emailLabel = UILabel()
    let phoneNumberLabel = UILabel()
    let ibanLabel = UILabel()
    let salaryLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Employee Details"
        
        view.addSubview(imageView)
        
        setupUI()
        setupAutoLayout()
    }
    
    func setupUI(){
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: image ?? "")
        
        nameLabel.text = name
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        view.addSubview(nameLabel)
        
       
        salaryLabel.text = "Salary: \(salary ?? "")"
        salaryLabel.font = UIFont.systemFont(ofSize: 18)
        view.addSubview(salaryLabel)
      
        emailLabel.text = "Email: \(email ?? "")"
        emailLabel.font = UIFont.systemFont(ofSize: 18)
        view.addSubview(emailLabel)
        
        
        phoneNumberLabel.text = "Phone Number: \(phoneNumber ?? "")"
        phoneNumberLabel.font = UIFont.systemFont(ofSize: 18)
        view.addSubview(phoneNumberLabel)
        
        ibanLabel.text = "IBAN: \(iban ?? "")"
        ibanLabel.font = UIFont.systemFont(ofSize: 18)
        view.addSubview(ibanLabel)
        
       
        
    }
    
    func setupAutoLayout() {
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(250)
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        salaryLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(salaryLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        ibanLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
    }
}
        
