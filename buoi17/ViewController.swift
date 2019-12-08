//
//  ViewController.swift
//  buoi17
//
//  Created by Dương chãng on 12/6/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var la: UILabel = {
        var la = UILabel()
        la = UILabel(frame: CGRect(x: 0, y: 15, width: 50, height: 50))
        return la
    }()
    
    let scrollView: UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scrollview.backgroundColor = .white
        scrollview.isPagingEnabled = true // hiển thị phân trang
        
        scrollview.showsVerticalScrollIndicator = false // ẩn thanh dọc
        
        return scrollview
    }()
    
    var lblLtenanh : [String] = []
    
    
    var images: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblLtenanh = ["con báo", "con chó", "con ngựa", "con rùa", "con thiên nga", "con vẹt"]
        
        images = [ UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6")]
            as! [UIImage]
        
        view.addSubview(scrollView)
        setupImage(images)
        
    }
    
    
    func setupImage(_ arrs: [UIImage]) {
        //        let xPoxition = UIScreen.main.bounds.size.width
        // tính kích thước màn hình
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        // duyệt mảng để addSubview các ảnh con vào trong Scrollview
        for i in 0..<arrs.count{
            // anh cuộn ngang
           // let imageView = UIImageView(frame: CGRect(x: width * CGFloat(i), y: 0, width: width, height: height))
            // anh cuộn xuống
            let imageView = UIImageView(frame: CGRect(x: 0, y: height * CGFloat(i), width: width, height: height))
            imageView.contentMode = .scaleAspectFit
            imageView.image = arrs[i]
            
//tên ảnh đi xuống
            let tenanh = UILabel(frame: CGRect(x: width, y: CGFloat(i+1) * UIScreen.main.bounds.size.height - CGFloat(200), width: 50,  height: 400))

// ten ảnh lằm ngang
//let tenanh = UILabel(frame: CGRect(x: width * CGFloat(i), y: UIScreen.main.bounds.size.height - CGFloat(200), width: 400,  height: 50))
            
            
            // i
            
            
            tenanh.text = lblLtenanh[i]
            tenanh.layer.borderColor = UIColor.red.cgColor
            tenanh.layer.borderWidth = 3
            tenanh.layer.cornerRadius = 30
            tenanh.font = .boldSystemFont(ofSize: 32)
            scrollView.addSubview(imageView)
            
            tenanh.textAlignment = .center
            scrollView.addSubview(tenanh)
            
            
            
        }
        
        // hiển thị Scrollhi
        // thanh cuộn ngang
        //scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(arrs.count), height: height)
        // thanh cuộn xuống
         scrollView.contentSize = CGSize(width: width, height: scrollView.frame.height * CGFloat(arrs.count))
    }
    
    
}

