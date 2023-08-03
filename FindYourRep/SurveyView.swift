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
        ScrollView {
            
            
            NavigationStack {
                
                VStack{
                    Spacer()
                    Spacer()
                    Text("Choose which issues are important to you!")
                    
                    Group {
                        Toggle(isOn: $issue1result) {
                            Text("Increased police funding")
                        }
                        .padding()
                        Toggle(isOn: $issue2result) {
                            Text("Mental Health")
                        }
                        .padding()
                        Toggle(isOn: $issue3result) {
                            Text("Youth Programs")
                        }
                        .padding()
                        Toggle(isOn: $issue4result) {
                            Text("Reproductive rights")
                        }
                        .padding()
                        Toggle(isOn: $issue5result) {
                            Text("Gun control")
                        }
                        .padding()
                        Toggle(isOn: $issue6result) {
                            Text("Tax cuts")
                        }
                        .padding()
                        Toggle(isOn: $issue7result) {
                            Text("Making D.C. a green city")
                        }
                        .padding()
                        Toggle(isOn: $issue8result) {
                            Text("Repairing roads")
                        }
                        .padding()
                        Toggle(isOn: $issue9result) {
                            Text("Funding for trade/vocational learning")
                        }
                        .padding()
                        Toggle(isOn: $issue10result) {
                            Text("Employment for the homeless")
                        }
                        .padding()
                    }
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
                    //                .buttonStyle(.borderedProminent)
                    
                } // for vStack
                
            } // for navigation stack
            
        } // for scroll view
        
    } // for some view
  
} // for struct view

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
