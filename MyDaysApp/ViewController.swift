import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var resultButton: UIButton!
    
    private var numberOfDays = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillLayoutSubviews() {
        resultButton.layer.cornerRadius = resultButton.layer.frame.width / 6
    }
    
    @IBAction func datePciker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)!"
    }
    
}

