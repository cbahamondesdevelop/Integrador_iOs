import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var participantesTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTapStart(_ sender: Any) {
        print("Boton Start")
    }
    @IBAction func onTapTermAndCondition(_ sender: Any) {
        print("Boton terminos y condiciones")
    }
}

