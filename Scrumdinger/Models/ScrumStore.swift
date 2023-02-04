//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 04/02/23.
//

import SwiftUI

class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask,
                                    appropriateFor: nil, create: false)
        .appendingPathComponent("scrums.data")
    }
}
