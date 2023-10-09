//
//  ViewController.swift
//  AppEventCount
//
//  Created by Tyler May on 10/9/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var ApplicationDidFinishLaunchingWithOptionsLabel: UILabel!
    @IBOutlet var ApplicationConfigurationForConnectingOptionsLabel: UILabel!
    @IBOutlet var ScenewillConnectToOptionsLabel: UILabel!
    @IBOutlet var SceneDidBecomeActiveLabel: UILabel!
    @IBOutlet var SceneWillResignActiveLabel: UILabel!
    @IBOutlet var SceneWillEnterForegroundLabel: UILabel!
    @IBOutlet var SceneDidEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var DidBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        ApplicationDidFinishLaunchingWithOptionsLabel.text = "The app has launched \(appDelegate.launchCount) time(s)"
        ApplicationConfigurationForConnectingOptionsLabel.text = "The app had configured \(appDelegate.configurationForConnectingCount) time(s)"
        ScenewillConnectToOptionsLabel.text = "The app will connect to options \(willConnectCount) time(s)"
        SceneDidBecomeActiveLabel.text = "The app did become active \(DidBecomeActiveCount) time(s)"
        SceneWillResignActiveLabel.text = "The app will resign active \(willResignActiveCount) time(s)"
        SceneWillEnterForegroundLabel.text = "The app will enter foreground \(willEnterForegroundCount) time(s)"
        SceneDidEnterBackgroundLabel.text = "The app did enter background \(didEnterBackgroundCount) time(s)"
    }


}

