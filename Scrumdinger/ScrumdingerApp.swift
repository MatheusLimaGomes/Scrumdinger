//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 27/01/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
