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
        Text("The food is \(theFood.theFoodName)")
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
            NavigationView {
                List(foods) { food in
                    //Foods(theFood: food)
                    NavigationLink(destination: Foods(theFood: food)) {
                        Text(food.theFoodName)
                    }
                }
            }
            TextField("Enter item", text: $field)
            Button("Enter") {
                foods.append(Food(theFoodName: field))
            }
            Button("Clear") {
                foods = []
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
