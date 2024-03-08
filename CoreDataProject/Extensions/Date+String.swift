//
//  Date+String.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 08/03/2024.
//

import Foundation

extension Date {
	func toString(format: String) -> String {
		let currentDate = self
		let formatter = DateFormatter()
		formatter.dateFormat = format
		return formatter.string(from: currentDate)
	}
}
