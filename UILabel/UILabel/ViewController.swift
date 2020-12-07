//
//  ViewController.swift
//  UILabel
//
//  Created by admin on 2020/12/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: 普通文本
        view.backgroundColor = UIColor.black
        
        let labelRect = CGRect(x: 100, y: 100, width: 200, height: 50)
        let label = UILabel(frame: labelRect) // UILabel is a subclass of UIView
        label.backgroundColor = UIColor.white
        label.text = "Hello" //默认为nil
        label.textColor = UIColor.black //设置文字颜色，默认为黑色
        
        // font设置文字大小，默认为17
        label.font=UIFont.systemFont(ofSize: 20) //一般方法
        label.font=UIFont.boldSystemFont(ofSize: 20) //加粗方法
        label.font=UIFont(name:"Avenir-Oblique", size: 20) //指定字体的方法
        //preferredFont???
        
        //textAlignment设置标签文本对齐方式NSTextAlignment.
        label.textAlignment = .center//居中对齐
//        label.textAlignment = .left//左对齐
//        label.textAlignment = .right//右对齐
//        label.textAlignment = .justified//最后一行自然对齐
//        label.textAlignment = .natural//默认对齐脚本
        
        
        //label.isEnabled = false // enabled只是决定了Label的绘制方式，将它设置为NO时文本变暗，表示没有激活，这是向她设置颜色值都是无效的。
        //有啥用
        
        label.isHighlighted = true
        label.highlightedTextColor=UIColor.orange//高亮显示时候的文本颜色
        
        label.shadowColor=UIColor.blue //ShadowColor设置阴影颜色
        label.shadowOffset = CGSize(width: -1, height: -1) // ShadowOffset设置阴影偏移量
        
        view.addSubview(label)
        
        // MARK: 长文本
        let msgLabel = UILabel(frame:CGRect(origin: CGPoint(x:100,y:300),size: CGSize(width:200,height:100)))
        msgLabel.text = "用于管理内容的绘制有关的对象显示在一个滚动视图应该瓦片的内容的子视图，以便没有视图超过屏幕的大小。当用户在滚动滚动视图，这个对象应该添加和删除子视图是必要的。"
        msgLabel.textColor = UIColor.yellow
        msgLabel.numberOfLines = 0 //numberOfLines标签最多显示行数，如果为0则表示多行; default = 1
        
        
        //设置文字大小自适应标签宽度
        //Fixed Font Size默认，如果label宽度小于文字长度时，文字大小不自动缩放
        //minimumScaleFactor设置最小收缩比例，如果Label宽度小于文字长度时，文字进行收缩，收缩超过比例后，停止收缩。
        msgLabel.adjustsFontSizeToFitWidth = true
        msgLabel.minimumScaleFactor = 0.5

        //文字过长时省略方式
        //msglabel.lineBreakMode = .byClipping //截去多余部分也不显示省略号
        //msglabel.lineBreakMode = .byTruncatingHead //隐藏头部并显示省略号
        //msglabel.lineBreakMode = .byTruncatingMiddle //隐藏中间部分并显示省略号
        //msglabel.lineBreakMode = .byTruncatingTail //隐藏尾部并显示省略号
        //msglabel.lineBreakMode = .byWordWrapping //以单词为显示单位显示，后面部分省略不显示。
        //msglabel.lineBreakMode = .byCharWrapping //以字符为显示单位显示，后面部分省略不显示
        
        view.addSubview(msgLabel)
        
        // MARK: 个性化文本
        let myLabel = UILabel(frame: CGRect(x:100, y:500, width: 200,height: 30))
//        let attributes: [NSAttributedString.Key: Any] = [
//            .strokeColor : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)  ,
//            .strokeWidth : 2,
//        ]
//        let attributedString = NSAttributedString(string: "我是个性化文本", attributes: attributes)
        let attri = NSMutableAttributedString(string: "我是个性化文本")
        attri.addAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.blue ], range: NSRange(location: 0, length: 2))
        attri.addAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.red ], range: NSRange(location: 2, length: 5))
        myLabel.attributedText = attri
        
        //Label添加边框
        myLabel.layer.borderColor = UIColor.gray.cgColor
        myLabel.layer.borderWidth = 2
        
        //边框设置圆角
        myLabel.backgroundColor = UIColor.cyan
        myLabel.layer.cornerRadius = 10
        myLabel.clipsToBounds = true
        
        view.addSubview(myLabel)

    }
}
