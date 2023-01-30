//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Matheus F S L Gomes on 30/01/23.
//

import SwiftUI

import SwiftUI

struct ThemeView: View {
    var theme: Theme
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(theme.mainColor)
                Label(theme.name, systemImage: "paintpalette")
                    .padding(4)
            }
            .foregroundColor(theme.accentColor)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        let theme = DailyScrum.sampleData[0].theme
        ThemeView(theme: theme)
    }
}
