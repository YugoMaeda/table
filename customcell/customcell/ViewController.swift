//
//  ViewController.swift
//  customcell
//
//  Created by Yugo Maeda on 2019/10/23.
//  Copyright © 2019 Yugo Maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var マイテーブル: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt 何個セル出すの: IndexPath) -> UITableViewCell {
        let 表示するセルの内容 = tableView.dequeueReusableCell(withIdentifier: "再利用セル", for: 何個セル出すの) as! カスタムセルクラス
        表示するセルの内容.セルに表示するデータの制御 ( 選択数はこれを使う : 何個セル出すの )
        return 表示するセルの内容
    }
    
    
    

    override func viewDidLoad() {
        マイテーブル.delegate = self
        マイテーブル.dataSource = self
        マイテーブル.register (UINib(nibName: "カスタムセルクラス", bundle: nil),forCellReuseIdentifier:"再利用セル")
    }


}

