//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 28/01/23.
//

import Foundation

struct DailyScrum {
    let title: String
    let attendees: [String]
    let lengthInMinutes: Int
    let theme: Theme
}
extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daysi","Simon", "Jhonathan"],
                   lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray","Euna", "Luis", "Darla"],
                   lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris","Christina", "Eden", "Karla",
                               "Lindisey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5, theme: .poppy)
        
    ]
}
