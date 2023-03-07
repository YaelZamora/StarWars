//
//  JediView.swift
//  StarWars
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

struct JediView: View {
    @State private var buscar = ""
    let personajes = ["Yoda", "obiwan", "mace"]
    private let nombres = ["Yoda", "Obiwan Kenobi", "Mace Windu"]
    private let historia = [
        "Yoda was a legendary Jedi Master and stronger than mostin his connection with the Force.",
        "Obiwan was the master of Luke and Anakin Skywalker, he believe in his partners.",
        "Mace Windu was the champion of the Jedi Order"
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
                Spacer()
            }.padding()
        }
    }
}

struct JediView_Previews: PreviewProvider {
    static var previews: some View {
        JediView()
    }
}
