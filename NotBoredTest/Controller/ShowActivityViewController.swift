import UIKit
import Alamofire

class ShowActivityViewController: UIViewController {

    @IBOutlet weak var participantsTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tryAnother(_ sender: Any) {
        consumirAPI(tipo: "relaxation")
    }
    
    func consumirAPI(tipo:String)
    {
        
        AF.request("http://www.boredapi.com/api/activity?type="+tipo).response {respuesta in
            debugPrint(respuesta)
            
            guard let data = respuesta.data else {
                print("no hay data")
                return
            }
            
            do {
                let result = try JSONDecoder().decode([Response].self, from: data)
                //print(result)
                
                result.forEach { act in
                    print(act.activity)
                    print(act.price)
                    print(act.participants)
                }
            }
            catch let error {
                print("Se produjo un error: \(error)")
            }
        }
    }
    @IBAction func onTapCerrar(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
