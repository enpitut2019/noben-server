# README

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
