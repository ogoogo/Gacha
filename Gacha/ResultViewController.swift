//
//  ResultViewController.swift
//  Gacha
//
//  Created by 生越冴恵 on 2021/08/11.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number:Int!
    @IBOutlet var backGroundImageView :UIImageView!
    @IBOutlet var monsterImageView :UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number=Int.random(in :0...9)
        if number == 9{
            monsterImageView.image=UIImage(named: "monster010")
            backGroundImageView.image=UIImage(named: "bg_gold")
        }else if number>7{
            monsterImageView.image=UIImage(named: "monster006")
            backGroundImageView.image=UIImage(named: "bg_red")
        }else{
            monsterImageView.image=UIImage(named: "monster003")
            backGroundImageView.image=UIImage(named: "bg_blue")
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
