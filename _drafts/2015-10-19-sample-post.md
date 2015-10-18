---
layout: post
title:  日本語タイトルのサンプルポスト
date: 2015-10-20
image: /images/greeter.jpg

---

ScrappleというEvernote再開発アプリを作ってる。ここんとこホテルにいる間はそればっ
かりやっている。Redmineのwikiに限界を感じて以来ずっと作りたい作りたいと思って
いたものだ。仕事をしてる事にはならないが一日を有意義に過ごせているし、Rackや
Rubyについて新しい学びも多いのでAll goodだ。プログラミングを楽しいと感じたのも
かなり久しぶりな気がして少し嬉しい。

これはH2ヘッディング
--------------------

いきなり`code`を使ったら`File.glob("**/*.rb")`どうなる？

### これはH3

サックスはDeweyの息子です。

```ruby
class GithubService
  BASE_URL = 'https://github.com'

  @@client = Octokit::Client.new(access_token: Settings.github_user_token)

  def self.post_comment_to_pull_request repo_name_with_org, pull_request_number, comment
    @@client.add_comment repo_name_with_org, pull_request_number, comment
  end

  def self.url(thing)
    case thing
    when User
      "#{BASE_URL}/#{thing.nickname}"
    when Repository
      "#{BASE_URL}/#{thing.name_with_org}"
    when Issue
      "#{url(thing.repository)}/issues/#{thing.number}"
    when PullRequest
      "#{url(thing.repository)}/pull/#{thing.number}"
    when Milestone
      "#{url(thing.repository)}/milestones/#{thing.title}"
    end
  end
end
```

Vimで外部コマンドの出力を挿入する
=================================

command|result
---|---
:r! date  |  Read command output, below cursor. Note how this line is long and will probably wrap.
:0r! date |  Read command output, at top
:$r! date |  Read command output, at bottom
