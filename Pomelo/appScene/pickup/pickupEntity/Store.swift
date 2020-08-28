//
//  Store.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class Store {

	let primary: Primary?
	let secondary: String?
	let fullSecondary: String?

	init(_ json: JSON) {
		primary = Primary(json["primary"])
		secondary = json["secondary"].stringValue
		fullSecondary = json["full_secondary"].stringValue
	}

}