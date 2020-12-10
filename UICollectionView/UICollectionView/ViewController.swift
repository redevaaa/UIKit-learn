//
//  ViewController.swift
//  UICollectionView
//
//  Created by admin on 2020/12/9.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //返回分区个数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //返回每个分区的item个数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    //返回每个分区具体的数据载体item
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemId", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    //用户交互
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("第\(indexPath.row)个item被点击")
    }
    //动态设置每个item尺寸
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row % 2 != 0{
            return CGSize(width: 50, height: 50)
        } else {
            return CGSize(width: 100, height: 100
            )
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical //竖直方向布局
        layout.itemSize = CGSize(width: 100, height: 100) //设置每个数据载体的尺寸
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        //设置代理和数据源
        collectionView.delegate = self
        collectionView.dataSource = self
        //注册数据载体类
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "itemId")
        view.addSubview(collectionView)
        
        layout.minimumLineSpacing = 30 //最小行间距
        layout.minimumInteritemSpacing = 100 //最小列间距
        layout.headerReferenceSize = CGSize(width: self.view.frame.size.width, height: 100)
        layout.footerReferenceSize = CGSize(width: self.view.frame.size.width, height: 100)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }


}

