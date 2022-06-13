import Foundation
import Alamofire

class HelperApi {
    //MARK: Propiedades
    var apiURL: String
    //MARK: Inicializadores
    init(apiURL: String){
        self.apiURL = apiURL
    }
    //MARK: Metodos
    func getRandomEvent(){
        AF.request("http://www.boredapi.com/api/activity/").response {respuesta in
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
    
    func getRandomEventForParticipant(cantParticipantes: Int){
    
        AF.request("http://www.boredapi.com/api/activity?participants=" + String(cantParticipantes)).response {respuesta in
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
    func getEventsForPrice(price: Double){
        AF.request("http://www.boredapi.com/api/activity? precio=" + String(price)).response {respuesta in
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
}

