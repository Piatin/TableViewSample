//
//  ViewController.swift
//  TableViewSample
//
//  Created by Kako on 2015/03/20.
//  Copyright (c) 2015年 Kako. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //tableViewの宣言
    @IBOutlet var tableView :UITableView!
    //空の文字列の配列を作る
    var nameArray = [String]()
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UITableViewクラスに描かれているdataSourceメソッドの処理をこのクラス ＝　ViewControllerに任せる（データ・ソースの提供元をViewControllerにする）
        tableView.dataSource = self
        
        //UITableViewクラスに書いてある処理をViewController(self)に任せセてもらう(delegate = 任せる、ゆずる)
        tableView.delegate = self
        
        nameArray = ["がみ","DJ","まっすー","ぶんぶん","ハリウッド"]
        
        //imageArrayに画像を加える（append）
        imageArray.append(UIImage(named: "45686151_p1.jpg")!)
        imageArray.append(UIImage(named: "45686151_p2.jpg")!)
        imageArray.append(UIImage(named: "45686151_p1.jpg")!)
        imageArray.append(UIImage(named: "45686151_p2.jpg")!)
        imageArray.append(UIImage(named: "45686151_p1.jpg")!)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //1セクションあたりのセル（列）の数
        return nameArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        // Cellの.を取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // Cellに値を設定する.
        cell.textLabel!.text = "\(nameArray[indexPath.row])"
        cell.imageView!.image = imageArray[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        //何番めのセルが押されたかチェックする
        NSLog("%d", indexPath.row)
    }

}

