import Foundation

let QuizSample : [Quiz] = [
    //Quiz 1
    Quiz(
        index: 1,
        description: "https://developer.apple.com/design/human-interface-guidelines/ios/images/steppers_2x.png",
        options: [
            Option(name: "Steppers", isCorrect: true),
            Option(name: "Switches", isCorrect: false),
            Option(name: "Text Fields", isCorrect: false)
        ]
    ),
    // Quiz 2
    Quiz(
        index: 2,
        description: "https://developer.apple.com/design/human-interface-guidelines/ios/images/switches-default_2x.png",
        options: [
            Option(name: "Steppers", isCorrect: false),
            Option(name: "switches", isCorrect: true),
            Option(name: "Text Fields", isCorrect: false)
        ]
    ),
    // Quiz 3
    Quiz(
        index: 3,
        description: "https://developer.apple.com/design/human-interface-guidelines/ios/images/Text_Fields_2x.png",
        options: [
            Option(name: "Steppers", isCorrect: false),
            Option(name: "Switches", isCorrect: false),
            Option(name: "TextFields", isCorrect: true)
        ]
    )
]
