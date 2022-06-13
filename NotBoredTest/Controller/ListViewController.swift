import UIKit

class ListViewController: UIViewController, UITableViewDataSource {

    var activities : [String] = ["Education", "Recreational", "Social", "Diy", "Charity", "Coocking", "Relaxation", "Music", "Busywork"]
   
    @IBOutlet weak var activityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityTableView.dataSource = self
        activityTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : BasicTableViewCell = activityTableView.dequeueReusableCell(withIdentifier: "CeldaBasicaPlantilla", for: indexPath) as! BasicTableViewCell
        
        
        cell.activityLabel.text  = activities[indexPath.row]
        
        return cell
    }

}
