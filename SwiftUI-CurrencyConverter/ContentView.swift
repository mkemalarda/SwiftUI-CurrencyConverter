//
//  ContentView.swift
//  SwiftUI-CurrencyConverter
//
//  Created by Mustafa Kemal ARDA on 4.10.2023.
//

import SwiftUI

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView: View {
    
    @State var coin : String = ""
    @State var result = 0.0
    
    var body: some View {

        NavigationView {
               
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Currency Converter")
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("TRY",text: $coin)
                        .keyboardType(.decimalPad)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(30)
                    
                    HStack {
                        Button("Dollar $") {
                            result = Float64(coin)! / 28.0
                        }
                        
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 70, height: 50)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                        Spacer()
                        
                    Button("Euro €"){
                        
                        result = Float64(coin)! / 29
                    }
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 70, height: 50)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding()
                    Spacer()
                    
                Button("Sterlin £") {
                    result = Float64(coin)! / 30
                    
                }
                .foregroundColor(.white)
                .bold()
                .frame(width: 70, height: 50)
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
                Spacer()
                
            }
            
            Text("TRY : \(result)")
                .foregroundColor(.black)
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(30)
                .padding()
                     
                }
            }
        }
        .onTapGesture {
            self.dismissKeyboard()
        }
    }
}

#Preview {
    ContentView()
}

