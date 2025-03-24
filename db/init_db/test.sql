USE intern;

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user
(
    user_id char(16) NOT NULL PRIMARY KEY,
    user_name varchar(100) NOT NULL,
    password char(16) NOT NULL,
    gender char(1) NOT NULL,
    auth char(1) NOT NULL
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS book;
CREATE TABLE IF NOT EXISTS book
(
    isbn varchar(13) NOT NULL,
    book_id varchar(13) NOT NULL,
    title varchar(100) NOT NULL,
    description varchar(1024),
    img_url varchar(255),
    PRIMARY KEY(isbn,book_id)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS lending;
CREATE TABLE IF NOT EXISTS lending
(
    lending_user_id varchar(16) NOT NULL,
    isbn varchar(13) NOT NULL,
    book_id varchar(13) NOT NULL,
    rental_date Date NOT NULL,
    managed_user_id varchar(16) NOT NULL,
    return_plan_date Date NOT NULL,
    PRIMARY KEY(lending_user_id,isbn,rental_date)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS information;
CREATE TABLE IF NOT EXISTS information
(
    date Date NOT NULL,
    no TINYINT NOT NULL,
    title varchar(100) NOT NULL,
    content varchar(100) NOT NULL,
    PRIMARY KEY(date, no)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS student;
CREATE TABLE IF NOT EXISTS student
(
    id varchar(8) NOT NULL,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
    PRIMARY KEY(id)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

delete from book;
insert into book values ('9784774176734','1','Amazon Web Services 実践入門','柔軟な開発を可能にするインフラ構築・運用の勘所。ブラウザでの設定もコマンド操作も丁寧に解説。','https://books.google.com/books/content?id=6LayjgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784839964566','1','Amazon WebServicesを使ったサーバレスアプリケーション開発ガイド','null','https://books.google.com/books/content?id=NzjItAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784797392579','1','Amazon Web Services パターン別構築・運用ガイド','AWSのサービスの概要と導入方法を徹底解説 ※この電子書籍は固定レイアウト型で配信されております。固定レイアウト型は文字だけを拡大することや、文字列のハイライト、検索、辞書の参照、引用などの機能が使用できません。 AWS（Amazon Web Services）によるクラウドシステム構築・運用のノウハウを紹介。 AWSの主要サービスの概要から、サービスを活用したクラウド上でのシステムの構築手順と設定方法を詳細に解説します。目的に応じたサーバ構築方法と、サービスの選び方を徹底的に丁寧に解説します。 AWSマネジメントコンソールからの設定に加えて、CLIやSDKを使った実践的な技術も掲載。企業などのAWS導入の全ての工程に関わった著者陣による、現場で培った実践的なノウハウが凝縮された一冊です。 Webサービスや自社サイトのシステム構築にAWSの導入を考えている人、WordPressを使ったサイトの公開を考えている人、とにかくAWSについて知りたい人、AWSに興味を持つ全ての人にお勧めです。','https://books.google.com/books/content?id=gYtSDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784798155166','1','AWSによるサーバーレスアーキテクチャ','クラウドコンピューティングの技術の中でも、昨今注目を集めているのがサーバーレスアーキテクチャです。 FaaS（Function-As-A-Service）とも呼ばれるサーバーレスアーキテクチャは、ファンクション（関数）と呼ばれるマイクロサービスを実装し、組み合わせながら、サービスを構築していくアーキテクチャです。 その際、実行環境となるサーバーのスケーリングや管理をクラウドプロバイダに任せることで、開発者はオンプレミスなサーバーを考えることなしに、開発時間の短縮と運用コストの削減を図ることができます。 本書は、現場で役に立つ開発パターンをハンズオン形式で学べる『Serverless Architectures on AWS: With examples using AWS Lambda』の日本語版です。 本書では、サーバーレスアーキテクチャに興味のある開発者がAmazon Web Services（AWS）上で新技術を実践・体験するための例として、 ・マイクロサービスのコードを実行する「AWS Lambda」 ・「Amazon S3」などのクラウドストレージ ・「Amazon DynamoDB」などのデータベース ・「Auth0」などの認証サービス といったサービスを組み合わせながら、実際に動かすことのできる動画シェアサイトを構築していきます。 世界的な技術カンファレンス「Serverlessconf」の責任者である著者による、サーバーレスアーキテクチャの主要なデザインパターンを学べる1冊です。','https://books.google.com/books/content?id=l5VRDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api');
insert into book values ('4798138029','1','Cloud n活用ガイド','低価格・豊富な機能・高い安定性―通信事業者が提供する三拍子そろったグローバルクラウド!基本的なIaaS、PaaSの使い方からデザインパターン、活用事例まで一挙に解説!','https://books.google.com/books/content?id=ptnSBAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784845283316','1','HRテクノロジーで人事が変わる','null','https://books.google.com/books/content?id=YoY8uwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784797392562','1','Amazon Web Services 業務システム設計・移行ガイド','社内システムのクラウド化を目指す人に！ ※この電子書籍は固定レイアウト型で配信されております。固定レイアウト型は文字だけを拡大することや、文字列のハイライト、検索、辞書の参照、引用などの機能が使用できません。 オンプレミスからクラウドへ！ ECサイトから基幹システムまで、 企業のデータ・サーバをAWSへ移行するための ネットワーク設計・構築、運用・管理のノウハウを紹介 オンプレミス上に構築された業務システムをAWS上に移行するための「サービスの選定」「ネットワーク設計・構築」「サーバとデータの移し方」「運用・監視体制の構築」など。これまで多くの企業にAWSを導入し、コンサルティングフェーズから実際の設計・開発、運用フェーズまでの全行程に携わってきた著者陣のノウハウを凝縮して、一般的な企業にAWSを導入する際のベストプラクティスをお届けします。','https://books.google.com/books/content?id=FVpHDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('4822253643','1','ひと目でわかるAzure Active Directory','Azure Active Directoryの概要や構成方法をわかりやすく解説したビジュアルリファレンスです。','https://books.google.com/books/content?id=uci5swEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('4774190845','1','IBM Bluemixクラウド開発入門: Webから拡張知能Watsonまで実践解説','null','https://books.google.com/books/content?id=7dpetAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784865941210','1','Google Cloud Platformではじめる機械学習と深層学習','入門から、「TensorFlow」による畳み込みニューラルネットワークへの本格チャレンジまで。使い勝手抜群の「各種ML API」とインタラクティブな多機能ツール「Datalab」でぐんぐん進む機械学習への理解。','https://books.google.com/books/content?id=PUUxtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9784822253851','1','Azureテクノロジ入門 2019','Azureを知るための「はじめの一歩」! 進化を続けるAzureの全体像がよくわかる1冊','https://books.google.com/books/content?id=h_eWvgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
insert into book values ('9783662474181','1','SAP on the Cloud','This book offers a comprehensive guide to implementing SAP and HANA on private, public and hybrid clouds. Cloud computing has transformed the way organizations run their IT infrastructures: the shift from legacy monolithic mainframes and UNIX platforms to cloud based infrastructures offering ubiquitous access to critical information, elastic provisioning and drastic cost savings has made cloud an essential part of every organization’s business strategy. Cloud based services have evolved from simple file sharing, email and messaging utilities in the past, to the current situation, where their improved technical capabilities and SLAs make running mission-critical applications such as SAP possible. However, IT professionals must take due care when deploying SAP in a public, private or hybrid cloud environment. As a foundation for core business operations','https://books.google.com/books/content?id=VsVOCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api');
insert into book values ('9784822257903','1','Google Cloud Platform　エンタープライズ設計ガイド','Googleが提供するクラウドサービス AWSとの違いを軸に徹底解説','https://books.google.com/books/content?id=kfcqtwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');

DELETE FROM information;
INSERT INTO information values (now(), 1, 'BookStation 開設', '新しくブックステーションが開設されました。皆さんぜひご利用ください。');
INSERT INTO information values (now(), 2, '新書籍入荷', '新しい書籍が入荷しました。');
INSERT INTO information values (now(), 3, '不審者報告', '最近館内で怪しい人物の目撃情報が多発しています。');

DELETE FROM user;
INSERT INTO user values ('user0002', 'ユーザー0002', 'intern02', '1','2');
INSERT INTO user values ('intern01', '一般', 'intern01', '1','1');
INSERT INTO user values ('intern03', '管理者', 'intern03', '2','2');

DELETE FROM lending;
INSERT INTO lending values ('intern01','4774190845','1','2022/09/03','intern01','2022/09/17');

DELETE FROM student;
INSERT INTO student values ('10000001', '山田', '太郎');
INSERT INTO student values ('10000002', '鈴木', '次郎');
INSERT INTO student values ('10000003', '中村', '三太');
INSERT INTO student values ('10000004', '渡辺', '花子');
INSERT INTO student values ('10000005', '小林', '栄子');
