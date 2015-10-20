---
layout: post
title: Githubのforkを一発で完全にupstreamに追いつかせる
image: /images/posts/git-forksync.png

---

Githubでレポをforkしてcloneすると、3つのレポジトリと関わることになります。

* 大元のレポ（upstreamとも呼ばれるが、僕はsuperと呼びたい）
* forkした自分のレポ（大概はこれがorigin）
* ローカルのレポ

superが結構なスピードで開発されていると、originのブランチたちはあっという間に古くなっていきます。GithubではWeb UI上でsuper/masterの変更をorigin/masterに取り込む操作ができますが、ちょっと不便です。

* fast-forwardできる場面でもマージコミットが作られ、結果的にorigin/master is 1 ahead of super/master になってしまう
* ブランチが多いと面倒

というわけでググったのですが、大量のブランチを一気に処理する簡単な方法がすぐには見つからなかったので、[git-forksync](https://gist.github.com/362547702d3a8718c87e)といういかにもメンテされなさそうなスクリプトを書いてしまいました。たいへん捗るんですが、絶対再発明だろうと思うと腑に落ちない。

関係ないですが `git-foo` というexecutableをPATHの通った所に置いておくと、 `git foo` みたいにサブコマンドとして呼び出せることに気づきました。

{% gist 362547702d3a8718c87e %}
