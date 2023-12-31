//
//  ContentView.swift
//  FindYourRep
//
//  Created by scholar on 8/1/23.
//
// To make something scroll we can do ScrollView{} ?
// https://www.youtube.com/watch?v=dCt4SBNSfE4 link for drop down menu

import SwiftUI

struct ContentView: View {
     @State var choiceMade = "Select Your Election"
    
    var body: some View {
            
            NavigationStack{
                
                ZStack{
                    CustomColor.lavender
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        Text("FindYourRep")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)

                        Text("Empower Your Vote:")
                            .font(.title)
                        
                        Text("Find your representative and influence change!")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                        
                        Text("How to use FindYourRep:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        Text("1. Select your election")
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        Text("2. Fill out the survey")
                            .padding()
                            .multilineTextAlignment(.leading)
                        
                        Text("3. View your potential candidate!")
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        
                        VStack{
                            Menu{
                                Button(action: {
                                    choiceMade = "DC 2022 Mayoral General Election"
                                }, label: {
                                    Text("DC 2022 Mayoral General Election")
                                })
                                Button(action: {
                                    choiceMade = "Select Your Election"
                                }, label: {
                                    Text("Select Your Election")
                                })
                            } // for menu
                        label: {
                            Label(
                                title: {Text("\(choiceMade)")},
                                icon: {Image(systemName: "plus")}
                            )
                        } // for labels
                        } // for drop dow vStack
                        
                        
                        if choiceMade == "DC 2022 Mayoral General Election" {
                            NavigationLink(destination: SurveyView()) {
                                Text("Begin")
                            } // for survey link
                            .buttonStyle(.borderedProminent)
                        }
                        
                    } // for vStack
                }//Z
            } // for navigation stack
            
            
        } // for some view
    
} // for struct view
struct CustomColor {
    static let lightGray = Color("lightGray")
    static let red1 = Color("red1")
    static let red2 = Color("red2")
    static let red3 = Color("red3")
    static let blue1 = Color("blue1")
    static let blue2 = Color("blue2")
    static let blue3 = Color("blue3")
    static let lavender = Color("lavender")


}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
