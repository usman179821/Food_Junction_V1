//
//  ReviewViewController.swift
//  Food Junction
//
//  Created by apple on 13/04/2022.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for rateButton in rateButtons {
            rateButton.alpha = 0
        }
        
        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // Applying the blur effect
    let blurEffect = UIBlurEffect(style: .dark)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
    let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        // Make the button invisible
        for rateButton in rateButtons {
            rateButton.transform = moveRightTransform
            rateButton.alpha = 0
    }
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
    UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations: { self.rateButtons[0].alpha = 1.0
    self.rateButtons[0].transform = .identity
        }, completion: nil)
    UIView.animate(withDuration: 0.4, delay: 0.15, options: [], animations: { self.rateButtons[1].alpha = 1.0
    self.rateButtons[1].transform = .identity
        }, completion: nil)
    UIView.animate(withDuration: 0.4, delay: 0.2, options: [], animations: { self.rateButtons[2].alpha = 1.0
    self.rateButtons[2].transform = .identity
        }, completion: nil)
    UIView.animate(withDuration: 0.4, delay: 0.25, options: [], animations: { self.rateButtons[3].alpha = 1.0
    self.rateButtons[3].transform = .identity
        }, completion: nil)
    UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations: { self.rateButtons[4].alpha = 1.0
    self.rateButtons[4].transform = .identity
        }, completion: nil)
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//    UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations: { self.rateButtons[0].alpha = 1.0
//        }, completion: nil)
//    UIView.animate(withDuration: 0.4, delay: 0.15, options: [], animations: { self.rateButtons[1].alpha = 1.0
//        }, completion: nil)
//    UIView.animate(withDuration: 0.4, delay: 0.2, options: [], animations: { self.rateButtons[2].alpha = 1.0
//        }, completion: nil)
//    UIView.animate(withDuration: 0.4, delay: 0.25, options: [], animations: { self.rateButtons[3].alpha = 1.0
//        }, completion: nil)
//    UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations: { self.rateButtons[4].alpha = 1.0
//        }, completion: nil)
//    }
}
