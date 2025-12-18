//  🏔️ MTECH Code Challenge ST02: "Profile Page"
//  Concept: Practice using SwiftUI view modifiers to style a view

//  Instructions:
//  Below is a very basic structure for a profile view. You can view
//  Using SwiftUI's built in view modifiers, improve the appearance of the profile page.
//  No specific requirements for what it should look like are set so that you can flex your creativity, but you may want to try to use:
//  .background, .font, .foregroundStyle, .padding, .border

//  Notes:
//  Run the playground to see a preview. If you cannot see the preview, make sure Live View is enabled (Press Option + Command + Enter or, in the menu, click Editor -> Live View). Make sure "PlaygroundPage.current.setLiveView(ContentView())" is at the bottom of your code as well.

//  ⌺ Black Diamond Challenge:
//  In addition to styling the existing Text objects, create other new objects befitting a social media profile page, such as Image, Button, or other views.

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hi! My name is Ezra")
                    .padding()
                
                Spacer(minLength: 200)
                
                VStack {
                    Text("My interests are...")
                        .bold()
                    Group {
                        Text("Gaming")
                        Text("Food")
                        Text("Photography Sunsets")
                    }
                    .font(.footnote)
                    .italic()
                }
                .frame(width: 250)
                .padding()
                .glassEffect()
                .shadow(radius: 10)
                
                Spacer()
                
                VStack {
                    Text("I really dislike...")
                        .bold()
                    Group {
                        Text("Waking up before I wanna")
                        Text("Waking up after I wanna")
                        Text("Things I dislike")
                    }
                    .font(.footnote)
                    .italic()
                }
                .frame(width: 250)
                .padding()
                .glassEffect()
                .shadow(radius: 10)
                
                Spacer(minLength: 200)
            }
            .frame(width: 500, height: 700)
            .background(Color.cyan)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "person.fill")
                        Text("My Profile")
                    }
                        .font(.largeTitle)
                        .underline()
                        .bold()
                }
            }
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

