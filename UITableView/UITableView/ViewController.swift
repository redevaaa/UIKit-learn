//
//  ViewController.swift
//  UITableView
//
//  Created by admin on 2020/12/8.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray = [[Product]]()
    var titleArray = [String]()
    
    //MARK: 必要函数
    //设置列表行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray[section].count
    }

    //设置每行数据的数据载体Cell视图
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId",for: indexPath) as? ProductTableViewCell
        
        cell?.productName.text = dataArray[indexPath.section][indexPath.row].name
        cell?.productDetail.text = dataArray[indexPath.section][indexPath.row].details
        cell?.productImage.image =  UIImage(named: dataArray[indexPath.section][indexPath.row].imageName)
        return cell!
    }
    
    //MARK: 可选函数
    //设置Cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //设置列表的分区数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    //设置分区头部标题
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleArray[section]
    }
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
    //设置分区头部视图高度
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
//
//    //设置分区头部尾部高度
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 25
//    }
//
    
    //MARK: 可选函数 - 编辑模式
    //返回每行的编辑模式
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if indexPath.row == 0{
            return .insert
        } else {
            return .delete
        }
    }
    //设置显示的交互按钮文字
    public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        if indexPath.row == 0{
            return "Insert"
        } else {
            return "Delete"
        }
    }
    
    //点击交互按钮后回调的方法
//    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == UITableViewCell.EditingStyle.delete {
//            print("点击了删除按钮")
//            //先删除数据源中此条数据
//            dataArray.remove(at: indexPath.row)
//            //再在界面上删除此cell
//            tableView.deleteRows(at: [indexPath], with: .left)
//        } else {
//            print("点击了插入按钮")
//            //先向数据源中插入此条数据
//            let newProduct = Product(name: "Bastion", imageName: "role8", details: "Repair protocols and the ability to transform between stationary Sentry, mobile Recon and devastating Tank configurations provide Bastion with a high damage output at the cost of mobility.")
//            dataArray.insert(newProduct, at: indexPath.row)
//            //再在界面上增加此cell
//            tableView.insertRows(at: [indexPath], with: .fade)
//        }
//    }
    
//    //交换Cell - 拖动按钮
//    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        let tmp = dataArray[sourceIndexPath.row]
//        let tmp2 = dataArray[destinationIndexPath.row]
//        dataArray[sourceIndexPath.row] = tmp2
//        dataArray[destinationIndexPath.row] = tmp
//    }
    
    //MARK: 索引栏
    //设置索引栏目标题
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return titleArray
    }
    //将索引栏的文字与具体分区绑定
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }
    

    override func viewDidLoad() {
        createDataArray()
        let tableView = UITableView(frame: view.frame, style: .grouped)
        //注册cell
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: "TableViewCellId")
        view.addSubview(tableView)
        //设置数据源与代理
        tableView.delegate = self
        tableView.dataSource = self
        
        //编辑状态
        tableView.isEditing = false
        
        //添加索引栏
        titleArray = ["Tank","Damage","Support"]
        
    }
    
    func createDataArray(){
        dataArray = [[],[],[]]
        dataArray[2].append(Product(name: "Mercy", imageName: "role5", details: "Mercy’s Valkyrie Suit helps keep her close to teammates like a guardian angel; healing, resurrecting or strengthening them with the beams emanating from her Caduceus Staff."))
        dataArray[1].append(Product(name: "Tracer", imageName: "role7", details: "Toting twin pulse pistols, energy-based time bombs, and rapid-fire banter, Tracer is able to blink through space and rewind her personal timeline as she battles to right wrongs the world over."))
        dataArray[1].append(Product(name: "Reaper", imageName: "role1", details: "Hellfire Shotguns, the ghostly ability to become immune to damage, and the power to step between shadows make Reaper one of the deadliest beings on Earth."))
        dataArray[1].append(Product(name: "Mei", imageName: "role2", details: "Mei’s weather-altering devices slow opponents and protect locations. She can Cryo-Freeze herself to guard against counterattacks, or obstruct the opposing team's movements with an Ice Wall."))
        dataArray[1].append(Product(name: "Genji", imageName: "role4", details: "Genji flings precise and deadly Shuriken at his targets, and uses his wakizashi to deflect projectiles or delivers a Swift Strike with his technologically-advanced dragonblade that cuts down enemies."))
        dataArray[1].append(Product(name: "Hanzo", imageName: "role6", details: "Hanzo’s versatile arrows can reveal his enemies or rapid fire to strike multiple targets. He can scale walls to fire his bow from on high, or summon a titanic spirit dragon."))
        dataArray[1].append(Product(name: "Bastion", imageName: "role8", details: "Repair protocols and the ability to transform between stationary Sentry, mobile Recon and devastating Tank configurations provide Bastion with a high damage output at the cost of mobility."))
        dataArray[1].append(Product(name: "WidowMaker", imageName: "role9", details: "Widowmaker equips herself with whatever it takes to eliminate her targets, including mines that dispense poisonous gas, a visor that grants her squad infra-sight."))
        dataArray[0].append(Product(name: "D.Va", imageName: "role3", details: "D.Va’s mech, Tokki is nimble and powerful — its twin Fusion Cannons blast away with autofire at short range."))
    }


}

