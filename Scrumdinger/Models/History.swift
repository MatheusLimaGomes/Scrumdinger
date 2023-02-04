//
//  History.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 04/02/23.
//

import Foundation
struct History: Identifiable {
    let id: UUID
    let date: Date
    let attendees: [DailyScrum.Attendee]
    let lengthInMinutes: Int
    
    init(id: UUID = UUID(), date: Date = Date(),
         attendees: [DailyScrum.Attendee], lengthInMinutes: Int = 5) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
    }
}
