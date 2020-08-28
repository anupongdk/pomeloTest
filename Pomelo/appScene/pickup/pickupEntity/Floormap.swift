//
//  Floormap.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class Floormap {

	let main: String?
	let fullMain: String?
	let zoomed: String?
	let fullZoomed: String?

	init(_ json: JSON) {
		main = json["main"].stringValue
		fullMain = json["full_main"].stringValue
		zoomed = json["zoomed"].stringValue
		fullZoomed = json["full_zoomed"].stringValue
	}

}