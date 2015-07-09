//
//  CoupleViewController.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 6/13/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

import UIKit
import GoogleMobileAds


    var coupleTruthArray = ["右の人に本気で告白してください。", "異性に言われたいことはなにですか？", "あなたは好きな人がいますか？", "あなたは性癖がありますか？", "あなたはドMですか？", "右隣にいる異性を全力でほめてください。", "メンバーの中で付き合ってもいい人の名前を言ってください。", "メンバーの中で結婚するとしたら誰としますか？", "恋人とどれくらいの頻度でキスをしたいですか？", "あなたは今欲求不満ですか？", "今までに何人と付き合ったことがありますか？", "あなたのファーストキスについて教えて下さい。", "メンバーの中でだれと一番付き合いたくないですか？","昨日何人の異性とラインをしましたか？", "あなたは今月何人にデートに誘われましたか？", "よく異性と遊びに行きますか？", "友達か恋人どちらを優先しますか？", "あなたの初体験について教えて下さい。", "今までに異性との間で起こった大問題を教えてください。", "今あなたは気になっている人と連絡していますか？", "理想な告白の仕方を教えてください。", "恋人と混浴は大丈夫な人ですか？", "あなたはフレンチキスかディープキスかどちらが好みですか？", "キャバクラ/ホストかゲイバー/ガールズバーどちらで働きたいですか？", "あなたは性欲がつよいですか？", "何歳で結婚したいですか？","親友が殺されそうとしています、あなたは命をかけて助けますか？", "最高に面白い話をしてください。", "あなたは異性のなにに萌えますか？", "あなたは何フェチですか？", "あなたは浮気をしたことがありますか？", "あなたは浮気性ですか？", "あなたは恋人に異性と二人で遊びに行くことを許せますか？", "メンバーの中に異性に告白してください。", "メンバーの中の一人をデートに誘ってください。", "メンバーの中でだれと一番キスしたいですか？", "あなたは無人島に行かなければいけません。メンバーのだれを連れていきますか？", "もしメンバーの中の異性で一緒にお風呂に入るなら誰と入りますか？", "あなたは付き合っていない人と体の関係を持ったことはありますか？","あなたの月収を教えてください。", "あなたは何に一番興奮しますか？", "あなたがエッチをする時の性格を３単語であらわしてください。", "あなたはビーチか公園のどちらかでエッチをする必要がある場合どちらを選びますか？", "今日限りで２つだけ好きなことを実現することができます。あなたはなにをしますか？", "透明人間になったらあなたは最初になにをしますか？", "あなたの残りの人生は２４時間です。メンバーの中の異性で誰と一緒に過ごしたいですか？", "今までにあなたが人に言った最低の嘘はなにですか？", "あなたはウンコ味のカレーかカレー味のうんこ、どちらを選びますか？", "メンバー全員このアプリをダウンロードしてください。", "このアプリのレビューに追加してほしい機能などを書き込んでください", "下の広告をクリックしてください。それがこのアプリの開発に繋がります。"]




     var coupleDareArray = ["あなたの右側にいる異性に全力でハグしてください。", "自分の左にいる異性を次の自分のターンまで膝枕をしてください。", "メンバーの中の１人の背中を舐めてください。", "右隣の人の鎖骨にキスをしてください。", "右隣の異性とお菓子を使ってポッキーゲームをしてください。", "目の前にいる人の上着を脱がせてください。", "右隣の異性を下ネタでナンパしてください。", "右隣の人をセクシーにマッサージしてください。", "左隣の異性の耳たぶを優しく咥えてください。", "左隣の人の指を咥えて舐めてください。", "次のターンまで右隣の人の膝の上に座ってください。", "左隣の人を後ろから３０秒抱きしめる。", "右隣の異性の膝の上に前向きで座り前から抱きしめてください。", "前にいる異性に正面からハグをしてくださいい。", "その場にお酒があったらコップ一杯を一気飲みしてください。", "２５回腕立て伏せをしてください。", "右隣の人に壁ドンをしてください。", "右隣にいる異性と鼻キスを１０秒間してください。", "自分が思う１番かわいい/かっこいいと思う人にラインをしてください", "前の人の鼻と口の間を舐めてくだい。", "メンバーの中から人を指定して自分の眉毛をぬいてください。", "右隣の人の心臓の音を胸に耳をあてて聞いてください。", "左隣の人の上服の中に顔を１０秒間いれてください。", "左隣の異性と頬を１０秒間すりすりしてください。", "左隣の人にデコピンをしてください。", "最高の自撮りをしてください。", "次のターンまで左隣の人と手を繋いでいてください。", "右隣の異性を肩車してください。", "右隣の異性のほっぺにキスをしてください。", "ラインの一番上にいる異性にデートを誘ってください。", "着ている服を三枚脱いでください。", "メンバーで一番気になる人にハグをしてください。", "次の人の罰ゲームを決めてください。", "今回はあなたの罰ゲームは免除です。", "変顔を写真に撮ってSNSに載せてください。", "変顔を写真に撮ってSNSに載せてください。", "あなたのラインを公開してください。", "メンバーの中の異性を口説いてください。", "右の人にビンタをしてもらってください。力量はその人にお任せします。", "好きな人に好きな罰ゲームを与えてください。", "メンバーは全員目をぶって、あなたは異性１人にキスをしてください。", "右隣の人の肩を３分間揉んでください。", "ラインの履歴の１番上の人に変顔を送ってください。", "目の前の人に本気で告白してください。", "左隣の人のおへそに１０秒間キスをしてください。", "左の異性をお姫様だっこしてください。もし不可能ならお姫様抱っこをしてもらってください。","メンバーの中から異性を一人選び連絡先を交換してください。", "メンバー全員このアプリをダウンロードしてください。", "このアプリのレビューに追加してほしい機能などを書き込んでください", "下の広告をクリックしてください。それがこのアプリの開発に繋がります。"]

class CoupleViewController: UIViewController, GADBannerViewDelegate {
    


    @IBOutlet weak var bannerView4: GADBannerView!
    
    
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var truth: UIButton!
    @IBOutlet weak var dare: UIButton!
    @IBOutlet weak var backtotop: UIButton!

    
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
        

        truth.layer.cornerRadius = 2
        truth.clipsToBounds = true
        truth.backgroundColor = UIColorFromRGB(0x01C6C7)

        dare.layer.cornerRadius = 2
        dare.clipsToBounds = true
        dare.backgroundColor = UIColorFromRGB(0xF96D6E)

        backtotop.layer.cornerRadius = 2
        backtotop.clipsToBounds = true
        backtotop.backgroundColor = UIColorFromRGB(0x9B9B9B)
        
        label.layer.cornerRadius = 2
        label.clipsToBounds = true
        
        label.backgroundColor = UIColor.whiteColor()
        label.layer.borderWidth = 1
        label.text = "どちらかを選択"
        label.font = UIFont(name: label.font.fontName, size: 25)
        label.textColor = UIColor.darkGrayColor()
        
        
        self.bannerView4.adUnitID = "ca-app-pub-9876067486959974/8283972843"
        
        self.bannerView4.rootViewController = self
        
        var request: GADRequest = GADRequest()
        self.bannerView4.loadRequest(request)

        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func trueBtn(sender: AnyObject) {
        println("Clicked")
        var randInt = Int(arc4random_uniform(UInt32(coupleTruthArray.count)))
        label.text = coupleTruthArray[randInt]
        println(coupleTruthArray.count)
    }
    
    
    @IBAction func dareBtn(sender: AnyObject) {
        println("dare")
        var randInt = Int(arc4random_uniform(UInt32(coupleDareArray.count)))
        label.text = coupleDareArray[randInt]
        println(coupleDareArray.count)
    }
    
    @IBAction func backToTopBtn(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    

}
