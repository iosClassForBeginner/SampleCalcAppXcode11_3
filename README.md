# 第26回: １時間でiPhoneアプリを作ろう
## 計算アプリ

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/demo.png" width="50%" height="50%"/></div>

  当アカウントへ訪れていただき、誠にありがとうございます。第26回アプリ教室では、計算アプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。

## アプリ教室に興味ある方、歓迎します。
  Meetup
  http://www.meetup.com/ios-dev-in-namba/

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com

## 開発環境
  Xcode 11.3 / Swift 5

## アプリ作成手順

## 0, プロジェクト作成

> 0-1. Xcodeを起動。
>
> 0-2. "Create a new Xcode project"を選択。
>
> 0-3. "Single View Application"を選択して"Next"をクリック。
>
> 0-4. "User Interface"を"Storyboard"選択
>
> 0-5. "Product name"を適当に入力して"Next"をクリック。
>
> 0-6. プロジェクトの場所を指定して"Create"をクリック。

## 1, アプリをデザインする。

#### 🗂 Main.storyboard

1-1. UITextField（入力欄） を 2つ storyboad に追加

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/1.gif" /></div></details>

1-2. UIButton（計算ボタン） を 1つ storyboad に追加

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/2.png" /></div></details>

1-3. UILabel（+マーク・計算結果表示） を 2つ storyboad に追加

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/3.png" /></div></details>

1-4. UITextField（入力欄） を 数値入力に変更

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/4.png" /></div></details>

## 2, UI部品 を "ViewController.swift" に紐付ける

#### 🗂 Main.storyboard -> ViewController.swift

2-1. 2画面に分割

★ optionを押しながらViewController.swiftをダブルクリック

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/5.gif" /></div></details>

2-2. UITextField（入力欄） を 2つ "ViewController.swift" に紐付ける（connection を Outlet にする）

★ controlを押しながらドラッグ

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/6.gif" /></div></details>

2-3. UILabel（計算結果表示） を "ViewController.swift" に紐付ける（connection を Outlet にする）

★ controlを押しながらドラッグ

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/7.gif" /></div></details>

2-4. UIButton（計算ボタン） を "ViewController.swift" に紐付ける（connection を Action にする）

★ controlを押しながらドラッグ

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/SampleCalcAppXcode11_3/blob/master/gifs%2Bimgs/8.gif" /></div></details>

## 3, 下記のコードを"ViewController.swift"に追加

#### 🗂 ViewController.swift

```Swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var lb: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calc(_ sender: UIButton) {
        // テキストフィールドから数値を取得
        let i1 = Int(tf1.text!) ?? 0
        let i2 = Int(tf2.text!) ?? 0

        // 足し算して結果を取得
        let result = i1 + i2

        // 結果をラベルに表示
        lb.text = "\(result)"

        // キーボードを閉じる
        view.endEditing(true)
    }

}
```

## 4, 追加課題

#### 引き算や掛け算機能を追加
