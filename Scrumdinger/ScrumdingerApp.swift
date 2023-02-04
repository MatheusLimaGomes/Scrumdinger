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
                    ScrumStore.save(scrums: store.scrums) { result in
                        if case .failure(let error) = result {
                            print("ERROR: \(error.localizedDescription)")
                        }
                    }
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
