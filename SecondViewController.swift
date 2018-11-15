//
//  SecondViewController.swift
//  POCRxSwift
//
//  Created by Deep on 15/11/18.
//  Copyright © 2018 Deep. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class SecondViewController: UIViewController {
    @IBOutlet weak var showDemoDataTableView: UITableView!
    
    var demoArr = BehaviorRelay(value: ["Element 1", "Element 2", "Element 3"])
    let disposedBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        bindTableView()
        // Do any additional setup after loading the view.
    }
    
    
    func bindTableView() {
        demoArr.bind(to: showDemoDataTableView.rx.items(cellIdentifier: "DemoCell")) {
        (row, data, cell) in
            if let demoCell = cell as? DemoTableViewCell {
                demoCell.configureCell(name: data)
            }
            print(row)
            print(data)
            print(cell)
        }.disposed(by: disposedBag)
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
