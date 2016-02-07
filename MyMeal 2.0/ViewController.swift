//
//  ViewController.swift
//  MyMeal 2.0
//
//  Created by Teri Minogue on 2/6/16.
//
//

import UIKit

class ViewController: UIViewController {
    var buttonTracker = 0
    @IBOutlet weak var rattyButton: UIButton!
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClicked(sender: UIButton) {
        buttonTracker = sender.tag
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationView = segue.destinationViewController as! MenuViewController
        destinationView.whatButtonWasPressed = buttonTracker
    }
    

}

