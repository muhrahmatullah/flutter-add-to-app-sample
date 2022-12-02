//
//  ViewController.swift
//  host_app
//
//  Created by Muh. Rahmatullah on 02/12/22.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createButton()
    }
    
    func createButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center = view.center
        button.configuration = createConfig()
        button.addTarget(self, action: "buttonClicked", for: .touchUpInside)
        view.addSubview(button)
    }
    
    func createConfig() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.title = "Hello world!"
        return config
    }
    
    @IBAction func buttonClicked() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }

}

