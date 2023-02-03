//
//  MeetingViewHeader.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 03/02/23.
//

import SwiftUI

struct MeetingViewHeader: View {
    let secondElapsed: Int
    let secondRemaining: Int
    private var totalSeconds: Int {
        secondElapsed + secondRemaining
    }
    private var progressValue: Double {
        guard totalSeconds > 0 else { return 1 }
        return Double(secondElapsed) / Double(secondRemaining)
    }
    private var minutesRemaining: Int {
        secondRemaining / 60
    }
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 20)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondElapsed)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondRemaining)", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("\(minutesRemaining) minutes")
        }
        
    }
}
struct MeetingViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        MeetingViewHeader(secondElapsed: 30, secondRemaining: 5)
    }
}
