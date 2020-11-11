//
//  ItemView.swift
//  NotJustAList
//
//  Created by Avanti Ghaisas on 11/8/20.
//

import SwiftUI

struct ItemView: View {
    @ObservedObject var items = Remote(url: URL(string: "https://fetch-hiring.s3.amazonaws.com/hiring.json"), transform: {
        try? JSONDecoder().decode([Item].self, from: $0).filter {
            return !($0.name ?? "").isEmpty
        }.sorted()
    })
    var body: some View {
        if items.value == nil {
            ProgressView()
                .onAppear(){
                    items.load()
                }
        }
        else {
            List(items.value!) { item in
                ItemRow(item: Item(id: item.id, listId: item.listId, name: item.name))
            }.environment(\.defaultMinListRowHeight, 50)
            .navigationBarTitle(Text(R.itemListNavTitle.rawValue), displayMode: .inline)
        }
    }
}

struct ItemRow: View {
    var item: Item
    var rowBG: Color {
        switch item.listId {
        case 1:
            return Color(UIColor.systemPink)
        case 2:
            return Color(UIColor.systemIndigo)
        case 3:
            return Color(UIColor.systemPurple)
        case 4:
            return Color(UIColor.systemTeal)
        default:
            return Color(UIColor.systemRed)
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 15).fill()
                    .foregroundColor(rowBG)
                    .frame(height: 35)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20.0) {
                    Text("itemListId \(item.listId)")
                        .font(ThemeManager.currentTheme.primaryTextFont)
                    Text("itemId \(item.id)")
                        .font(ThemeManager.currentTheme.primaryTextFont)
                    Text("itemName \(item.name ?? "")")
                        .font(ThemeManager.currentTheme.primaryTextFont)
                }.frame(maxWidth:290, alignment: .leading)
            }
        }
    }
}
struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
