//
//  ContentView.swift
//  Sturl
//
//  Created by Fannisa Rahmah on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var shouldShowOnboarding: Bool = true
    @State private var searchText: String = ""
    @State var selected = 1
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color(red: 0.96, green: 0.96, blue: 0.96).ignoresSafeArea()
                VStack {
                    Image("Top").edgesIgnoringSafeArea(.top)
                    Spacer()
                }
                VStack {
                    VStack {
                        Text("Study Resources").font(Font.custom("Nunito-Bold", size: 34))
                            .font(.largeTitle)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            TextField("Search", text: $searchText)
                        }
                        .font(.callout)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.white)
                        )
                    }
                    .padding(.horizontal, 16.0)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color(red: 0.96, green: 0.96, blue: 0.96))
                            .frame(width: 390, height: 68, alignment: .center)
                        .padding(.top, 32.0)
//
//                        Picker(selection: $selected, label: Text("Picker"), content: {
//                            Text("All Studies").tag(1)
//                            Text("Collections").tag(2)
//                            Text("Favorites").tag(3)
//                        })
//                        .pickerStyle(SegmentedPickerStyle())
                    }
                    VStack(spacing: 16) {
                        
                        NavigationLink(destination: AddStudyPageView() , label: {
                            CardStudyView(title: "Belajar Visual Hierarchy")
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            CardStudyView(title: "Belajar Visual Hierarchy")
                        })

                        
                        CardStudyView(title: "Belajar Visual Hierarchy")
                        CardStudyView(title: "Belajar Visual Hierarchy")
                        CardStudyView(title: "Belajar Visual Hierarchy")
                    }
                }
            }
        }

        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}

struct AddStudyPageView: View {
    
    @State private var title: String = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.96, blue: 0.96).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 24) {
                VStack(spacing: 8) {
                    HStack {
                        Text("Set Title").font(Font.custom("Nunito-Bold", size: 16))
                            .font(.callout)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                        Spacer()
                        
                        Text("0/25").font(Font.custom("Nunito-Regular", size: 16))
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                    }
                    HStack {
                        TextField("Input Title", text: $title)
                    }
                    .font(.callout)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                    )
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Study Collection").font(Font.custom("Nunito-Bold", size: 16))
                        .font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                    
                    NavigationLink(destination: Text("Yay") , label: {
                        HStack {
                            Text("Select Collection")
                                .font(Font.custom("Nunito-Bold", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            Image(systemName: "chevron.right").foregroundColor(.black)
                        }
                        
                        .padding()
                        .frame(width: 358, height: 48, alignment: .leading)
                        .background(.white)
                        .cornerRadius(8)
                    })
                }
                
                VStack(alignment: .leading) {
                    Text("Notes").font(Font.custom("Nunito-Bold", size: 16))
                        .font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                    
                    NavigationLink(destination: Text("Yay") , label: {
                        HStack {
                            Text("Input Notes")
                                .font(Font.custom("Nunito-Bold", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            Image(systemName: "chevron.right").foregroundColor(.black)
                        }
                        
                        .padding()
                        .frame(width: 358, height: 48, alignment: .leading)
                        .background(.white)
                        .cornerRadius(8)
                    })
                }
                
                VStack(alignment: .leading) {
                    Text("Resources").font(Font.custom("Nunito-Bold", size: 16))
                        .font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                    
                    NavigationLink(destination: Text("Yay") , label: {
                        HStack {
                            Image(systemName: "plus")
                                .foregroundColor(Color(red: 0.31, green: 0.43, blue: 0.89))
                            Text("Add Resources")
                                .font(Font.custom("Nunito-Bold", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.31, green: 0.43, blue: 0.89))
                                .multilineTextAlignment(.center)
                                
                            
                        }
                        .frame(width: 358, height: 48, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color(red: 0.31, green: 0.43, blue: 0.89), lineWidth: 2.0)
                        )
                    })
                    
                }
                
                
                
                Spacer()
            }
            .padding()
            
        }
    }
}


struct CardStudyView: View {
    
    @State var title: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .frame(width: 358, height: 84, alignment: .center)
            
            VStack {
                VStack {
                    HStack {
                        Text(title).font(Font.custom("Nunito-Bold", size: 16))
                            .font(.callout)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                        
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color(red: 0.96, green: 0.97, blue: 0.99))
                                .frame(width: 57, height: 26, alignment: .center)
                            Text("Design").font(Font.custom("Nunito-Regular", size: 13))
                                .font(.footnote)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                        }
                    }
                    
                    HStack {
                        Text("2 Resources").font(Font.custom("Nunito-Regular", size: 16))
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                        Spacer()
                        Text("11 Jul").font(Font.custom("Nunito-Regular", size: 13))
                            .font(.footnote)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.black)
                    }
                    
                }
                .padding(16)
            }
            .frame(width: 358, height: 84, alignment: .center)
        }
    }
}

struct OnboardingView: View {
    
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("shapeOnboarding").edgesIgnoringSafeArea(.all)
                Spacer()
            }
            VStack {
                Image("onboarding")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 330.0, height: 300.0, alignment: .center)
                    .padding(.bottom, 142.0)
                
                VStack {
                    
                    Text("Welcome to Sturl").font(Font.custom("Nunito-Bold", size: 34))
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 8.0)
                        .foregroundColor(.white)
                    
                    Text("Simple way to organize your resources while studying.").font(Font.custom("Nunito-Bold", size: 17))
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 24.0)
                
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get Started")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                        .frame(width: 358, height: 48, alignment: .center)
                        .background(.white)
                        .cornerRadius(8)
                })
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
