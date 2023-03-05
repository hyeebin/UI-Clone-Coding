//
//  ViewController.swift
//  TadaLoginClone
//
//  Created by cubicinc on 2023/03/03.
//

import UIKit

class ViewController: UIViewController {

    // View
    private lazy var imgBack: UIImageView = {
        var view = UIImageView()
        view.image = UIImage(named: "background")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var viewBack: UIView = {
        var view = UIView()
        view.backgroundColor = .custom_gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var stackLb: UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.alignment = .leading
        view.spacing = 10
        view.distribution = .fill
        return view
    }()
    
    // Label
    private lazy var lbTitle: UILabel = {
        var label = UILabel()
        label.text = "새로운 이동 기준, 타다"
        label.textColor = .custom_navy
        label.font = UIFont(name: "SpoqaHanSansNeo-Bold", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var lbThinContent1: UILabel = {
        var label = UILabel()
        label.text = "승차거부 없는  바로배차"
        label.textColor = .custom_navy
        label.font = UIFont(name: "SpoqaHanSansNeo-Thin", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var lbThinContent2: UILabel = {
        var label = UILabel()
        label.text = "서비스 만족도  4.95점"
        label.textColor = .custom_navy
        label.font = UIFont(name: "SpoqaHanSansNeo-Thin", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private lazy var lbThinContent3: UILabel = {
        var label = UILabel()
        label.text = "재탑승률  90%"
        label.textColor = .custom_navy
        label.font = UIFont(name: "SpoqaHanSansNeo-Thin", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addView()
        applyConstraints()
        setFont()
    }
    
    fileprivate func addView() {
        view.addSubview(viewBack)
        viewBack.addSubview(imgBack)
        imgBack.addSubview(lbTitle)
        imgBack.addSubview(stackLb)
        
        stackLb.addArrangedSubview(lbThinContent1)
        stackLb.addArrangedSubview(lbThinContent2)
        stackLb.addArrangedSubview(lbThinContent3)

    }
    
    fileprivate func setFont() {
        lbThinContent1.attributedText = NSMutableAttributedString().light(string: "승차거부 없는  ", fontSize: 16).medium(string: "바로배차", fontSize: 16)
        lbThinContent2.attributedText = NSMutableAttributedString().light(string: "서비스 만족도  ", fontSize: 16).medium(string: "4.95점", fontSize: 16)
        lbThinContent3.attributedText = NSMutableAttributedString().light(string: "재탑승률  ", fontSize: 16).medium(string: "90%", fontSize: 16)
    }
    
    fileprivate func applyConstraints() {
        let viewBackConstraints = [
            viewBack.topAnchor.constraint(equalTo: view.topAnchor),
            viewBack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewBack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewBack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        let imgBackConstraints = [
            imgBack.leadingAnchor.constraint(equalTo: viewBack.leadingAnchor),
            imgBack.trailingAnchor.constraint(equalTo: viewBack.trailingAnchor),
            imgBack.centerYAnchor.constraint(equalTo: viewBack.centerYAnchor)
        ]
        
        let lbTitleConstraints = [
            lbTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            lbTitle.leadingAnchor.constraint(equalTo: imgBack.leadingAnchor, constant: 30),
        ]
        
        let stackLbConstraints = [
            stackLb.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 30),
            stackLb.leadingAnchor.constraint(equalTo: viewBack.leadingAnchor, constant: 36),
        ]
        
        NSLayoutConstraint.activate(viewBackConstraints)
        NSLayoutConstraint.activate(imgBackConstraints)
        NSLayoutConstraint.activate(lbTitleConstraints)
        NSLayoutConstraint.activate(stackLbConstraints)
    }
}

