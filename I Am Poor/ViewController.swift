//
//  ViewController.swift
//  I Am Poor
//
//  Created by Emmanuel Job  on July/08/2018.
//
//




import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IDONTSAVE: UISwitch!
    @IBOutlet weak var IDONTSAVE_LABEL: UILabel!
    @IBOutlet weak var ISPENDMORE : UISwitch!
    @IBOutlet weak var ISPENDMORE_LABEL: UILabel!
    @IBOutlet weak var IDONTPRIORITIZE : UISwitch!
    @IBOutlet weak var IDONTPRIORITIZE_LABEL : UILabel!
    @IBOutlet weak var IDONTTRACKSPENDING : UISwitch!
    @IBOutlet weak var IDONTTRACKSPENDING_LABEL : UILabel!
    @IBOutlet weak var IDONOTKNOWWANTSNEEDS : UISwitch!
    @IBOutlet weak var IDONTKNOWWANTSNEEDS_LABEL : UILabel!
    @IBOutlet weak var RESULT_LABEL : UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    enum UISWITCH_OPTION_ENUM : Int {
        case IDONT_SAVE = 0
        case ISPENDMORE = 1
        case SAVINGSNOTPRIORITY = 2
        case IDONTTRACK = 3
        case IDONTKNOWNEEDSANDWANTS = 4
    }
    
    @IBAction func iamPoorActionHandler(_ sender: Any)
    {
        RESULT_LABEL.textColor = UIColor.white
        
        guard let uiswitch = sender as? UISwitch else {
            return
        }
        
        switch uiswitch.tag {
            
            case UISWITCH_OPTION_ENUM.IDONT_SAVE.rawValue :
                IDONTSAVE_LABEL.textColor = IDONTSAVE.isOn ?  setupSwitches(UISwtichOption: UISWITCH_OPTION_ENUM.IDONT_SAVE) :  UIColor.white
                RESULT_LABEL.text = " -> Save First and Spend Next";
                
            break
            
            case UISWITCH_OPTION_ENUM.ISPENDMORE.rawValue:
                ISPENDMORE_LABEL.textColor = ISPENDMORE.isOn ?  setupSwitches(UISwtichOption: UISWITCH_OPTION_ENUM.ISPENDMORE) : UIColor.white
                RESULT_LABEL.text = " -> Create a Monthly Budget";
                
            break
            
            case UISWITCH_OPTION_ENUM.SAVINGSNOTPRIORITY.rawValue:
                IDONTPRIORITIZE_LABEL.textColor = IDONTPRIORITIZE.isOn ?  setupSwitches(UISwtichOption: UISWITCH_OPTION_ENUM.SAVINGSNOTPRIORITY) :  UIColor.white
                RESULT_LABEL.text = " -> Cultivate the habbit of savings";
                
            break
            
          case UISWITCH_OPTION_ENUM.IDONTTRACK.rawValue:
                IDONTTRACKSPENDING_LABEL.textColor = IDONTTRACKSPENDING.isOn ?  setupSwitches(UISwtichOption: UISWITCH_OPTION_ENUM.IDONTTRACK) :  UIColor.white
                RESULT_LABEL.text = " -> Dont' use credit card, use the currency notes";
                
             break
            
          case UISWITCH_OPTION_ENUM.IDONTKNOWNEEDSANDWANTS.rawValue:
            IDONTKNOWWANTSNEEDS_LABEL.textColor =  IDONOTKNOWWANTSNEEDS.isOn ?  setupSwitches(UISwtichOption: UISWITCH_OPTION_ENUM.IDONTKNOWNEEDSANDWANTS) :  UIColor.white
                RESULT_LABEL.text = " -> Learn to differentiate Needs and Wants";
            break
            default:
                return
            }
    }
    
    func setupSwitches(UISwtichOption : UISWITCH_OPTION_ENUM) -> UIColor {
        
        switch UISwtichOption {
         case .IDONT_SAVE:
                ISPENDMORE.setOn(false, animated: true)
                ISPENDMORE_LABEL.textColor = UIColor.white
                
                IDONTPRIORITIZE.setOn(false, animated: true)
                IDONTPRIORITIZE_LABEL.textColor = UIColor.white
                
                IDONTTRACKSPENDING.setOn(false, animated: true)
                IDONTTRACKSPENDING_LABEL.textColor = UIColor.white
                
                IDONOTKNOWWANTSNEEDS.setOn(false, animated: true)
                IDONTKNOWWANTSNEEDS_LABEL.textColor = UIColor.white
                break
            
        case .ISPENDMORE:
            IDONTSAVE.setOn(false, animated: true)
            IDONTSAVE_LABEL.textColor = UIColor.white
            
            IDONTPRIORITIZE.setOn(false, animated: true)
            IDONTPRIORITIZE_LABEL.textColor = UIColor.white
            
            IDONTTRACKSPENDING.setOn(false, animated: true)
            IDONTTRACKSPENDING_LABEL.textColor = UIColor.white
            
            IDONOTKNOWWANTSNEEDS.setOn(false, animated: true)
            IDONTKNOWWANTSNEEDS_LABEL.textColor = UIColor.white
            break
            
        case .SAVINGSNOTPRIORITY:
            ISPENDMORE.setOn(false, animated: true)
            ISPENDMORE_LABEL.textColor = UIColor.white
            
            IDONTSAVE.setOn(false, animated: true)
            IDONTSAVE_LABEL.textColor = UIColor.white
            
            IDONTTRACKSPENDING.setOn(false, animated: true)
            IDONTTRACKSPENDING_LABEL.textColor = UIColor.white
            
            IDONOTKNOWWANTSNEEDS.setOn(false, animated: true)
            IDONTKNOWWANTSNEEDS_LABEL.textColor = UIColor.white
            break
            
        case .IDONTTRACK:
            ISPENDMORE.setOn(false, animated: true)
            ISPENDMORE_LABEL.textColor = UIColor.white
            
            IDONTSAVE.setOn(false, animated: true)
            IDONTSAVE_LABEL.textColor = UIColor.white
            
            IDONOTKNOWWANTSNEEDS.setOn(false, animated: true)
            IDONTKNOWWANTSNEEDS_LABEL.textColor = UIColor.white
            
            IDONTPRIORITIZE.setOn(false, animated: true)
            IDONTPRIORITIZE_LABEL.textColor = UIColor.white
            
            break
 
        case .IDONTKNOWNEEDSANDWANTS:
            ISPENDMORE.setOn(false, animated: true)
            ISPENDMORE_LABEL.textColor = UIColor.white
            
            IDONTSAVE.setOn(false, animated: true)
            IDONTSAVE_LABEL.textColor = UIColor.white
            
            IDONTPRIORITIZE.setOn(false, animated: true)
            IDONTPRIORITIZE_LABEL.textColor = UIColor.white
            
            IDONTTRACKSPENDING.setOn(false, animated: true)
            IDONTTRACKSPENDING_LABEL.textColor = UIColor.white
            
            break
            
            
            
        }
        return UIColor.red
    }
    
}

