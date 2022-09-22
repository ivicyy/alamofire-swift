//
//  VCNetwork.swift
//  Runner
//
//  Created by ivic-flm on 2021/3/29.
//

import UIKit
import Alamofire


//实用codable协议解析数据
//舍弃了loading库，需要自加
class VCNetwork<T:Codable> {
    public func requestData(url:String,para:[String: Any],completion:@escaping(_ response:T)->(),failure:@escaping(_ error:Error)->()) {
//        let headers: HTTPHeaders = ["accept": "application/json","Content-Type": "application/json",]
        let headers: HTTPHeaders = ["Host": "h5.moutai519.com.cn","Accept": "application/json, text/javascript, */*; q=0.01","X-Requested-With":"XMLHttpRequest","Accept-Language":"zh-CN,zh-Hans;q=0.9","Content-Type":"application/json","Origin":"https://fe.moutai519.com.cn","MT-APP-Version":"1.0.0","User-Agent":"Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 moutaiapp/1.2.1 device-id/09ac5bd6dc4a67e6ddcc6719a9857c8d","Referer":"https://fe.moutai519.com.cn/","x-csrf-token":"","MT-BIZID":"mt.shop.app.sale","Cookie":"MT-Device-ID-Wap=908971C6-FE8A-4A40-B190-52598A833963; MT-Token-Wap=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJtdCIsImV4cCI6MTY1NTYwMzA0NCwidXNlcklkIjoxMDYxNzk0NDg3LCJkZXZpY2VJZCI6IjkwODk3MUM2LUZFOEEtNEE0MC1CMTkwLTUyNTk4QTgzMzk2MyIsImlhdCI6MTY1MzAxMTA0NH0.lNyrxtsVVtR-NMZxQcW0fp8zPSMrnU38PkTDVgPfjOw; YX_SUPPORT_WEBP=1"]
//        let convertible = baseUrl + testUrl
        AF.request(url,method: .post,parameters:para,encoding:JSONEncoding.default, headers: headers).responseDecodable(of:T.self) { response in
            
            print("请求地址:",response.request?.url ?? "")
            print("请求头:",response.request?.headers ?? "")
            print("请求参数:",para)
            if let data = response.data {
                print("json数据:\(String(data: data, encoding: .utf8)!)")
            }
            switch response.result {
            case .success(let data):
                print("返回数据:\(data)")
                completion(data)
                break

            case .failure(let error):
                failure(error)
                print(error)
                break
            }
            
        }
//        AF.request(url,method: .post,parameters:para,encoding:JSONEncoding.default, headers: headers).responseJSON { (response) in
//            print("请求地址:",response.request?.url ?? "")
//            print("请求头:",response.request?.headers ?? "")
//            print("请求参数:",para)
//            switch response.result {
//            case .success(let data):
//                print("返回数据:",data)
//                let decoder = JSONDecoder()
//                do {
//                    let jsonData = try? JSONSerialization.data(withJSONObject: data, options: [])
//                    let jsonModel = try decoder.decode(T.self, from: jsonData!)
//                    completion(jsonModel)
//                } catch {
//                    print("JSON 解析失败")
//                }
//                break
//
//            case .failure(let error):
//                failure(error)
//                print(error)
//                break
//            }
//        }
    }
}
