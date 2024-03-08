//
//  MovieLibraryApp.swift
//  CoreDataProject
//
//  Created by Thibault GODEFROY on 07/03/2024.
//

import SwiftUI

@main
struct MovieLibraryApp: App {
    var body: some Scene {
        WindowGroup {
            MovieView()
				.environment(\.managedObjectContext, MoviesProvider.shared.viewContext)
        }
    }
}
