//
//  IGFeedPostActionTableViewCell.swift
//  Instagram
//
//  Created by Evren Ustun on 23.07.2022.
//

import UIKit

class IGFeedPostActionTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostActionTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemGreen
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
