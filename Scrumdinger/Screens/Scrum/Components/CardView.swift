//
//  CardView.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 28/01/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("\(scrum.title)")
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock").labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}
struct CardView_Previews: PreviewProvider {
    static var scrumData = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrumData)
            .background(scrumData.theme.mainColor).previewLayout(.fixed(width: 400, height: 60))
    }
}
