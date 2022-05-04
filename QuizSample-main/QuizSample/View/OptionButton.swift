import SwiftUI

struct OptionButton: View {
    
    let option: Option
    let totalRange: Int
    @State var alertShow: Bool = false
    @State private var showModal = false
    @Binding var arrayIndex: Int
    
    var body: some View {
        Button(option.name) {
            self.alertShow = true
        }
        .alert("Result", isPresented: $alertShow) {
            Button(action: {
                if option.isCorrect {
                    if arrayIndex < totalRange-1 {
                        arrayIndex += 1
                    } else {
                        self.showModal = true
                        //arrayIndex = 0
                    }
                }
            }) {
                Text("Close")
            }
        } message: {
            option.isCorrect
                ? Text("Correct")
                : Text("Wrong, Try Again")
        }.sheet(isPresented: $showModal)
        {
            Rank()
        }
    }
}
