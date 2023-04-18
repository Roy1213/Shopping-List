//
//  ContentView.swift
//  Shopping List
//
//  Created by ROY ALAMEH on 4/18/23.
//

import SwiftUI

struct Foods : View {
    var theFood : Food
    
    var body: some View {
        VStack {
            Text(theFood.theFoodName)
        }
        .padding()
    }
}

class Food : Identifiable {
    var theFoodName : String
    init(theFoodName: String) {
        self.theFoodName = theFoodName
    }
}

struct ContentView: View {
    @State var foods = [Food(theFoodName: "Cheese"), Food(theFoodName: "sandwich"), Food(theFoodName: "mayonaise")]
    @State var field = ""
    var body: some View {
        VStack {
            List(foods) { food in
                Foods(theFood: food)
            }
            TextField("Enter item", text: $field)
            Button("Enter") {
                foods.append(Food(theFoodName: field))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
