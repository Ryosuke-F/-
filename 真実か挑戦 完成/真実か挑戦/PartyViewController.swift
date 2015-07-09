//
//  PartyViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 6/13/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit
import GoogleMobileAds

    var partyTruthArray = ["一番最後にエッチしたのはいつですか？", "この中で誰が１番童貞/処女っぽいですか？", "この中で一番好きな人を答えて下さい", "今まで一番嫌な恋人との別れはどんな別れでしたか？", "今までで一番高価な買い物はいくらで、何を買いましたか？", "芸能人で誰に似てると言われたことがありますか？", "左隣の人のいいところと嫌なところを3つづつ言ってください。", "今日履いているパンツは何色ですか？", "今までしたことがあるコスプレを全て教えてください。", "小学生の時の嫌な思い出はなにですか？", "初恋の話を詳しく教えてください。", "今までラブホテルに行ったことはありますか？もしあるなら何回ですか？", "今までで一番ひどい酔い方をした時の話をしてください。",  "メンバー全員を物にたとえてください。", "自分の性格の大好きなところを３つ答えてください。", "自分の体の大好きなところを３つ答えてください。", "２つ左隣の人には勝っていると思うことを３つ答えてください。", "今まで合コンに行った回数と、１番印象に残っているエピソードを教えてください。", "今までの経験人数は何人ですか？", "今まで付き合った人数は何人ですか？", "初体験はいつですか？ついでに左隣の人も答えてください。", "今まで携帯ゲームに課金したことはありますか？あるならいくらしましたか？", "今までで一番こわかった経験を話してください。", "今までした中で一番悪いことを教えてください","最近あった面白エピソードを教えてください。", "今までで一番恥ずかしかったことを教えてください。", "今いるメンバーのなかで自分は何番目にイケてるか正直に答えてください。", "今までで一番謝りたいことはなんですか？", "このメンバーの中の異性で添い寝するなら誰ですか？", "このメンバーのなかで一緒に会社を作るなら誰ですか？理由も含めて答えてください。", "今まで生きてきた中での最大の自慢をお願いします。", "もし明日地球が終わるなら、一番会いたいひとはだれですか？", "このメンバーに隠していることを言ってください。", "自分がこれはだれにも負けないと思っていることを教えてください。", "自分の本当の友達は何人だと思いますか？", "恋人とのだれにも言っていないエピソードを教えてください。", "警察に通報や救急車を呼んだことがありますか？あるならばエピソードを教えてください。","パートナーのいる人を追いかけたことがありますか？", "あなたはお酒を飲みすぎると何をしますか？", "携帯の中身を自信を持って見せられますか？できないなら理由を教えてください？", "今まで告白したことはありますか？あるならばその時のエピソードを教えてください。", "この中で困ったら頼りたい人はだれですか？", "最近のサボりエピソードを教えてください", "恋人がいても、美人やイケメンからアタックされたら揺らぎますか？", "セフレについてどう思うか教えてください。", "左となりの人に謝りたいことを正直に言ってください、なければビンタしてください。", "自分の人と違う、おかしいと思うことを教えてください。", "この中で好きな体臭の人はだれですか？", "理想のデートプランをドヤ顔で教えてください。", "自分でも引くぐらい怠惰だった時期の話をしてください。","この中で心から尊敬している人はいますか？", "メンバー全員このアプリをダウンロードしてください。", "このアプリのレビューに追加してほしい機能などを書き込んでください", "下の広告をクリックしてください。それがこのアプリの開発に繋がります。"]



    var partyDareArray = ["メンバーの中一人に１杯お酒をおごり、指名された人は必ず飲んでください。", "20秒変顔をし続けてください。", "右隣の人に、素敵な髪型にしてもらって下さい。", "メンバーの中に人に１杯ドリンクを奢らせてください。", "即興でラップを歌ってください。", "最高のキス顔をお願いします。", "尻文字で左隣の人の名前を書いて下さい。", "メンバーの中で好きなひと一人の代金を奢ってください。", "赤ちゃん言葉で自己紹介をして下さい。", "ドリンクを１杯飲みましょう。", "メンバーの中の異性をデートに誘い後日デートに行ってください。", "２つ右隣の人に１つあだ名を付けてもらってください。", "今持っている中で一番可愛い・かっこいい自分の顔写真を見せてください。","メンバーの中の１人を指定して好きな食べ物を奢ってもらってください。", "メンバー全員このアプリをダウンロードしてください。", "次のあなたのターンまで、語尾に「ごわす」をつけて話してください。", "全力でコマネチをしてください。", "メンバーの中一人に１杯お酒をおごり、指名された人は必ず飲んでください。", "右隣の異性の膝の上に次のターンまで座ってください。", "全力で右隣のひとに理由もつけてキレてください。", "今部屋にあるもの１つなんでもいいので、その大切さについて熱弁してください。", "メンバーの中一人に１杯お酒をおごり、指名された人は飲んでください。", "２つ左隣の人に全力でプロポーズしてください。", "左となりの人に持ち物検査をしてもらってください。", "ハリーポッターになりきって右隣のヴォルデモートを倒してください。", "ツイッターに「幸せすぎて、全裸になりたい」と投稿してください。","ドリンクを１杯飲みきってください。", "メンバーの中の人に好きな罰を与えてください。", "左隣の人にラインスタンプを１つプレゼントしましょう。", "最新の恋人/好きな人とのメッセージのやり取りを見せてください。", "身の回りにあるものを使って一発芸をしてください。", "全員にデコピンをしてもらいましょう、そして両となりの人に脇汗をチェックしてもらいましょう。", "メンバー全員に３０秒ひたすら見られてください。目を閉じてはいけません", "右となりの人に、部屋にあるものを組み合わせてすごい飲み物を作ってもらい、それを飲んでください。", "左となりの人が恋人だと思ってひたすら甘えてください。", "切れ味抜群のエアギターをお願いします。", "メンバーの中一人に１杯お酒をおごり、指名された人は必ず飲んでください。", "今あるもので食レポをしてください。", "ドリンクを１杯飲んでください。","ツイッターの新しいプロフィール写真を撮りましょう。", "自分大好き人間を１分間演じてください。", "モデル歩きで辺りを一周してきてください。", "全員に順番にウインクしながらひとこと言ってください", "このアプリのレビューに追加してほしい機能などを書き込んでください", "下の広告をクリックしてください。それがこのアプリの開発に繋がります。"]

class PartyViewController: UIViewController, GADBannerViewDelegate {
    


    
    
    @IBOutlet weak var back: UIImageView!
    @IBOutlet weak var labeL: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var dareBtn: UIButton!
    @IBOutlet weak var backtop: UIButton!
    
    
    @IBOutlet weak var bannerView5: GADBannerView!
    

    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let theWidth = view.frame.size.width
        let theHeiht = view.frame.size.height


        trueBtn.layer.cornerRadius = 2
        trueBtn.clipsToBounds = true
        trueBtn.backgroundColor = UIColorFromRGB(0x01C6C7)
        
        dareBtn.layer.cornerRadius = 2
        dareBtn.clipsToBounds = true
        dareBtn.backgroundColor = UIColorFromRGB(0xF96D6E)
        
        backtop.layer.cornerRadius = 2
        backtop.clipsToBounds = true
        backtop.backgroundColor = UIColorFromRGB(0x9B9B9B)
        
        labeL.layer.cornerRadius = 2
        labeL.clipsToBounds = true
        
        labeL.backgroundColor = UIColor.whiteColor()
        labeL.layer.borderWidth = 1
        labeL.text = "どちらかを選択"
        labeL.font = UIFont(name: labeL.font.fontName, size: 25)
        labeL.textColor = UIColor.darkGrayColor()
        
        
        
        self.bannerView5.adUnitID = "ca-app-pub-9876067486959974/2237439241"
        
        self.bannerView5.rootViewController = self
        
        var request: GADRequest = GADRequest()
        self.bannerView5.loadRequest(request)


    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func trueBtn_pressed(sender: AnyObject) {
        
        println("button clicked")
        var randInt = Int(arc4random_uniform(UInt32(partyTruthArray.count)))
        labeL.text = partyTruthArray[randInt]
        println(partyTruthArray.count)
    }
    
    @IBAction func dareBtn_pressed(sender: AnyObject) {
        
        println("button pressed")
        var randInt = Int(arc4random_uniform(UInt32(partyDareArray.count)))
        labeL.text = partyDareArray[randInt]
        println(partyDareArray.count)
    
    }
    
    
    @IBAction func backTopBtn_Pressed(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
