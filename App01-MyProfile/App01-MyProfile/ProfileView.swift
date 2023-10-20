//
//  ProfileView.swift
//  App01-MyProfile
//
//  Created by Alumno on 10/08/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var name: String = "Jesus Lopez"
    @State var email: String = "a00835462@tec.mx"
    @State var birthDate: Date = Date()
    @State var weight: Int = 90
    @State var height:Double = 1.80
    @State var showImage = false
    @State var showDetail = false
    
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MMM/dd"
        return formatter
    }
    
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                ZStack {
                    VStack(spacing: 0) {
                        VStack {
                            ZStack {
                                Color.blue
                                VStack {
                                    Text(name)
                                        .foregroundStyle(Color.white)
                                        .font(.custom("Borel-Regular", size: 32))
                                }
                            }
                        }
                        .frame(height:geo.size.height/3)
                        VStack {
                            ZStack {
                                Color.greensea
                                VStack {
                                    Text(email)
                                        .font(.custom("Borel-Regular", size: 20))
                                        .foregroundStyle(Color.white)
                                        .tint(Color.white)
                                    Text("\(dateFormat.string(from: birthDate))")
                                        .foregroundStyle(Color.white)
                                        .font(.custom("Borel-Regular", size: 20))
                                    HStack {
                                        Text("Peso: \(weight)kgs")
                                            .foregroundStyle(Color.white)
                                            .font(.custom("Borel-Regular", size: 20))
                                        Text("Estatura: \(height, specifier: "%.2f") mts")
                                            .foregroundStyle(Color.white)
                                            .font(.custom("Borel-Regular", size: 20))
                                    }
                                    Button {
                                        showDetail.toggle()
                                    } label: {
                                        Text("Editar")
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .tint(.orange)
                                    NavigationLink {
                                        ListView()
                                    } label: {
                                        RoundedRectangle(cornerRadius: 20)
                                            .overlay {
                                                HStack {
                                                    Image(systemName: "popcorn")
                                                        .foregroundStyle(Color.blue)
                                                    Text("Películas Favoritas")
                                                        .font(.title)
                                                        .foregroundStyle(Color.white)
                                                }
                                                
                                            }
                                            .frame(width: 300, height: 60)
                                            .padding(.top, 20)
                                            .foregroundStyle(Color.orange)
                                    }

                                    
                                }
                            }
                        }
                        .frame(height: geo.size.height*2/3)
                    }
                    VStack {
                        VStack {
                            Button {
                                showImage.toggle()
                            } label: {
                                Image("messi")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white, lineWidth: 3)
                                    )
                            }
                            
                            
                            
                        }
                        .frame(height: geo.size.height*2/3)
                        VStack {
                            Spacer()
                        }
                        .frame(height:geo.size.height/3)
                    }
                }
                .sheet(isPresented: $showImage, content: {
                    ImageView()
                })
                .sheet(isPresented: $showDetail, content: {
                    DetailView(name: $name, birthDate: $birthDate, weight: $weight, height: $height)
                        .presentationDetents([.large, .medium])
                })
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
