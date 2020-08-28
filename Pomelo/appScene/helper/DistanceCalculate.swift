//
//  DistanceCalculate.swift
//  Pomelo
//
//  Created by anupong dorkkunm on 28/8/2563 BE.
//  Copyright © 2563 anupong dorkkunm. All rights reserved.
//

import Foundation
import MapKit


// if I have more time for the test

class DistanceCalculate {
    static func calculateDistanceBetween(location1:CLLocation,location2:CLLocation) -> Float{
        let start = MKMapItem(placemark: MKPlacemark(coordinate: location1.coordinate))
        let end = MKMapItem(placemark: MKPlacemark(coordinate: location2.coordinate))
        let request: MKDirections.Request = MKDirections.Request()
        request.source = start
        request.destination = end
        request.transportType = MKDirectionsTransportType.automobile
        let directions = MKDirections(request: request)
        directions.calculate(completionHandler: { (response: MKDirections.Response?, error: Error?) in
            // Now we should have a route.
            if let routes = response?.routes {
                let route = routes[0]
                print(route.distance) // 2,307 metres.
            }
        })
        
        return 0.0
    }
}
