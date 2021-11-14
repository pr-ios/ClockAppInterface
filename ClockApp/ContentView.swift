//
//  ContentView.swift
//  ClockApp
//
//  Created by Abdullah AlRashoudi on 11/14/21.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
    
        NavigationView {
           
            
            List {
                
               
                Text("Other")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                ExtractedView(myToggle: false, time: "11:00AM", message: "Alarm")
                
                ExtractedView(myToggle: true, time: "8:00AM", message: "Alarm")
                
                ExtractedView(myToggle: true, time: "9:00AM", message: "Alarm")
                
                ExtractedView(myToggle: false, time: "5:00AM", message: "Alarm")
                
                ExtractedView(myToggle: true, time: "4:00AM", message: "Alarm")
                
                ExtractedView(myToggle: false, time: "2:00AM", message: "Alarm")
                
                ExtractedView(myToggle: true, time: "3:00AM", message: "Alarm")
                
                ExtractedView(myToggle: false, time: "1:00AM", message: "Alarm")
                
                ExtractedView(myToggle: true, time: "12:00AM", message: "Alarm")
                
//                ExtractedView(myToggle: true, time: "7:00AM", message: "Alarm")
                .toolbar {
                                ToolbarItem(placement: .navigationBarLeading) {
                                    Button {
                                        
                                    } label: {
                                      Text("Edit")
                                            .foregroundColor(.orange)
                                    }                                }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                       
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.orange)
                        }
                        
                    }
                            }
                
                .navigationTitle("Alarm")
                
            }
        }.navigationViewStyle(.stack)

    
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

struct ExtractedView: View {
    @State var myToggle: Bool = false
    @State var time: String = ""
   
    @State var message: String = ""
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                
                HStack {
                Text(time)
                    .font(.system(size: 40))
                    .fontWeight(.light)
                }
                
                Text(message)
                
            }
            
            Toggle(isOn: .constant(myToggle)) {
                
            }
            
            
        }
    }
}
