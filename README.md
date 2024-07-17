# 介紹
Youtube：[Creating Share Sheet in App](https://www.youtube.com/watch?v=jxhq1_7HkJg)

Github：[iOSAcademy-ShareSheet](https://github.com/RainBowT0506/iOSAcademy-ShareSheet)

Github：[iOSAcademy-ShareSheet-ObjC](https://github.com/RainBowT0506/iOSAcademy-ShareSheet-ObjC)


iPhone

![CleanShot 2024-07-17 at 11.25.06](https://hackmd.io/_uploads/BJDjF34_0.png)

iPad
![CleanShot 2024-07-17 at 11.53.01](https://hackmd.io/_uploads/rynmgaNd0.png)

- 這部影片介紹如何在你的應用程式中呈現分享表單（UIActivityViewController）。
- 影片示範如何分享 Google 網站以及一張照片。

# 預覽分享表單
- 當你點擊分享按鈕時，會彈出分享表單。
- 不同設備上分享表單的內容可能不同，例如：SMS、AirDrop 等。
- 示範如何在模擬器中展示分享表單。

# iPad 上的分享表單
- 在 iPad 上，分享表單使用 Popover Presentation Controller。
- 分享表單會根據相對項目的位置智能地決定顯示位置。

# 準備工作
- 點讚、訂閱影片以支持創作者。
- 推薦 iosacademy.io 社群，學習如何構建頂級應用並準備面試。

# 開始新專案
- 打開 Xcode，創建一個新的項目。
- 選擇 App 模板，命名為 Share Sheet，設置語言為 Swift，生命週期為 UIKit，界面為 Storyboard。

# 設置模擬器
- 選擇 11 Pro Max 模擬器並運行項目，準備模擬器以便後續操作。

# 編寫分享表單功能
## 建立分享表單函數
- 建立一個函數 `presentShareSheet` 來呈現分享表單。

## 創建圖片和 URL
- 創建要分享的圖片和 URL。
  - 圖片使用系統圖標 `bell`。
  - URL 設置為 `www.google.com`。

## 檢查圖片和 URL
- 檢查圖片和 URL 是否為非空。

## 創建分享表單控制器
- 使用 UIActivityViewController 創建分享表單控制器。
  - 傳遞圖片和 URL 作為分享內容。
  - 設定 application activities 為 nil。

## 呈現分享表單
- 使用 `present` 方法呈現分享表單控制器。
- 設置動畫效果為 true。

# 創建按鈕
- 創建一個私有的 `UIButton`。
- 設置按鈕的背景顏色和標題。
- 將按鈕添加到視圖控制器的視圖中。
- 設置按鈕的框架（位置和大小）。
- 將按鈕與 `presentShareSheet` 函數連結，並設置觸摸事件為 `touchUpInside`。

# 實現分享表單
- 建立一個函數 `presentShareSheet` 來呈現分享表單。
- 創建要分享的圖片和 URL。
- 檢查圖片和 URL 是否為非空。
- 使用 `UIActivityViewController` 創建分享表單控制器，並傳遞圖片和 URL 作為分享內容。
- 使用 `present` 方法呈現分享表單控制器，設置動畫效果為 true。

# 測試分享表單
- 運行項目，點擊按鈕查看分享表單。
- 檢查是否有權限保存圖片，如果沒有，添加相應的權限到 `Info.plist`。
    `Privacy - Photo Library Additions Usage Description`
# iPad 上的 Popover Controllers
- 設置 iPad 模擬器，運行項目查看分享表單。
- 調整函數以接受發送者參數，並設置 `popoverPresentationController` 的 `sourceView` 和 `sourceRect`。
- 確保在 iPad 上正確顯示分享表單，不會因為缺少 Popover 控制器而崩潰。

# 總結
- 使用 `UIActivityViewController` 可以輕鬆實現分享表單功能。
- 在 iPad 上需要特別處理 Popover 控制器以防止崩潰。
- 確保分享內容非空以避免錯誤。

# _: 與 _ sender: UIButton
在 Swift 中，`_` 和 `sender: UIButton` 是用來定義方法參數的語法。讓我們分別解釋它們的意義：

### `_:`
在 Swift 方法的參數列表中，使用 `_` 作為參數的外部名稱表示該參數在調用該方法時不需要外部名稱。例如：

```swift
@objc private func presentShareSheet(_ sender: UIButton) {
```

在這個方法定義中，`_` 表示當我們在其他地方調用這個方法時，不需要指定 `sender` 參數的名稱。例如：

```swift
button.addTarget(self, action: #selector(presentShareSheet(_:)), for: .touchUpInside)
```

當按鈕被點擊時，這行代碼將調用 `presentShareSheet` 方法，並將按鈕本身作為參數傳遞給 `sender`。由於我們使用了 `_`，我們不需要在調用方法時寫出參數名稱。

### `sender: UIButton`
`sender: UIButton` 則是在方法中定義一個名為 `sender` 的參數，且該參數的類型是 `UIButton`。這意味著當這個方法被調用時，必須傳遞一個 `UIButton` 類型的對象給這個參數。

完整的解釋如下：

```swift
@objc private func presentShareSheet(_ sender: UIButton) {
```

這段程式碼定義了一個名為 `presentShareSheet` 的方法，它接受一個參數：
- `_`：表示在調用此方法時不需要外部參數名稱。
- `sender`：這是方法內部參數的名稱。
- `UIButton`：這是參數的類型，表示這個參數必須是一個 `UIButton` 類型的對象。

總結來說，這種語法設計的好處是讓方法調用時更簡潔，而方法內部仍能使用有意義的參數名稱。
# 錯誤與提示訊息
## Argument of '#selector' does not refer to an '@objc' method, property, or initializer
```
button.addTarget(self, action: #selector(presentShareSheet()), for: .touchUpInside)
```
錯誤訊息
```
Argument of '#selector' does not refer to an '@objc' method, property, or initializer
```
在 #selector 中不需要再加上括號，修改後：
```
button.addTarget(self, action: #selector(presentShareSheet), for: .touchUpInside)
```

## Expression implicitly coerced from 'URL?' to 'Any'
遇到的問題是因為 URL(string: "https://www.google.com") 生成的是一個可選型別 URL?，而 UIActivityViewController 需要的是一個非可選型別 Any。為了解決這個問題，需要使用強制解包（force unwrap）來確保 URL 確實存在。

```

```

# 疑問
![CleanShot 2024-07-17 at 11.25.06](https://hackmd.io/_uploads/BJeaF2V_C.png)
沒有出現 Save Image
![CleanShot 2024-07-17 at 11.28.30](https://hackmd.io/_uploads/SyRv9nEuA.png)
加上就有 Save Image

# 關鍵字
- **UIActivityViewController**：一種 UIKit 提供的視圖控制器，讓用戶可以分享各種內容，例如文字、圖片和網址。
- **UIImage**：用於管理圖片數據的 UIKit 類別。
- **URL**：用於處理網絡資源位置的類別。
- **Simulator**：用於在電腦上模擬 iOS 裝置的軟體。
- **iPad**：蘋果公司推出的平板電腦，與 iPhone 類似，但具有更大的螢幕和不同的使用模式。
- **Storyboard**：用於設計和組織應用程式用戶界面的圖形化工具。
- **System Name**：UIKit 提供的一種標準系統圖示的名稱。
- **Source Rect**：用於指定彈出視圖控制器（例如分享表單）指向的矩形區域。
- **Pop Over Presentation Controller**：在 iPad 上用來顯示彈出視圖控制器的控制器，可以設置指向特定的 UI 元素。 
- **UIButton**：用於創建可點擊的按鈕，來執行特定操作。
- **backgroundColor**：設定視圖（如按鈕）的背景顏色。
- **title**：按鈕的文字標題。
- **titleColor**：按鈕標題的文字顏色。
- **frame**：設定按鈕的框架，包括 x、y 位置和寬度、高度。
- **Objective-C Selector**：用於指定目標動作的選擇器，通常用於添加按鈕點擊事件。
- **addTarget**：為按鈕添加目標和動作，指定當按鈕被點擊時應該執行的函數。
- **UIActivityViewController**：一種 UIKit 提供的視圖控制器，讓用戶可以分享各種內容，例如文字、圖片和網址。
- **UIImage**：用於管理圖片數據的 UIKit 類別。
- **URL**：用於處理網絡資源位置的類別。
- **Simulator**：用於在電腦上模擬 iOS 裝置的軟體。
- **iPad**：蘋果公司推出的平板電腦，與 iPhone 類似，但具有更大的螢幕和不同的使用模式。
- **Storyboard**：用於設計和組織應用程式用戶界面的圖形化工具。
- **System Name**：UIKit 提供的一種標準系統圖示的名稱。
- **Source Rect**：用於指定彈出視圖控制器（例如分享表單）指向的矩形區域。
- **Pop Over Presentation Controller**：在 iPad 上用來顯示彈出視圖控制器的控制器，可以設置指向特定的 UI 元素。
- **Privacy Settings in Info.plist**：在 iOS 應用的 Info.plist 文件中設置隱私權相關的權限，如訪問照片庫的權限。 
