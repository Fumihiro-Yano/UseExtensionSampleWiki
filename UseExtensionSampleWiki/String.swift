//
//  String.swift
//  UseExtensionSampleWiki
//
//  Created by 矢野史洋 on 2016/04/11.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import Foundation

extension String {
    static func className(aClass: AnyClass) -> String {
        //クラス名を取得
        return NSStringFromClass(aClass).componentsSeparatedByString(".").last!
    }
    
    func substring(from: Int) -> String {
        return self.substringFromIndex(self.startIndex.advancedBy(from))
    }
    
    var length: Int {
        return self.characters.count
    }
}