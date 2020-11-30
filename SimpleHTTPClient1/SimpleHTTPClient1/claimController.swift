//
//  claimController.swift
//  SimpleHTTPClient1
//
//  Created by DG on 11/29/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class claimController: UIViewController {
    
    let headerLbl = UILabel()
    let dateLbl = UILabel()
    let claimLbl = UILabel()
    let statusLbl = UILabel()
    let stateLbl = UILabel()
    let claimTxt = UITextField()
    let dateTxt = UITextField()
    let addBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerLbl.translatesAutoresizingMaskIntoConstraints = false
        claimLbl.translatesAutoresizingMaskIntoConstraints = false
        dateLbl.translatesAutoresizingMaskIntoConstraints = false
        statusLbl.translatesAutoresizingMaskIntoConstraints = false
        stateLbl.translatesAutoresizingMaskIntoConstraints = false
        claimTxt.translatesAutoresizingMaskIntoConstraints = false
        dateTxt.translatesAutoresizingMaskIntoConstraints = false
        addBtn.translatesAutoresizingMaskIntoConstraints = false
        
        headerLbl.text = "Please Enter Claim Information"
        headerLbl.textAlignment = .center
        headerLbl.font = UIFont.systemFont(ofSize: 50)
        headerLbl.minimumScaleFactor = 0.1
        headerLbl.adjustsFontSizeToFitWidth = true
        claimLbl.text = "Claim Title"
        dateLbl.text = "Date"
        statusLbl.text = "Status: "
        stateLbl.text = "<Status Message>"
        claimTxt.backgroundColor = .gray
        claimTxt.text = "<Claim>"
        dateTxt.backgroundColor = .gray
        dateTxt.text = "<Date>"
        
        addBtn.setTitle("Claim", for: .normal)
        addBtn.setTitleShadowColor(.blue, for: .normal)
        addBtn.backgroundColor = .darkGray
        
        view.addSubview(headerLbl)
        view.addSubview(claimLbl)
        view.addSubview(dateLbl)
        view.addSubview(statusLbl)
        view.addSubview(stateLbl)
        view.addSubview(claimTxt)
        view.addSubview(dateTxt)
        view.addSubview(addBtn)
        view.backgroundColor = .lightGray
        
        headerLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        headerLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        headerLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        headerLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        claimLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        claimLbl.topAnchor.constraint(equalTo: headerLbl.bottomAnchor, constant: 20).isActive = true
        claimLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        claimLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        claimTxt.leadingAnchor.constraint(equalTo: claimLbl.trailingAnchor, constant: 10).isActive = true
        claimTxt.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        claimTxt.topAnchor.constraint(equalTo: claimLbl.topAnchor).isActive = true
        
        dateLbl.leadingAnchor.constraint(equalTo: claimLbl.leadingAnchor).isActive = true
        dateLbl.topAnchor.constraint(equalTo: claimLbl.bottomAnchor, constant: 20).isActive = true
        dateLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        dateLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        dateTxt.leadingAnchor.constraint(equalTo: claimTxt.leadingAnchor).isActive = true
        dateTxt.trailingAnchor.constraint(equalTo: claimTxt.trailingAnchor).isActive = true
        dateTxt.topAnchor.constraint(equalTo: dateLbl.topAnchor).isActive = true
        
        addBtn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        addBtn.topAnchor.constraint(equalTo: dateTxt.bottomAnchor, constant: 20).isActive = true
        addBtn.heightAnchor.constraint(equalToConstant: 20).isActive = true
        addBtn.widthAnchor.constraint(equalToConstant: 55).isActive = true
        
        statusLbl.leadingAnchor.constraint(equalTo: claimLbl.leadingAnchor).isActive = true
        statusLbl.topAnchor.constraint(equalTo: addBtn.bottomAnchor, constant: 20).isActive = true
        statusLbl.widthAnchor.constraint(equalToConstant: 60).isActive = true
        statusLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        stateLbl.leadingAnchor.constraint(equalTo: statusLbl.trailingAnchor, constant: 10).isActive = true
        stateLbl.topAnchor.constraint(equalTo: statusLbl.topAnchor).isActive = true
        stateLbl.trailingAnchor.constraint(equalTo: claimTxt.trailingAnchor).isActive = true
        
        addBtn.addTarget(self, action: #selector(addClaim), for: .touchUpInside)
    }
    
    @objc func addClaim () {
        stateLbl.text = "Claim \(claimTxt.text!) failed to be created"
        claimTxt.endEditing(true)
        dateTxt.endEditing(true)
    }
}
