//
//  MockDataReader.swift
//  Pomelo
//
//  Created by anupong dorkkunm on 28/8/2563 BE.
//  Copyright © 2563 anupong dorkkunm. All rights reserved.
//

import Foundation
import SwiftyJSON
class MockDataReader {
  static func getJsonData(completion:@escaping(PickupData) -> Void) {
        
        if let path = Bundle.main.path(forResource: "mockData", ofType: "json") {
            do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                  let jsonData = JSON(data)
                  let pickUpData = PickupData(jsonData)
                  completion(pickUpData)
              } catch {
                   // handle error
              }
        }
    }
}
