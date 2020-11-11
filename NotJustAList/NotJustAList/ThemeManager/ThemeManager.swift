//
//  Colors.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/10/20.
//

import Foundation
import SwiftUI

public typealias Theme = Colors & Fonts

public class ThemeManager {
    public static var currentTheme: Theme = DefaultTheme()
    // Colors
    public static let textColor: Color = currentTheme.textColor
    public static let backgroundColor: Color = currentTheme.backgroundColor
    public static let buttonBGColor: Color = currentTheme.buttonBGColor
    public static let primaryTextColor: Color = currentTheme.primaryTextColor
    
    // Fonts
    public static let regularButtonFont: Font = currentTheme.regularButtonFont
    public static let largeButtonFont: Font = currentTheme.largeButtonFont
    public static let largeTitleFont: Font = currentTheme.largeTitleFont
    public static let primaryTextFont: Font = currentTheme.primaryTextFont
}
