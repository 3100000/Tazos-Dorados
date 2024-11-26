//
//  ChatPView.swift
//  Tazos Dorados
//
//  Created by CEDAM 15  on 25/11/24.
//

import SwiftUI

//clase para ingresar mensajes
struct MesasgeInputView: View {
    @State var texto = ""
    var body: some View {
        HStack(alignment: .bottom){
            Image(systemName: "bell")//
            TextField("mensaje",text: $texto)
                .keyboardType(.default)
                .background(.gray.opacity(0.1))
                .shadow(radius: 3)
                .cornerRadius(10)
            //aqui va la imagen del perfil
            AsyncImage(url: URL(string: "https://picsum.photos/200"))
                .frame(width: 20, height: 20)
                .cornerRadius(10)
        }
        .frame(width: .infinity, height: 80)
        .cornerRadius(20)
        .padding()
    }
}
struct MesasgeOutputView: View {
    @State var texto: String
    var body: some View {
        Spacer(minLength: 1)
        VStack(alignment: .leading){
            Text(texto)
        }.frame(width: 200, height: 50)
            .background(.blue)
            .cornerRadius(10)
    }
}
struct ChatPView: View {
    
    var mensajes: [String] = ["hola","hola","como estas?","bien y tu?","bien gracias", "adios", "adios"]
    var body: some View {
        MesasgeOutputView(texto: mensajes[0])
        MesasgeOutputView(texto: mensajes[1])
        MesasgeOutputView(texto: mensajes[2])
        MesasgeOutputView(texto: mensajes[3])
        MesasgeOutputView(texto: mensajes[4])
        MesasgeOutputView(texto: mensajes[5])
        MesasgeOutputView(texto: mensajes[6])
        MesasgeInputView()
    }
}

#Preview {
    ChatPView()
}
