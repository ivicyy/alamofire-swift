//
//  ViewController.swift
//  swift-alaomfire
//
//  Created by ivic-flm on 2022/2/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let para = ["hot":true,"itemCode":"10193","province":"510000000","city":"510100000","jt":"xEeE7HENc8B9DXadwXRKBIbuSFMjUA2JSuKl8mEtHVuh75slzH1BRcpG0s1uU69Wz%2FnKglBarplleyBpRw%2FHDqe42NvjYl1nKLNvweM6uMgN6ii%2BiDo3Izj9QMeccs%2BLrEd8C3pQVp%2FZ7O3TmR8Rle26nP7LjLNIJqd3SCvdfHThR4TrObbrrWWZkewuDfu5gW%2F0BoEkQuDnDCvw9Yhhaqaznq0jDLu0kUQmlh%2Fpi3bdfFrFFhCeKH5O5naoblPfNhNU39s9MOAvyVxJAUkENd50skdl97zDvqLs5xaB1VJ9nP27NNa2J%2FttHa51hgzL5HOPrlCTR%2BDr7Q4YJdJ%2FAazYdOWn1x71Z0ExBGOGaVw%3D%7CoSLppM7IG6AVrG7OhQyfwk4gLM%2BiZN8gd6nkY%2FT595k%3D%7C10%7Cc413219d7d83b04d087dd7bc4a2268e5"] as [String : Any]
        //传类名解析出相关数据
        VCNetwork<Info>().requestData(url: "https://h5.moutai519.com.cn/xhr/front/mall/item/purchaseInfo", para: para) { value in

            print("-----------------------")
            print(value)
        } failure: { error in

            
        }
    }
}

