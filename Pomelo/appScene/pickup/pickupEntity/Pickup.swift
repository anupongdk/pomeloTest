//
//  Pickup.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class Pickup {

	let feature: String?
	let idPickupLocation: Int?
	let idCountry: Int?
	let idState: Int?
	let idCarrier: Int?
	let company: Any?
	let npsLink: Any?
	let alias: String?
	let address1: String?
	let address2: String?
	let district: String?
	let city: String?
	let postcode: Any?
	let latitude: Int?
	let longitude: Int?
	let phone: Any?
	let nearestBts: String?
	let notableArea: Any?
	let hours1: String?
	let hours2: String?
	let hours3: String?
	let description: String?
	let isFeatured: Bool?
	let subtype: String?
	let storeImagePath: String?
	let floormapImagePath: String?
	let active: Bool?
	let status: String?
	let idZone: Int?
	let features: [Features]?
	let isNewLocation: Bool?
	let type: String?
	let hours: [Any]?
	let images: Images?
	let isDefaultLocation: Bool?

	init(_ json: JSON) {
		feature = json["feature"].stringValue
		idPickupLocation = json["id_pickup_location"].intValue
		idCountry = json["id_country"].intValue
		idState = json["id_state"].intValue
		idCarrier = json["id_carrier"].intValue
		company = json["company"]
		npsLink = json["nps_link"]
		alias = json["alias"].stringValue
		address1 = json["address1"].stringValue
		address2 = json["address2"].stringValue
		district = json["district"].stringValue
		city = json["city"].stringValue
		postcode = json["postcode"]
		latitude = json["latitude"].intValue
		longitude = json["longitude"].intValue
		phone = json["phone"]
		nearestBts = json["nearest_bts"].stringValue
		notableArea = json["notable_area"]
		hours1 = json["hours1"].stringValue
		hours2 = json["hours2"].stringValue
		hours3 = json["hours3"].stringValue
		description = json["description"].stringValue
		isFeatured = json["is_featured"].boolValue
		subtype = json["subtype"].stringValue
		storeImagePath = json["store_image_path"].stringValue
		floormapImagePath = json["floormap_image_path"].stringValue
		active = json["active"].boolValue
		status = json["status"].stringValue
		idZone = json["id_zone"].intValue
		features = json["features"].arrayValue.map { Features($0) }
		isNewLocation = json["is_new_location"].boolValue
		type = json["type"].stringValue
		hours = json["hours"].arrayValue.map { $0 }
		images = Images(json["images"])
		isDefaultLocation = json["is_default_location"].boolValue
	}

}