import UIKit
import PlaygroundSupport

let vc = UIViewController()
var darkMode = false


let label = UILabel(frame: CGRect(x: 62, y: 40, width: 200, height: 50))
label.text = "🌞 Light Mode"
label.font = label.font.withSize(30)
label.textColor = .black


let toggle =  UIAction(title: "newText") { (action) in
    darkMode = !darkMode

    label.text = darkMode ? "🌚 Dark Mode" : "🌞 Light Mode"
    label.textColor = darkMode ? .white : .black
    vc.view.backgroundColor = darkMode ? .black : .white
}


let button = UIButton(frame: CGRect(x: 60, y: 115, width: 200, height: 55), primaryAction: toggle)
button.backgroundColor = .systemGray
button.setTitle("Toggle", for: .normal)
button.setTitleColor(.white, for: .normal)
button.layer.cornerRadius = 10


vc.view.backgroundColor = .white
vc.view.addSubview(label)
vc.view.addSubview(button)


PlaygroundPage.current.liveView = vc
