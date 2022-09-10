//
//  ContentView.swift
//  CW3
//
//  Created by Aalya on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
  @State  var degree = ""
    @State var textname = ""
    var body: some View {
        VStack{
            Text("حاسبة الدرجات").bold()
            Spacer()
            Image("image")
      
        TextField(" ادخل درجتك", text: $degree)
            Text("احسب درجتي")
                .onTapGesture {
                    if Int(degree) ?? 0 >= 90 {
                        textname="امتياز"
                        
                    }else if Int(degree) ?? 0 >= 80{
                    
                            textname = "جيد جدا "
                    }
                    else if Int(degree) ?? 0 >= 70{
                        textname = "جيد"
                        
                        
                        
                    }
                }
            Spacer()
            
            Text(textname)
            
            Spacer()
            
            
        
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
