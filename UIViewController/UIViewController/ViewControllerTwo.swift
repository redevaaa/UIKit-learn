//
//  ViewControllerTwo.swift
//  UIViewController
//
//  Created by admin on 2020/12/8.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    var dataOne: String?
    var dataTwo: String?
    
    var delegate: ViewControllerTwoProtocal?
    var closure: ((String)->Void)?
    
    init(data: String){
        self.dataTwo = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x:20, y:30, width: 200, height: 100)
        button.setTitle("返回", for: .normal)
        button.addTarget(self, action: #selector(ret), for: .touchUpInside)
        view.addSubview(button)
        
        let labelOne = UILabel(frame: CGRect(x:20, y:200, width: 280, height: 30))
        labelOne.text = dataOne
        labelOne.adjustsFontSizeToFitWidth = true
        view.addSubview(labelOne)
        
        let labelTwo = UILabel(frame: CGRect(x:20, y:300, width: 280, height: 30))
        labelTwo.text = dataTwo
        labelTwo.adjustsFontSizeToFitWidth = true
        view.addSubview(labelTwo)
    }
    
    @objc func ret() {
        delegate?.sentData(data: "第二个界面传来的 - 反向传递（通过协议）")
        closure!("第二个界面传来的 - 反向传递（通过闭包）")
        self.dismiss(animated: true, completion: nil)
    }
    
}

protocol ViewControllerTwoProtocal {
    func sentData(data: String)
}
