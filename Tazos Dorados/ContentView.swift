//
//  ContentView.swift
//  Tazos Dorados
//
//  Created by CEDAM 15  on 25/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationStack{
                HStack{
                    NavigationLink{
                        
                    }label: {
                        VStack{
                            Image(systemName: "bell")
                            Text("post")
                        }
                    }.padding()
                    NavigationLink{
                        
                    }label: {
                        VStack{
                            Image(systemName: "bell")
                            Text("resumen")
                        }
                    }
                    .padding()
                    NavigationLink{
                        ChatPView()
                    }label: {
                        VStack{
                            Image(systemName: "bell")
                            Text("chat")
                        }
                    }
                    .padding()
                    NavigationLink{
                        BotonView()
                    }label: {
                        VStack{
                            Image(systemName: "bell")
                            Text("boton")
                        }
                    }.padding()
                }
                .frame(width: .infinity, height: 70)
                .padding()
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
