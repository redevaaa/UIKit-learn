//
//  ViewController.swift
//  UITableView
//
//  Created by admin on 2020/12/8.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray: [Product] = []
    
    //MARK: 必要函数
    //设置列表行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    //设置每行数据的数据载体Cell视图
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId",for: indexPath) as? ProductTableViewCell
        cell?.productName.text = dataArray[indexPath.row].name
        cell?.productDetail.text = dataArray[indexPath.row].details
        cell?.productImage.image =  UIImage(named: dataArray[indexPath.row].imageName)
        return cell!
    }
    
    //MARK: 可选函数
    //设置列表的分区数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
//    //设置分区头部标题
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "我是分区头部"
//    }
//
//    //设置分区尾部标题
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return "我是分区尾部"
//    }
    
//    //设置分区的头部视图
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 40))
//        view.backgroundColor = .gray
//        return view
//    }
//
//    //设置分区的尾部视图
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 40))
//        view.backgroundColor = .black
//        return view
//    }
//
//    //设置分区头部视图高度
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 25
//    }
//
//    //设置分区头部尾部高度
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 25
//    }
//
    //设置Cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    

    override func viewDidLoad() {
        createDataArray()
        let tableView = UITableView(frame: view.frame, style: .grouped)
        //注册cell
        //UITableViewCell NSClassFromString("ProductTableViewCell")
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: "TableViewCellId")
        view.addSubview(tableView)
        //设置数据源与代理
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createDataArray(){
        dataArray.append(Product(name: "Mercy", imageName: "role5", details: "Mercy’s Valkyrie Suit helps keep her close to teammates like a guardian angel; healing, resurrecting or strengthening them with the beams emanating from her Caduceus Staff."))
        dataArray.append(Product(name: "Tracer", imageName: "role7", details: "Toting twin pulse pistols, energy-based time bombs, and rapid-fire banter, Tracer is able to blink through space and rewind her personal timeline as she battles to right wrongs the world over."))
        dataArray.append(Product(name: "Reaper", imageName: "role1", details: "Hellfire Shotguns, the ghostly ability to become immune to damage, and the power to step between shadows make Reaper one of the deadliest beings on Earth."))
    }


}

