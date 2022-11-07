//
//  CollectionViewCell.swift
//  ViewCollection
//
//  Created by ILYA POPOV on 06.11.2022.
//

import UIKit

class MyCustomCell: UICollectionViewCell {
    
    let image: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "12")
        iv.clipsToBounds = true
        iv.frame = CGRect(x: 6, y: 6, width: 159, height: 167)
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    let nameCat: UILabel = {
        let name = UILabel()
        name.text = "My cat"
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 16)
        name.frame = CGRect(x: 12, y: 179, width: 120, height: 30)
        return name
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(image)
        contentView.addSubview(nameCat)
        //setImageConstraints()
        //setNameCatConstraints()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImageConstraints() {
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 6).isActive = true
        image.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: 167).isActive = true
    }
    
    func setNameCatConstraints() {
        nameCat.translatesAutoresizingMaskIntoConstraints = false
        nameCat.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        nameCat.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
        nameCat.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
        nameCat.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -24).isActive = true
    }
    
}
