//
//  BotonView.swift
//  Tazos Dorados
//
//  Created by CEDAM 15  on 25/11/24.
//

import SwiftUI

struct botonLlamada: View {
    
    var imagen: String
    var texto: String   	
    var texto2: String
    var body: some View {
        Button(action: {}) {
            VStack(alignment: .center){
                Image(systemName: imagen)
                .resizable()
                    .frame(width: 50, height: 50)
                Text(texto)
                    .font(.title2)
                    .bold()
                Text(texto2)
                    .font(.caption)
                    .bold()
            }
            .frame(width: 100, height: 200)
            .foregroundColor(.black)
            .background(.white)
            .shadow(radius: 3)
            .cornerRadius(10)
        }
    }
}
struct BotonView: View {

    var imagenes: [String] = ["bell","bell","bell","bell"]
    var textos: [String] = ["call","call","call","call"]
    var textos2: [String] = ["911","psicologo","contacto1","contacto2"]
    
    var body: some View {
        VStack{
            HStack{
                botonLlamada(imagen: imagenes[0], texto: textos[0], texto2: textos2[0])
                
                botonLlamada(imagen: imagenes[1], texto: textos[1], texto2: textos2[1])
            }
            HStack{
                botonLlamada(imagen: imagenes[2], texto: textos[2], texto2: textos2[2])
                
                botonLlamada(imagen: imagenes[3], texto: textos[3], texto2: textos2[3])
            }
        }.frame(width: 500, height: 600)
    }
}

#Preview {
    BotonView()
}
