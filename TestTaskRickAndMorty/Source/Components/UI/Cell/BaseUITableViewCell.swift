//
//  BaseUITableViewCell.swift
//  TestTaskRickAndMorty
//
//  Created by Roman Gorshkov on 10.12.2021.
//

import UIKit

class BaseUITableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {}
}
