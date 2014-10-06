//
//  TabBarViewController.swift
//  tumbler2
//
//  Created by Ron Belmarch on 10/5/14.
//  Copyright (c) 2014 Belmerica. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    
    
    
    var selectedViewController: UIViewController!
    var selectedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as UIViewController
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as UIViewController
        
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as UIViewController
        
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as UIViewController
        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as UIViewController
        
        selectedButton = homeButton
        onHomeButton(self)
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onHomeButton(sender: AnyObject) {
        selectedButton.selected = false
        selectedViewController = homeViewController
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
        selectedButton = homeButton
        selectedButton.selected = true
    }

    @IBAction func onSearchButton(sender: AnyObject) {
        selectedButton.selected = false
        selectedViewController = searchViewController
        searchViewController.view.frame = contentView.frame
        contentView.addSubview(searchViewController.view)
        selectedButton = searchButton
        selectedButton.selected = true
    }
    
    @IBAction func onComposeButton(sender: AnyObject) {
        selectedButton.selected = false
        selectedViewController = composeViewController
        composeViewController.view.frame = contentView.frame
        contentView.addSubview(composeViewController.view)
        selectedButton = composeButton
        selectedButton.selected = true
    }
    
    @IBAction func onAccountButton(sender: AnyObject) {
        selectedButton.selected = false
        selectedViewController = accountViewController
        accountViewController.view.frame = contentView.frame
        contentView.addSubview(accountViewController.view)
        selectedButton = accountButton
        selectedButton.selected = true
    }
    
    @IBAction func onTrendingButton(sender: AnyObject) {
        selectedButton.selected = false
        selectedViewController = trendingViewController
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
        selectedButton = trendingButton
        selectedButton.selected = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
