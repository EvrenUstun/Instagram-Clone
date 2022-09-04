//
//  IGFeedPostHeaderTableViewCell.swift
//  Instagram
//
//  Created by Evren Ustun on 23.07.2022.
//

import UIKit

class IGFeedPostHeaderTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostHeaderTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(){
        // configure the cell
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
