# README

## チーム情報
プロダクト名: ノー勉

エレベーターピッチ:

　ノー勉は大学生向けのウェブアプリであり、授業ノートの不足といった問題の解決を目的としています。これを、ノートの共有とそのノートの内容に関する議論の場を提供することで実現しています。手軽に、気軽に、ノートを授業の不特定多数の受講者と共有し、議論していただくことで、切磋琢磨して、疑問点をノー勉でぜひ、解消していただきたいと思っています。
 
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
