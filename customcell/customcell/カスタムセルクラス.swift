//
//  カスタムセルクラス.swift
//  customcell
//
//  Created by Yugo Maeda on 2019/10/23.
//  Copyright © 2019 Yugo Maeda. All rights reserved.
//

import UIKit

class カスタムセルクラス: UITableViewCell {

    @IBOutlet weak var 画像: UIImageView!
    @IBOutlet weak var ラベル: UILabel!
    
    
    func セルに表示するデータの制御(選択数はこれを使う: IndexPath){
      self.ラベル.text = String((選択数はこれを使う.row)+1)
      self.画像.image = UIImage(named: "icon")
    }
    
}
