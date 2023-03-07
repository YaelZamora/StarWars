//
//  SithView.swift
//  StarWars
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

struct SithView: View {
    @State private var buscar = ""
    private let personajes = ["darthvader", "lord", "darthmaul"]
    private let nombres = ["Darth Vader", "Sith Lord", "Darth Maul"]
    private let historia = [
        "Darth Vader was a legendary Sith Master and stronger than mostin his connection with the Force.",
        "The Sith Lord was a son of a bitch who cheat Anakin to turn him to evil.",
        "Darth Maul was a looser who died in the begining of the movies.",
    ]
    
    var body: some View {
        ZStack {
            Color(hex: 0xff111111, alpha: 1).ignoresSafeArea()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(.gray)
                        .padding()
                    TextField("", text: $buscar).placeholder(when: buscar.isEmpty){
                        Text("Search").foregroundColor(.gray)
                    }
                }.background(Color(hex: 0xff222222, alpha: 1))
                    .cornerRadius(20)
                HStack{
                    Text("Light")
                        .font(Font.custom("Starjedi", size: 30))
                        .foregroundColor(.white)
                        .padding([.trailing], 20)
                    Text("Dark").font(Font.custom("Starjedi", size: 30)).foregroundColor(.white)
                    Spacer()
                }
                VStack(alignment: .leading){
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                            ForEach((0..<3)){index in
                                VStack(alignment: .leading) {
                                    ZStack{
                                        Image(personajes[index]).resizable()
                                    }.frame(width: 300, height: 400).cornerRadius(30)
                                    Text(nombres[index]).foregroundColor(.white).padding([.vertical], 10).font(Font.custom("", size: 25))
                                    Text(historia[index]).foregroundColor(.white)
                                }.frame(width: 300)
                            }
                        }
                        
                    }
                    Spacer()
                }
            }.padding()
        }
    }
}

struct SithView_Previews: PreviewProvider {
    static var previews: some View {
        SithView()
    }
}
