//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 28/01/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes)")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name).padding(4).foregroundColor(scrum.theme.accentColor).background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                        Label(attendee.name, systemImage: "person")
                }
            }
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let scrumData = DailyScrum.sampleData[0]
        NavigationView {
            DetailView(scrum: scrumData)
        }
    }
}
