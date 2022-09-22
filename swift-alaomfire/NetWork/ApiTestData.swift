//
//  ApiTestData.swift
//  swift-alaomfire
//
//  Created by ivic-flm on 2022/2/15.
//

import Foundation

public struct Station : Codable {
    var data: [data]
    
    struct data: Codable {
        var pointName: String
        var id: Int
    }
}


public struct Info : Codable {
    var code: Int
    var data: data
    
    struct data: Codable {
        var purchaseInfo: info
//        var shopInfo: shopInfo
    }
    
    struct shopInfo: Codable {
    }
    
    struct info: Codable {
        var canAddCart: Bool
        var forbiddenBuyDesc: String
        var inventory: Int
        var itemCode: String
        var limitCount: Int
    }
}
