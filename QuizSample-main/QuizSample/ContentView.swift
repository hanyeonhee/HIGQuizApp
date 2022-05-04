import SwiftUI

struct ContentView: View {
    
    @State var arrayIndex: Int = 0
    @State var quizIndex: Int = 0
    let totalRange = QuizSample.count
    
    var body: some View {
        VStack {
            Text("\(QuizSample[arrayIndex].index) / \(totalRange)")
                .padding()
            Text("What is the name of this component? ")
                .padding()
            AsyncImage(url: URL(string: QuizSample[arrayIndex].description), scale: 3.0)
            
            Spacer()
                .frame(height: 50)
            
            ForEach(QuizSample[arrayIndex].options) {option in
                OptionButton(
                    option: option,
                    totalRange: totalRange,
                    arrayIndex: $arrayIndex
                )
            }
        }.navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
