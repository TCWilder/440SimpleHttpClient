//
//  PersonDetailSectionGenerator.swift
//  SimpleHTTPClient1
//
//  Created by ITLoaner on 10/27/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class PersonDetailSectionGenerator {

    func generate() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 5
        //
        var vGenerator = FieldValueViewGenerator(n:"First Name")
        var sView = vGenerator.generate()
        stackView.addArrangedSubview(sView)
        vGenerator = FieldValueViewGenerator(n:"Last Name")
        sView = vGenerator.generate()
        stackView.addArrangedSubview(sView)
        vGenerator = FieldValueViewGenerator(n:"SSN")
        sView = vGenerator.generate()
        stackView.addArrangedSubview(sView)
        return stackView
    }
}
