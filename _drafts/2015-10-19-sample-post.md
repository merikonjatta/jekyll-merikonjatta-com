---
layout: post
title:  日本語タイトルのサンプルポスト
date: 2015-10-20
image: /images/greeter.jpg

---

メルドー先生の良いところだけが出たアルバムです。
二枚組を通して一貫したテーマが感じられます。ストーリー感がある。

これまでに聴いたメルドー作品の中では一番好きかもしれない。
これまでに聴いたストリングス入りのジャズの中でも一番好きかもしれない。

いきなり`code`を使ったら`File.glob("**/*.rb")`どうなる？

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
