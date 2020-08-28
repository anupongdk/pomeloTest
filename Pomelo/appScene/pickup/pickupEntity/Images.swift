//
//  Images.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on August 26, 2020
//
import Foundation
import SwiftyJSON

class Images {

	let store: Store?
	let floormap: Floormap?

	init(_ json: JSON) {
		store = Store(json["store"])
		floormap = Floormap(json["floormap"])
	}

}