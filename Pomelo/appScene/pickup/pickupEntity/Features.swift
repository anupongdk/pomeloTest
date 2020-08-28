//
//  Features.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class Features {

	let type: String?
	let description: String?

	init(_ json: JSON) {
		type = json["type"].stringValue
		description = json["description"].stringValue
	}

}