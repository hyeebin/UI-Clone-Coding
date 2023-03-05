//
//  StringExtension.swift
//  TadaLoginClone
//
//  Created by hyebin on 2023/03/05.
//

import UIKit

extension NSMutableAttributedString {

    func thin(string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont(name: "SpoqaHanSansNeo-Thin", size: 16)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    func light(string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont(name: "SpoqaHanSansNeo-Light", size: 16)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    func regular(string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont(name: "SpoqaHanSansNeo-Regular", size: 16)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    func medium(string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont(name: "SpoqaHanSansNeo-Medium", size: 16)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    func bold(string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont(name: "SpoqaHanSansNeo-Bold", size: 16)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
}
