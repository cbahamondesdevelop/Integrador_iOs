import Foundation
import UIKit

class BasicTableViewCell: UITableViewCell {
    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var goActivityButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
