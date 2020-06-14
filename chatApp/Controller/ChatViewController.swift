//
//  ChatViewController.swift
//  chatApp
//
//  Created by akrolayer on 2020/06/08.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var messageTextField: UITextField!
    
    //スクリーンのサイズ
    let screenSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName:"CustomTableViewCell",bundle:nil), forCellReuseIdentifier: "Cell")
        tableView.rowHeight = UITableView.automaticDimension
        //可変
        tableView.estimatedRowHeight = 65
        
        //キーボード
        NotificationCenter.default.addObserver(self, selector: #selector(ChatViewController.keyboardWillShow(_ :)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ChatViewController.keyboardWillHide(_ :)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        //Firebaseからデータをfetchしてくる
    }
    @objc func keyboardWillShow(_ notification:NSNotification){
        let keyboardHeight = ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as Any) as AnyObject).cgRectValue.height
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
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
