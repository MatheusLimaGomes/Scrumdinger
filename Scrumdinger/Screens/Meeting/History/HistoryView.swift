//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 18/02/23.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeesString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeesString: String {
        ListFormatter.localizedString(byJoining: attendees.map({ $0.name }))
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [DailyScrum.Attendee(name: "John"), DailyScrum.Attendee(name: "Paul"), DailyScrum.Attendee(name: "Anne"), DailyScrum.Attendee(name: "Nathalie")])
    }
    static var previews: some View {
        HistoryView(history: history)
    }
}
