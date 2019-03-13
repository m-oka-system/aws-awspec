# 環境

Rubyバージョン
```
ruby -v
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin17]
```

Bundlerバージョン
```
bundle -v
Bundler version 2.0.1
```

# awspecインストール

```bash
# Gemfileを生成
bundle init

# Gemfileに追記してbundle install
echo 'gem "awspec"' >>Gemfile
echo 'gem "rake"' >>Gemfile
bundle install

# ディレクトリ作成
mkdir awspec
cd awspec

# initファイル生成
bundle exec awspec init
```

AWSの認証情報は、secrets.ymlを作成して記述してもOKだが、
[awscliインストール手順.md](https://github.com/m-oka-system/aws-cloudformation/blob/master/aws-cli/awscli%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E6%89%8B%E9%A0%86.md) を参照して、awscliをインストールし、認証情報を設定。

# awspecの使い方

*_spec.rbというファイル名でテストを書く。

各テストコードファイルの先頭にrequire 'spec_helper'を書く。

テストの実行（すべて）
```
bundle exec rake spec
```

テストの実行（指定したファイル）
```
bundle exec rspec spec/<ファイル名>
```

既存リソースからテストコードを生成
```bash
# ヘルプ参照
bundle exec awspec generate --help

# generate実行例
bundle exec awspec generate vpc my-vpc
```