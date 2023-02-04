//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 27/01/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums) {
                    Task {
                        do {
                            try await ScrumStore.save(scrums: store.scrums)
                        } catch {
                            print("ERROR - Saving Scrums: \(error.localizedDescription)")
                        }
                    }
                }
            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
                    print("ERROR - Loading Scrums: \(error.localizedDescription)")

                }
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case.failure(let error):
                        print("error in load data \(error.localizedDescription)")
                    case .success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
        }
    }
}
