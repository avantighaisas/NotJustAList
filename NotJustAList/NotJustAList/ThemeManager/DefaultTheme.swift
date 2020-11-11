//
//  DefaultTheme.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/10/20.
//

import Foundation
import SwiftUI

public struct DefaultTheme: Theme {
    // MARK: - Color
    public var textColor: Color {
        return Color(UIColor.label)
    }
    public var primaryTextColor: Color {
        return Color(UIColor.systemGray2)
    }
    public var backgroundColor: Color {
        return Color(UIColor.systemBackground)
    }
    public var buttonBGColor: Color {
        return Color(UIColor.systemRed)
    }
    // MARK: - Font
    public var regularButtonFont: Font {
        return Font.system(size:30, design: .default)
    }
    
    public var largeButtonFont: Font {
        return Font.system(size:30, design: .default)
    }
    
    public var largeTitleFont: Font {
        return Font.largeTitle
    }
    
    public var primaryTextFont: Font {
        return Font.subheadline
    }
}
