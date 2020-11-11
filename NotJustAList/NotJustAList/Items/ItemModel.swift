//
//  ItemModel.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/8/20.
//

import Foundation

struct Item: Codable, Comparable, Identifiable {
    static func < (lhs: Item, rhs: Item) -> Bool {
        guard let lhsName = lhs.name,
              let rhsName = rhs.name else { return false}
        return (lhs.listId, lhsName) <
            (rhs.listId, rhsName)
    }
    var id: Int
    var listId: Int
    var name: String?
}
