//
//  Survey.swift
//  FindYourRep
//
//  Created by scholar on 8/2/23.
//

import SwiftUI
struct SurveyView: View {
    @State var bowserCount = 0
    @State var grantCount = 0
    @State var hallCount = 0
    
    @State var issue1result = Bool()
    @State var issue2result = Bool()
    @State var issue3result = Bool()
    @State var issue4result = Bool()
    @State var issue5result = Bool()
    @State var issue6result = Bool()
    @State var issue7result = Bool()
    @State var issue8result = Bool()
    @State var issue9result = Bool()
    @State var issue10result = Bool()
    
    var body: some View {
        
        
        NavigationStack {
        ZStack{
            CustomColor.lavender
                .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    Text("Choose which issues are important to you!")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    ScrollView{
                        
                        Group {
                            Toggle(isOn: $issue1result) {
                                Text("1. Increased police funding")
                                    .font(.title3)
                            }
                            .padding(.horizontal, 30.0)
                            Toggle(isOn: $issue2result) {
                                Text("2. Mental Health")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue3result) {
                                Text("3. Youth Programs")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue4result) {
                                Text("4. Reproductive rights")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue5result) {
                                Text("5. Gun control")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue6result) {
                                Text("6. Tax cuts")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue7result) {
                                Text("7. Making D.C. a green city")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue8result) {
                                Text("8. Repairing roads")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue9result) {
                                Text("9. Funding for trade vocational learning")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            Toggle(isOn: $issue10result) {
                                Text("10. Employment for the homeless")
                                    .font(.title3)
                            }
                            .padding([.top, .leading, .trailing], 30.0)
                            
                        } // for group
                    } // for scroll view
                    .padding(.bottom, 30)
                    
                    Button("Calculate") {
                        if issue1result == true {
                            bowserCount += 1
                            hallCount += 2
                        }
                        if issue2result == true { bowserCount += 1
                            grantCount += 1
                        }
                        if issue3result == true { grantCount += 2
                        }
                        if issue4result == true { bowserCount += 1
                        }
                        if issue5result == true { bowserCount += 2
                            grantCount += 1
                        }
                        if issue6result == true {
                            hallCount += 1
                        }
                        if issue7result == true {
                            grantCount += 2
                        }
                        if issue8result == true {
                            hallCount += 1
                        }
                        if issue9result == true {
                            hallCount += 2
                        }
                        if issue10result == true {
                            hallCount += 2
                        }
                    }//for calculate button
                    .buttonStyle(.borderedProminent)
                    
                    if bowserCount > grantCount && bowserCount > hallCount {
                        NavigationLink(destination: Candidate2View()){
                            Text("Submit")
                        }
                        .buttonStyle(.borderedProminent)
                    } else if grantCount > hallCount && grantCount > bowserCount{
                        
                        NavigationLink(destination: Candidate3View()){
                            Text("Submit")
                        }
                        .buttonStyle(.borderedProminent)
                    } else if hallCount > grantCount && hallCount > bowserCount{
                        NavigationLink(destination: Candidate1View()){
                            Text("Submit")
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    
                    // for results link
                    
                } // for vStack
                
            } // for navigation stack
        } // fopr zStack
        
    } // for some view
  
} // for struct view

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
