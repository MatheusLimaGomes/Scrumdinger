//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 04/02/23.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
