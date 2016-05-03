

import Foundation

import UIKit

class EventDetailsViewController: UIViewController, UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var labDescription: UILabel!
    
    @IBOutlet weak var labStartData: UILabel!
    
    @IBOutlet weak var labEndData: UILabel!
    
    @IBOutlet weak var labLocation: UILabel!
    
    @IBOutlet weak var labLink: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labLink.userInteractionEnabled = true
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(EventDetailsViewController.onTapLink(_:)))
        labLink.addGestureRecognizer(tap)
        tap.delegate = self
        
        if g_nDetail == 0 //circuit
        {
            backgroundImage.image = UIImage(named: "circuit_blend.png")
            labDescription.text = "Barcelona Circuit Festival 2016 is the largest gay festival of its kind in Europe, attracting more than 70,000 gay visitors to Barcelona every August. Events include spectacular parties with world class DJ’s, pool parties and a day and night at one of Europe’s largest water parks with 14,000 partygoers."
            labStartData.text = "Tuesday, August 2"
            labEndData.text = "Sunday, August 14"
            labLocation.text = "Barcelona"
            labLink.text = "http://www.circuitfestival.net/2016/es/main"
        }
        else if g_nDetail == 1 //XLSIOR
        {
            backgroundImage.image = UIImage(named: "circuit_blend.png")
            labDescription.text = "One island, over 30,000 people from all over the world all connected by love and the universal language of music. This is who we are and this is what XLSIOR is all about. Old friends, new friends and loved ones.                                                    This is where all the magic begins. Bringing you one of the most exclusive international Summer Gay Festivals in the world. As every year, XLSIOR grows bigger and brings you more.                                                             Launched in 2009, XLSIOR’s founder AnastasiosKapetanias created this festival to become a getaway vacation that combines fun, luxury and most importantly a friendly atmosphere that knows no boundaries. "
            labStartData.text = "Wednesday, August 17"
            labEndData.text = "Sunday, August 21"
            labLocation.text = "Mykonos"
            labLink.text = "http://www.xlsiorfestival.com/"
        }
        else if g_nDetail == 2 //White Party / Miami
        {
            backgroundImage.image = UIImage(named: "WinterParty_blend.png")
            labDescription.text = "Voted one of the sexiest beach parties in South Florida, this open-air dance event is guaranteed to put a smile on your face and a beat in your heart! Join thousands of the hottest men on the planet for Muscle Beach Party’s “Pleasure Island” on the sun drenched sands of Miami Beach."
            labStartData.text = "Wednesday, November 25"
            labEndData.text = "Saturday, November 28"
            labLocation.text = "Miami"
            labLink.text = "http://whiteparty.org/"
            
            labDescription.textColor = UIColor.grayColor()
            labStartData.textColor = UIColor.grayColor()
            labEndData.textColor = UIColor.grayColor()
            labLocation.textColor = UIColor.grayColor()
            labLink.textColor = UIColor.grayColor()
        }
        else if g_nDetail == 3 //Black Party
        {
            backgroundImage.image = UIImage(named: "BlackParty_blend.png")
            labDescription.text = "Considered by many as the Father of all large circuit events, THE BLACK PARTY® is one of Gay New York’s most attended, longest running and highly anticipated events. With more than 5,000 attendees it remains one of the biggest gay dance parties in the world. It is known and respected world wide for cutting edge productions, innovative staging, superstar international DJs, world class performers and notorious “strange live acts.” "
            labStartData.text = "Sunday, March 29"
            labEndData.text = "Sunday, March 30"
            labLocation.text = "New York"
            labLink.text = "http://www.blackpartyexpo.com/"
        }
        else if g_nDetail == 4 //Winter Party
        {
            backgroundImage.image = UIImage(named: "WinterParty_blend.png")
            labDescription.text = "This world-famous celebration brings 10,000 people from around the globe together for six unforgettable days and nights in Miami Beach. The 20+ events feature beautiful men and women, hot dance parties in spectacular nightclubs, cocktail receptions, pool parties and more - all culminating with the sexiest beach party on the planet."
            labStartData.text = "Wednesday, March 1"
            labEndData.text = "Sunday, March 7"
            labLocation.text = "Miami"
            labLink.text = "http://www.winterparty.com/"
            
            labDescription.textColor = UIColor.grayColor()
            labStartData.textColor = UIColor.grayColor()
            labEndData.textColor = UIColor.grayColor()
            labLocation.textColor = UIColor.grayColor()
            labLink.textColor = UIColor.grayColor()
        }
        else if g_nDetail == 5 //Black and Blue Ball
        {
            backgroundImage.image = UIImage(named: "blackandblue_blend.png")
            labDescription.text = "Montreal’s Black & Blue Festival is considered to be the world’s largest gay-benefit dance festival. The festival is a week-long string of parties hosted by Bad Boy Club Montréal (aka BBCM and Foundation BBCM). It is held every year, during the Canadian Thanksgiving weekend. The festival attracts thousands of tourists to Montreal every year. The proceeds of the festival are donated to AIDS support organizations."
            labStartData.text = "Wednesday, October 7"
            labEndData.text = "Tuesday, October 13"
            labLocation.text = "Montreal "
            labLink.text = "http://bbcm.org/en/"
        }
        else if g_nDetail == 6 //White Party / Palm Springs
        {
            backgroundImage.image = UIImage(named: "WhiteParty_PalmSprings_blend.png")
            labDescription.text = "White Party Palm Springs has evolved during the past 27 years into one of the most recognizable LGBT event brands in the world. It’s where Jennifer Lopez, Lady Gaga and Toni Braxton performed in the early days of their careers, cementing a loyal gay following. It’s also where gay men wearing white — from T-shirts and Speedos as fitted as a second skin to glittery wings — became synonymous with white-hot."
            labStartData.text = "Friday, April 8"
            labEndData.text = "Monday, April 11"
            labLocation.text = "Palm Springs "
            labLink.text = "http://www.jeffreysanker.com/"
            
            labDescription.textColor = UIColor.grayColor()
            labStartData.textColor = UIColor.grayColor()
            labEndData.textColor = UIColor.grayColor()
            labLocation.textColor = UIColor.grayColor()
            labLink.textColor = UIColor.grayColor()
        }
        
    }
    
  
    
    func onTapLink(sender:UITapGestureRecognizer)
    {
        if g_nDetail == 0 //circuit
        {
            labLink.text = "http://www.circuitfestival.net/2016/es/main"
            
        }
        else if g_nDetail == 1 //XLSIOR
        {
            labLink.text = "http://www.xlsiorfestival.com/"
        }
        else if g_nDetail == 2 //White Party / Miami
        {
            labLink.text = "http://whiteparty.org/"
        }
        else if g_nDetail == 3 //Black Party
        {
            labLink.text = "http://www.blackpartyexpo.com/"
        }
        else if g_nDetail == 4 //Winter Party
        {
            labLink.text = "http://www.winterparty.com/"
        }
        else if g_nDetail == 5 //Black and Blue Ball
        {
            labLink.text = "http://bbcm.org/en/"
        }
        else if g_nDetail == 6 //White Party / Palm Springs
        {
            labLink.text = "http://www.jeffreysanker.com/"
        }
        
        UIApplication.sharedApplication().openURL(NSURL(string: labLink.text!)!);
    }
    
}
