//
//  MyCollectionViewCell.swift
//  CollectionView
//
//  Created by Ray Dan on 2020/3/19.
//  Copyright © 2020 Shang-en Infp. Co.,Ltd. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
	
	lazy var titleLabel: UILabel = {
		let label = UILabel(frame: contentView.bounds)
		
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupUI()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupUI() {
		titleLabel.textAlignment = .center
		contentView.layer.borderWidth = 1
		contentView.layer.cornerRadius = 5
		contentView.backgroundColor = .white
		contentView.addSubview(titleLabel)
	}
}
