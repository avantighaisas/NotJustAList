//
//  ContentView.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/5/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                    ThemeManager.currentTheme.backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    RoundedRectangle(cornerRadius: 10, style: .continuous).fill(ThemeManager.currentTheme.buttonBGColor)
                        .frame(width: geometry.size.width * 0.9, height:50)
                    NavigationLink(destination: ItemView()) {
                        Text(R.welcomeButtonTitle.rawValue)
                            .font(ThemeManager.currentTheme.largeTitleFont)
                    }.buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}
