//
//  PickupData.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class PickupData {

	let numberOfNewLocations: Int?
	var pickup: [Pickup]?

	init(_ json: JSON) {
		numberOfNewLocations = json["number_of_new_locations"].intValue
		pickup = json["pickup"].arrayValue.map { Pickup($0) }
	}

}
