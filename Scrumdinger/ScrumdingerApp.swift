//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 27/01/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
