# README

## チーム情報
プロダクト名: ノー勉

エレベーターピッチ:

　授業のノートの不足を解決したい大学生向けの手軽にノートの共有が・議論ができるサービス、ノー勉!
 
　これはノートの検索・共有・議論ができ、LINEやSlackのような手軽さで共有でき、議論にも集中できる。　
 
メンバー:

　フロント: 共田圭佑, 鈴木遥介, 和田見一真
 
　サーバー: 金子平, 成瀬大悟, 野口貴史, 内田輝(P.O.)
 
  S.M.: Boger Matheus
  
デプロイ先URL: https://noben-front.herokuapp.com/

## Setup
1. `git clone https://github.com/enpitut2019/noben-server.git`
1. `cd noben-server`
1. `source env.sh`
1. `build`
1. `rails db:setup`
1. `up`

## Issueの消化方法
1. `git checkout master`
1. `git pull origin master`
1. `git checkout -b issue/{issue_num}`
    - {issue_num}はissueの番号
    - 例: `git checkout -b issue/1`
1. がんばる
1. RPを出す

### PRの出し方
- タイトルは何をしたかを一言で
- 内容は何をしたかと一緒に`close #{issue_num}`と書く
    - {issue_num}は対応するissueの番号
    - こう書くとPRが閉じられたときに同時にissueも閉じられる
    - 例: `close #1`
- commitは意味のまとまりごとにできるだけ細かくしてくれたほうがレビューしやすい
