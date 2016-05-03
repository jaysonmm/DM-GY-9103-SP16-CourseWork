

import Foundation

import UIKit

class EventListViewController: UIViewController, UINavigationControllerDelegate
{
    
    
    override func viewDidLoad()
    {
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewWillAppear(animated: Bool)
    {
        
    }
    
    override func viewWillDisappear(animated: Bool)
    {
        
    }
    
    // go to Details
    func goToDetails()
    {
        self.performSegueWithIdentifier("SEGUE_LIST_DETAIL", sender: nil)
    }
    
    @IBAction func onTapCircuit(sender: AnyObject) {
        
        g_nDetail = 0
        self.goToDetails()
    }
    
    @IBAction func onTapXLSIOR(sender: AnyObject) {
        g_nDetail = 1
        self.goToDetails()
    }
    
    @IBAction func onTapWhitePartMiami(sender: AnyObject) {
        g_nDetail = 2
        self.goToDetails()
    }
    
    @IBAction func onTapBlackParty(sender: AnyObject) {
        g_nDetail = 3
        self.goToDetails()
    }
    
    @IBAction func onTapWinterParty(sender: AnyObject) {
        g_nDetail = 4
        self.goToDetails()
    }
    
    @IBAction func onTapBlackBlue(sender: AnyObject) {
        g_nDetail = 5
        self.goToDetails()
    }
    
    @IBAction func onTapWhitePartyPalmSpring(sender: AnyObject) {
        g_nDetail = 6
        self.goToDetails()
    }
    
}