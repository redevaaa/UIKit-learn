//
//  ProductTableViewCell.swift
//  UITableView
//
//  Created by admin on 2020/12/8.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    var productImage = UIImageView()
    var productName = UILabel()
    var productDetail = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        productImage.frame = CGRect(x: 10, y: 10, width: 80, height: 80)
        productImage.contentMode = .scaleAspectFit
        addSubview(productImage)


        productName.frame = CGRect(x: 95, y: 15, width: 100, height: 20)
        productName.font = .systemFont(ofSize: 20)
        productName.textAlignment = .left
        productName.textColor = .black
        addSubview(productName)


        productDetail.frame = CGRect(x: 95
                                     , y: 33, width: 250, height: 60)
        productDetail.font = .systemFont(ofSize: 10)
        productName.textAlignment = .left
        productDetail.adjustsFontSizeToFitWidth = true
        productDetail.textColor = .gray
        productDetail.numberOfLines = 4
        addSubview(productDetail)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
