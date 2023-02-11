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
            .overlay {
                ForEach(speakers) { speaker in
                    if speaker.isCompleted, let index = speakers.firstIndex(where: { $0.id == speaker.id }) {
                        SpeakerArc(speakerIndex: index, totalSpeakers: speakers.count)
                            .rotation(Angle(degrees: -90))
                            .stroke(theme.mainColor, lineWidth: 12)
                    }
                }
            }
            .padding(.horizontal)
    }
}
struct MeetingTimerView_Previews: PreviewProvider {
    static var speakers: [ScrumTimer.Speaker] {
        [ScrumTimer.Speaker(name: "John", isCompleted: true), ScrumTimer.Speaker(name: "Craig", isCompleted: true),
         ScrumTimer.Speaker(name: "Bryan", isCompleted: false),
         ScrumTimer.Speaker(name: "Lisa", isCompleted: false),
         ScrumTimer.Speaker(name: "Charlotte", isCompleted: false)]
    }
    static var previews: some View {
        MeetingTimerView(theme: .yellow, speakers: speakers)
    }
}
