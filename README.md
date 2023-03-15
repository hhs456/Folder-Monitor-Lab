## 監控變更記錄 Folder Monitor

本專案使用 PowerShell 進行監控，並將變更記錄記錄在 `$PSScriptRoot\~Changelog.txt` 中。記錄的時間採用民國紀年。

### 使用方法

1. 下載或複製本專案至欲監控的資料夾中。
2. 執行 `monitor.ps1`，開始監控資料夾的變更。
3. 當有檔案新增、刪除、修改、重命名時，變更記錄會自動寫入 `$PSScriptRoot\~Changelog.txt` 中。

### 注意事項

1. 本專案監控變更時會排除檔名包含 `*~*` 的檔案。
2. 變更記錄會紀錄變更時間、事件類型、檔案名稱等訊息，格式如下：

112/03/15 18:06:32 - Created - file.txt

其中，`1100323` 為民國年份，`04/12 08:30:15` 為變更時間。

3. 若要停止監控，請按下 `Ctrl+C`。

### 相關資源

- [PowerShell 官方文件](https://docs.microsoft.com/en-us/powershell/)
