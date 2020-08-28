//
//  Primary.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class Primary {

	let landscape: String?
	let fullLandscape: String?
	let portrait: String?
	let fullPortrait: String?

	init(_ json: JSON) {
		landscape = json["landscape"].stringValue
		fullLandscape = json["full_landscape"].stringValue
		portrait = json["portrait"].stringValue
		fullPortrait = json["full_portrait"].stringValue
	}

}