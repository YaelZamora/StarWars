//
//  ContentView.swift
//  StarWars
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView{
            WatchView().tabItem{
                Label("Watch", systemImage: "play")
            }
            JediView().tabItem{
                Label("Jedi", systemImage: "person")
            }
            SithView().tabItem{
                Label("Sith", systemImage: "person.circle")
            }
            ShipsView().tabItem{
                Label("Ships", systemImage: "airplane")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
