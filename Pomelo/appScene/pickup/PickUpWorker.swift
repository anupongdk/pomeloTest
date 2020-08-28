//
//  PickUpWorker.swift
//  Pomelo
//
//  Created by anupong dorkkunm on 26/8/2563 BE.
//  Copyright (c) 2563 anupong dorkkunm. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire
import SwiftyJSON

class PickUpWorker
{
      func doSomeWork()
      {
      }
    
    func loadPickupData(completionHandler: @escaping (PickupData?, NSError?) -> Void) {
       
        let api = ServiceConfigs.BaseUrl + Apis.getPickupLocation
        AF.request(api, method: .get,parameters:PickUpModel.PickupQuery.Request.query , encoding: URLEncoding(destination: .queryString)).responseData { (response) in
            
            switch response.result {
                 case .success(let value):
                    let jsonData = JSON(value)
                    let pickupData = PickupData(jsonData)
                    completionHandler(pickupData, nil)
                 break
                    
                case .failure(let error):
//                    completionHandler(nil,error.)
                print(error)
                
            }
        }
    }
}