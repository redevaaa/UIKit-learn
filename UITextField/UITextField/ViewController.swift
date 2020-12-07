//
//  ViewController.swift
//  UITextField
//
//  Created by admin on 2020/12/7.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 声明控件UITextField
        let textField = UITextField(frame: CGRect(x: 30, y: 100, width: 300, height: 40))
        textField.backgroundColor = UIColor.white
        view.addSubview(textField)
        
        //MARK: 边框样式UITextBorderStyle，默认无边框
        //.none：无边框
        //.line：直线边框
        //.roundedRect：圆角矩形边框
        //.bezel：边线+阴影
        textField.borderStyle = .bezel
        
        //MARK: 设置边框颜色、线宽、圆角半径
        textField.clipsToBounds = true
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2.0
        textField.layer.cornerRadius = 5.0
        
        //MARK: 文本框提示文字以及属性设置
        textField.placeholder = "这是提示文本"//提示文本
        //当文字超出文本框宽度时，自动调整文字大小，默认是以省略号代替
        textField.adjustsFontSizeToFitWidth  = true
        textField.minimumFontSize=10  //最小可缩小的字号
        
        //MARK: 设置水平/垂直对齐方式
        //水平对齐
//        textField.textAlignment = .right //水平右对齐
//        textField.textAlignment = .center //水平居中对齐
        textField.textAlignment = .left //水平左对齐
         
        //垂直对齐
//        textField.contentVerticalAlignment = .top  //垂直向上对齐
        textField.contentVerticalAlignment = .center  //垂直居中对齐
//        textField.contentVerticalAlignment = .bottom  //垂直向下对齐
        
        //MARK: 设置清楚按钮
        //.never:        从不出现
        //.whileEditing: 开始编辑时出现
        //.always:        一直出现
        //.unlessEditing: 除了编辑外都出现
        textField.clearButtonMode = .whileEditing
        
        //MARK: 设置背景图片
//        textField.borderStyle = .none //先要去除边框样式
//        textField.background = UIImage(named:"爱宠22")
        
        //MARK: 设置左右视图
        let imageView1 = UIImageView(image: UIImage(named: "爱宠22"))
        imageView1.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imageView1.contentMode = .scaleAspectFit
        textField.leftView = imageView1
        textField.leftViewMode = .always
        
        let imageView2 = UIImageView(image: UIImage(named: "爱宠31"))
        imageView2.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imageView2.contentMode = .scaleAspectFit
        textField.rightView = imageView2
        textField.rightViewMode = .always
        
        //MARK: 设置键盘输入类型
        //Default：系统默认的虚拟键盘
        //ASCII Capable：显示英文字母的虚拟键盘
        //Numbers and Punctuation：显示数字和标点的虚拟键盘
        //URL：显示便于输入url网址的虚拟键盘
        //Number Pad：显示便于输入数字的虚拟键盘
        //Phone Pad：显示便于拨号呼叫的虚拟键盘
        //Name Phone Pad：显示便于聊天拨号的虚拟键盘
        //Email Address：显示便于输入Email的虚拟键盘
        //Decimal Pad：显示用于输入数字和小数点的虚拟键盘
        //Twitter：显示方便些Twitter的虚拟键盘
        //Web Search：显示便于在网页上书写的虚拟键盘
        textField.becomeFirstResponder()//获取输入焦点，并弹出键盘
        //textField.resignFirstResponder()//失去焦点，并收起键盘
        textField.keyboardType = .default//设置键盘输入模式
        
        //MAKR: 设置键盘上return键的样式
        //.done //表示完成输入
        //.go 表示完成输入，同时会跳到另一页
        //.search //表示搜索
        //.join //表示注册用户或添加数据
        //.next //表示继续下一步
        //.send //表示发送
        textField.returnKeyType = UIReturnKeyType.done
        
        //MARK: 代理
        //ADD UITextFieldDelegate
        textField.delegate = self

    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("将要开始编辑")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("已经开始编辑")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("将要结束编辑")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("已经结束编辑")
    }
    
    //文本框只能输入数字并且不能超过11位
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("文本输入内容将要发生变化（每次输入都会调用）")
        if string.isEmpty {
            return true
        }
        
        if (textField.text?.count)! >= 11 {
            return false
        }
        
        if string.first! >= "0", string.first! <= "9" {
            return true
        } else {
            return false
        }
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("将要清除输入内容，返回值是是否要清除掉内容")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("将要按下Return按钮，返回值是是否结束输入（是否失去焦点）")
        textField.resignFirstResponder() //失去焦点，并收起键盘
        return true
    }


}

