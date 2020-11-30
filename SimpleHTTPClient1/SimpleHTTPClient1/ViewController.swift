//
//  ViewController.swift
//  SimpleHTTPClient1
//
//  Created by ITLoaner on 10/6/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func refreshScreen(pObj : Person) {
        vals[0].text = pObj.firstName
        vals[1].text = pObj.lastName
        vals[2].text = pObj.ssn
    }

    var vals = [UITextField]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1.Prepare the UI Screen
        let vGenerator = PersonDetailSectionGenerator()
        let sView = vGenerator.generate()
        //
        view.addSubview(sView)
        //
        let cViews = sView.arrangedSubviews
        //vals = [UITextField]()
        for sv in cViews {  // 3 of them
            let innerStackView = sv as! UIStackView
            for ve in innerStackView.arrangedSubviews { // 2 of them
                if ve is UITextField {
                    vals.append(ve as! UITextField)
                }
            }
        }
        //
        for i in 0...vals.count-1 {
            vals[i].translatesAutoresizingMaskIntoConstraints = false
            let constr = vals[i].leadingAnchor.constraint(equalTo: vals[0].leadingAnchor)
            constr.isActive = true
        }
        //
        sView.translatesAutoresizingMaskIntoConstraints = false
        let tCont = sView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        let lCont = sView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        let trCont = sView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        tCont.isActive = true
        lCont.isActive = true
        trCont.isActive = true
        
        // 2. Retrieve data
        let pService = PersonService(vc : self)
        // Testing getAll() method
        pService.getAll()

    }


}

