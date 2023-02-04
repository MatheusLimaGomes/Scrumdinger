//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 27/01/23.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)
            VStack {
                MeetingViewHeader(secondElapsed: scrum.lengthInMinutes, secondRemaining: scrum.lengthInMinutes, theme: scrum.theme)
                Circle().strokeBorder(lineWidth: 25)
                HStack {
                    Text("Speaker 1 of 3 ")
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next Speaker")
                }
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[1]))
    }
}
