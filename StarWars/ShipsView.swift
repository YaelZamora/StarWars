//
//  ShipsView.swift
//  StarWars
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

struct ShipsView: View {
    @State private var buscar = ""
    private let personajes = ["halcon", "xwing", "tie"]
    private let nombres = ["Millennium Falcon", "X Wing", "TIE Fighter"]
    private let historia = [
        "Was the Ship of the legendary Han Solo.",
        "Was a Ship used by Luke Skywalker",
        "Was the personal Ship of Darth Vader"
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
                    Text("Jedi")
                        .font(Font.custom("Starjedi", size: 30))
                        .foregroundColor(.white)
                        .padding([.trailing], 20)
                    Text("Sith").font(Font.custom("Starjedi", size: 30)).foregroundColor(.white)
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

struct ShipsView_Previews: PreviewProvider {
    static var previews: some View {
        ShipsView()
    }
}
