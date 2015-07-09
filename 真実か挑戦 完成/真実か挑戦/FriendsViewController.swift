//
//  FriendsViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 6/12/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//
import UIKit
import GoogleMobileAds


    var truthArray = ["嫌いな友達を１人言ってください。", "あなたのチャームポイントはなんですか？", "あなたの体重はなんkgですか？", "好きな人はいますか？", "あなたは浮気をしたことがありますか？", "一番自分に自信のあるところはどこですか？", "右隣の人を全力で褒めてください。", "自分を一文字で表すとなんですか？", "今まで何人と付き合ったことがありますか？", "今現在狙っている異性はいますか？", "今までで一番恥ずかしかった事はなんですか？", "あなたの理想の告白のされかたを教えて下さい。", "あなたはどのようにプロポーズされたいですか？","あなたの異性のタイプを教えて下さい。", "人には言えない趣味はありますか？", "ゴウコンに移ってゲームを続けてください。", "パーティーに移ってゲームを続けてください。", "日本語以外で自己紹介をしてください。", "好きな歌手を教えて下さい。", "暇な時はいつもなにをしますか？", "好きな芸能人は誰ですか？", "あなたは年上派ですか？年下派ですか？", "あなたは異性にもてますか？", "あなたの一番好きな歌はなにですか？", "あなたの将来の夢はなにですか？", "異性の嫌いなタイプを教えて下さい。","あなたの趣味はなにですか？", "休みの日はなにをしますか？", "あなたはよく食べる人ですか？", "あなたの好きな食べ物はなにですか？", "あなたはお酒に強いですか？", "あなたの好きな映画を教えて下さい。", "あなたの好きな本はなにですか？", "あなたは洋楽はですか？邦楽派ですか？", "あなたの長所はなにですか？", "あなたの短所を教えて下さい。", "あなたはラインをすぐに返す人ですか？", "あなたは写真を撮るのが好きですか？", "得意な事を教えて下さい。","あなたの年齢を教えて下さい。", "好きなアニメはありますか？", "あなたの好きな漫画を教えて下さい。", "今までに有名人に会ったことがありますか？", "今までで一番嬉しかった出来事を教えて下さい。", "ホラー映画を見ることができますか？", "あなたは時間にルーズですか？", "あなたはお金に細かいですか？", "あなたの月収はいくらですか？", "あなたは今恋愛に飢えていますか？", "理想のデートプランを教えて下さい。", "なにによくお金を使いますか？", "どれくらいの頻度で呑みにいきますか？","あなたは酔ったらどうなりますか？", "カラオケは好きですか？", "あなたは車の免許を持っていますか？", "今までに警察に捕まった事はありますか？", "コンサートにはよくいきますか？", "あなたの好きなアイドルは誰ですか？", "あなたは毎日歯を磨きますか？", "あなたの好きなレストランを教えて下さい。", "あなたは暑がりですか？", "好きなスポーツを教えて下さい。", "プールや海ではビキニを着ますか？", "今１億円あればなにをしますか？", "どの国に１番行ってみたいですか？","あなたはお金持ちですか？", "あなたは性格とルックスのどちらで恋人を選びますか？", "背の高い人か低い人かどちらがタイプですか？", "結婚志望ですか？", "あなたは将来子供が欲しいですか？", "将来はどこで住みたいですか？", "あなたはデートでどこに連れて行ってもらいたいですか？", "あなたは毎日お風呂に入りますか？", "あなたの性格について教えて下さい。", "今日秘密にしている事を一つ教えて下さい。", "今欲しいものはなにですか？", "異性に求めるものはありますか？", "あなたが一番好きな事を教えて下さい。","あなたはいつも何時に寝ますか？", "あなたは両親と仲が良いですか？", "あなたが一番嫌いな事を教えて下さい。", "あなたは自分に自信がありますか？", "１つだけ自分のなにか変える事ができるなら、なにを変えたいですか？", "今一番やりたい事はなにですか？", "携帯をどれくらいの頻度で確認しますか？", "スポーツを見ることは好きですか？", "あなたの誕生日を教えて下さい。", "あなたの失恋ストーリーをしてください。", "あなたの持っている人に負けない技（特技）はなにですか？", "あなたは動物に例えるとなにですか？", "あなたは何歳で死にたいですか？", "メンバー全員このアプリをダウンロードしてください。", "このアプリのレビューに追加してほしい機能などを書き込んでください", "下の広告をクリックしてください。それがこのアプリの開発に繋がります。"]



        var dareArray = ["あなたができる最大の変顔をしてください。", "右の人をマッサージしてください。", "目の前にいる人を全力で褒めてください。", "左の人にデコピンをしてください。", "右の人が指定した文字を尻文字で表してください。", "ツイッターで「好きな人ができた」とつぶやいてください。", "あなたが知っている一番怖い話をしてください。", "あなたが最強だと思う都市伝説を話してください。", "オールバックにしてください。", "SNS上で有名人にメッセージを送ってください。", "目をつぶって２０周回ってください。", "右隣の人に壁ドンをして告白してください。", "ジャンル ゴウコンに移りゲームを続けてください。","メンバーの中から異性を一人選び連絡先を交換してください。", "右の人の耳に息を吹きかけてください。", "メンバーが決めた怖い動画を一人で見てください。", "３０回スクワットをしてください。", "２０秒間空気椅子をしてください。", "セクシーポーズをしてください。", "右の人のお尻を１回強く叩いてください。", "すごくキメた写真を撮ってラインのアイコンにしてください。", "左の人の耳の穴に指を入れてください。", "右の人にほっぺたをつねるようねだってください。", "右隣の人の他のメンバーが決めた部位をなでなでしてください。", "目の前の人に好きな罰ゲームを与えてください。", "右の人のくつしたの匂いを嗅いでください。","全力でコマネチしてください。", "目の前の人と目を見つめ合い好きと言い合ってください。", "右のにいる異性に腕枕をしてください。", "左の異性の首筋にキスをしてください", "メンバーの中の好きな人を口説いてください。", "好きな動物の真似をしてください。", "ラインの１番上にいる異性にメッセージを送ってください。", "腕立て伏せを２０回してください。", "口いっぱいに食べ物を詰め込んでください。", "自分が一番モレていると思う写真をこうかいしてください。", "今までに自分で撮影した１番面白い動画を見せてください。", "誰かのものまねをしてください。", "あなたがメンバーの中から異性を一人選び２ショットを撮ってSNSに投稿してください。", "好きなメンバーに好きな質問をしてください。", "メンバー全員このアプリをダウンロードしてください。", "このアプリのレビューに追加してほしい機能などを書き込んでください", "下の広告をクリックしてください。それがこのアプリの開発に繋がります。"]



class FriendsViewController: UIViewController, GADBannerViewDelegate {
    
    
    
    
    @IBOutlet weak var backgroudView: UIImageView!
    @IBOutlet weak var gobacktotop: UIButton!
    @IBOutlet weak var dareBUTTON: UIButton!
    @IBOutlet weak var truthBUTTON: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var bannerView3: GADBannerView!

    
    
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
        
        truthBUTTON.layer.cornerRadius = 2
        truthBUTTON.clipsToBounds = true
        truthBUTTON.backgroundColor = UIColorFromRGB(0x01C6C7)

        dareBUTTON.layer.cornerRadius = 2
        dareBUTTON.clipsToBounds = true
        dareBUTTON.backgroundColor = UIColorFromRGB(0xF96D6E)

        gobacktotop.layer.cornerRadius = 2
        gobacktotop.clipsToBounds = true
        gobacktotop.backgroundColor = UIColorFromRGB(0x9B9B9B)

        answerLabel.layer.cornerRadius = 2
        answerLabel.clipsToBounds = true

        answerLabel.backgroundColor = UIColor.whiteColor()
        answerLabel.layer.borderWidth = 1
        answerLabel.text = "どちらかを選択"
        answerLabel.font = UIFont(name: answerLabel.font.fontName, size: 25)
        answerLabel.textColor = UIColor.darkGrayColor()

        
        self.bannerView3.adUnitID = "ca-app-pub-9876067486959974/9900306846"
        
        self.bannerView3.rootViewController = self
        
        var request: GADRequest = GADRequest()
        self.bannerView3.loadRequest(request)
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func goBackToTopPage(sender: AnyObject) {
        
       self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
    
    @IBAction func truthButtonPressed(sender: AnyObject) {
        
        answerLabel.backgroundColor = UIColor.whiteColor()
        answerLabel.layer.borderWidth = 1
        
        var randInt = Int(arc4random_uniform(UInt32(truthArray.count)))
        answerLabel.text = truthArray[randInt]
        
        println(truthArray[randInt])
        
        println(truthArray.count)
    }
    
    
    @IBAction func dareButtonPressed(sender: AnyObject) {
        
        answerLabel.backgroundColor = UIColor.whiteColor()
        answerLabel.layer.borderWidth = 1
        
        var randInt = Int(arc4random_uniform(UInt32(dareArray.count)))
        answerLabel.text = dareArray[randInt]
    
        println(dareArray[randInt])
        println(dareArray.count)
    
    }
    
    



}
