//
//  Director.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation
import CoreData

final class Director: NSManagedObject {
	@NSManaged var firstname: String
	@NSManaged var lastname: String
	@NSManaged var birthday: Date
}
