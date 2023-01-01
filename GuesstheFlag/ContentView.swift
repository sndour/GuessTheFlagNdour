//
//  ContentView.swift
//  GuesstheFlag
//
//  Created by Stéphane Adefemi NDOUR on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var questionLeft = 8
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            //            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center:  .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Text("Gess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack (spacing: 20){
                    questionLeft>0 ?  VStack {
                        
                        Text("Tap the flag of")
                            .foregroundColor(.white)
                            .font(.subheadline.weight((.heavy)))
                        Text(countries[correctAnswer])
                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    } :
                    VStack {
                        Text("Thank you for playing")
                        Text("bye!")
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            //flag was tapped
                            flagTapped(number)
                        } label: {
                            questionLeft>0 ? Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                            : Image(systemName: "heart.fill")
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                        
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
                
                    
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }
   
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
            print("ici on a le nombre de question qui reste \(questionLeft)")
            questionLeft -= 1
            print("ici on a le nombre de question qui reste \(questionLeft)")
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
