//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 11/02/23.
//

import SwiftUI

struct MeetingTimerView: View {
    let theme: Theme
    let speakers: [ScrumTimer.Speaker]
    var currentSpeaker: String {
        speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
    }
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text("\(currentSpeaker)")
                        .font(.title)
                    Text("is Speaking")
                        .font(.caption)
                        .foregroundColor(theme.accentColor)
                }
                .accessibilityElement(children: .combine)
            }
    }
}
struct MeetingTimerView_Previews: PreviewProvider {
    static var speakers: [ScrumTimer.Speaker] {
        [ScrumTimer.Speaker(name: "John", isCompleted: false)]
    }
    static var previews: some View {
        MeetingTimerView(theme: .lavander, speakers: speakers)
    }
}
