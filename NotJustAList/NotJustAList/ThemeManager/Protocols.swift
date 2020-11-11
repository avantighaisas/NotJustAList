//
//  Protocols.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/10/20.
//

import Foundation
import SwiftUI

public protocol Colors {
    var textColor: Color { get }
    var backgroundColor: Color { get }
    var primaryTextColor: Color { get }
    var buttonBGColor: Color { get }
}

public protocol Fonts {
    var regularButtonFont: Font { get }
    var largeButtonFont: Font { get }
    var largeTitleFont: Font { get }
    var primaryTextFont: Font { get }
}
