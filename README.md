# SillyTavern 小鯨魚一鍵安裝版

這是一個為了降低 `SillyTavern` 對非技術背景使用者的進入門檻而整理的版本。

如果你只是想先把 `SillyTavern` 跑起來，而不想先理解安裝 Node.js、終端機指令、環境設定這些步驟，這個版本就是為了這個目的而製作的。

## 製作動機

我製作這個版本的動機，是希望能以自己的方式為 `SillyTavern` 社群做一點貢獻。

`SillyTavern` 本身已經是一個很強大、自由度很高的專案，但對沒有技術背景的人來說，第一次安裝與啟動可能會有一點距離。因此我把原本需要手動處理的部分整理成比較容易啟動的形式，讓更多人可以先跨過安裝門檻，直接開始體驗與探索。

這個專案不是取代官方版本，而是希望作為一個更親民的入口，幫助新使用者更容易接觸 `SillyTavern`，也讓這個工具能被更多不同背景的人使用。

## 這個版本的目標

- 盡量把啟動流程簡化成「直接點一下就能開啟」
- 把常見的安裝與啟動步驟整合到同一個資料夾內
- 讓不熟悉程式開發的人也能比較容易開始使用 `SillyTavern`

## 圖文安裝教學

如果你是第一次使用，可以先打開這份線上圖文教學：

[小鯨魚陪你裝 SillyTavern](https://docs.google.com/presentation/d/19JJBcMlNKmbthCxB3SNnYfzq0ysOp1PfJLeAo-Yjuqs/edit?usp=sharing)

## 下載連結

請從以下 Google Drive 資料夾下載本專案：

[Google Drive 下載資料夾](https://drive.google.com/drive/folders/1hqQFJ7WyqEFxAVJVotla5f5GuN2yO6jo?usp=sharing)

## 使用方式

1. 直接雙擊執行 `start.bat`
2. 程式會自動啟動本機伺服器
3. 啟動後用瀏覽器開啟 `http://127.0.0.1:8000`

如果你已經開啟過一次，之後再執行 `start.bat` 時，程式會先檢查 `8000` 埠口是否已經在使用中，避免重複啟動。

## 原始安裝方式

如果你想了解 `SillyTavern` 的官方安裝流程，請參考：

https://sillytavern.wiki/installation/windows/

## 內容說明

- `start.bat`：一鍵啟動器
- `Core/`：主要執行檔與 `SillyTavern` 程式內容

## 注意事項

- 請不要隨意刪除 `Core/` 內的檔案，否則可能無法正常啟動
- 若防毒軟體或 Windows 安全性功能跳出提示，請確認來源無誤後再允許執行
- 這個版本的目標是「好上手」，不是取代官方原版說明文件

## 授權與原始專案

`SillyTavern` 原始專案與授權資訊請以官方倉庫為準。

原始專案：
https://github.com/SillyTavern/SillyTavern
