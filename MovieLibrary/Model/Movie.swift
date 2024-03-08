//
//  Movie.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import Foundation
import CoreData

final class Movie: NSManagedObject {
	@NSManaged var category: String
	@NSManaged var releaseDate: Date
	@NSManaged var title: String
}
