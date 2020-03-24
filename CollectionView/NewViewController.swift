//
//  NewViewController.swift
//  CollectionView
//
//  Created by Ray Dan on 2020/3/19.
//  Copyright © 2020 Shang-en Infp. Co.,Ltd. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
	
	lazy var myCollectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		let spacing: CGFloat = 10.0
		layout.minimumLineSpacing = 10
		layout.minimumInteritemSpacing = 10
		layout.scrollDirection = .vertical
		layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
		let width = (UIScreen.main.bounds.size.width - layout.sectionInset.left - layout.sectionInset.right - layout.minimumInteritemSpacing) / 2
		layout.itemSize = CGSize(width: width, height: 150)
		
		let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
		collectionView.backgroundColor = .white
		collectionView.dataSource = self
		collectionView.delegate = self
		collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
		
		return collectionView
	}()
	
	init() {
		super.init(nibName: nil, bundle: nil)
		modalPresentationStyle = .fullScreen
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		setupUI()
	}
	
	private func setupUI () {
		view.addSubview(myCollectionView)
	}
	
}

// MARK: - UICollectionViewDataSource
extension NewViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 30
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
		cell.titleLabel.text = "\(indexPath.item)"
		return cell
	}
}

// MARK: - UICollectionViewDelegate
extension NewViewController: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		print("index: \(indexPath.item)")
	}
}
