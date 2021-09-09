# cloud9でrailsアプリを開発しようとしたら起こったエラー

```
rails new app-name --database=mysql --skip-test
```

- 実行後エラー発生。
```
(中略)
Gem files will remain installed in
/home/ubuntu/.rvm/gems/ruby-2.6.3/gems/mysql2-0.5.3 for inspection.
Results logged to
/home/ubuntu/.rvm/gems/ruby-2.6.3/extensions/x86_64-linux/2.6.0/mysql2-0.5.3/gem_make.out

An error occurred while installing mysql2 (0.5.3), and Bundler cannot
continue.
Make sure that `gem install mysql2 -v '0.5.3' --source
'https://rubygems.org/'` succeeds before bundling.

In Gemfile:
  mysql2
```
どうやらbundle installの実行中に起こってるエラーなのでエラーログに書かれている```gem install mysql2 -v '0.5.3' --source
'https://rubygems.org/'を```確認。

- そしてターミナル実行

```
ubuntu:~/environment/site-clip (master) $ gem install mysql2 -v '0.5.3' --source 'https://rubygems.org/'
(中略)
mysql client is missing. You may need to 'sudo apt-get install libmariadb-dev', 
'sudo apt-get install libmysqlclient-dev' or 'sudo yum install mysql-devel', and try again.
(中略)

```

mysql client is missingつまりmysqlのクライアントがないと言われています。その後に対処法が書かれているので実行。
今回はOSがUbuntuなので```sudo apt-get install libmysqlclient-dev```を実行。

実行後エラーもなく無事にインストールしてbundle installを行えば解決しました。

