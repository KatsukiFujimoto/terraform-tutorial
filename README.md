## AWS CLIの準備

### アクセスキーの作成

- AWSのIAMページのサイドバーからユーザを開く
- 該当ユーザをクリックし、認証情報を表示する
- アクセスキーの作成をクリックする
- アクセスキーIDとシークレットアクセスキーをコピーしておく

### AWS CLIをインストールする

```bash
$ brew install awscli
$ aws --version
```


## Terraformの準備

### tfenvをインストールする

```bash
$ brew install tfenv
$ tfenv --version
```

### Terraformをインストールする

```bash
$ tfenv install
$ tfenv list
$ tfenv use 0.13.4
$ terraform --version
```


## Terraformで環境構築をする

### クレデンシャル情報を準備する

- クレデンシャル情報のファイルを作成する
```bash
$ cp develop/terraform.tfvars.sample develop/terraform.tfvars
$ cp production/terraform.tfvars.sample production/terraform.tfvars
```
- 作成したファイルにクレデンシャル情報を入れる

### S3バケットを準備する

- AWSのS3にて `aws-terraform-tutorial`の名前のバケットを作成する
  - バージョンニングあり
  - 非公開

### SSHキーを準備する

- AWSにて `aws-tutorial.pem`という名前のSSHキーを作成する

### 開発環境を構築する

```bash
$ cd develop
$ terraform init -backend-config=terraform.tfvars
$ terraform plan
$ terraform apply
```

### 本番環境を構築する

```bash
$ cd production
$ terraform init -backend-config=terraform.tfvars
$ terraform plan
$ terraform apply
```

### 環境を削除する

```bash
$ cd develop
$ terraform destroy

$ cd production
$ terraform destroy
```


## 参考資料

- [「Terraform入門 on AWS」という動画を投稿しました #devio2020](https://dev.classmethod.jp/articles/devio2020-terraform-on-aws/)
