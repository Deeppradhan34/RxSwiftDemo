//
//  ViewController.swift
//  POCRxSwift
//
//  Created by Deep on 13/11/18.
//  Copyright © 2018 Deep. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var favFlavourSwitch: UISwitch!
    @IBOutlet weak var showPriceLabel: UILabel!
   
    var example = BehaviorRelay(value: "Example")
    override func viewDidLoad() {
        super.viewDidLoad()
        binding()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func onTappingNextButton(_ sender: Any) {
        performSegue(withIdentifier: "secondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  (segue.identifier == "secondVC") {
            var secondVC = segue.destination as? SecondViewController
        }
    }
    
    func binding() {
        Observable.combineLatest(example.asObservable() , favFlavourSwitch.rx.isOn, resultSelector: { _,_ in
            if (self.favFlavourSwitch.isOn) {
                self.showPriceLabel.text = "200"
            } else {
                self.showPriceLabel.text = "50"
            }
            print(self.favFlavourSwitch.isOn)
        })
            
            .subscribe()
        
    }
    
}

