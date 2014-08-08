




<!DOCTYPE html>
<html lang="en" class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>hubot-scripts/gitlab.coffee at master · github/hubot-scripts · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="github/hubot-scripts" name="twitter:title" /><meta content="optional scripts for hubot, opt in via hubot-scripts.json" name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/9919?v=2&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/9919?v=2&amp;s=400" property="og:image" /><meta content="github/hubot-scripts" property="og:title" /><meta content="https://github.com/github/hubot-scripts" property="og:url" /><meta content="optional scripts for hubot, opt in via hubot-scripts.json" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="32CC2282:0875:90BB6C:53E4E44D" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="dZsuY5dFXAsZMfo9igDM7yXd0meu/R23XsLLH+p+JuPFYnpkAGf5fzgDhSEpDIzJ4q2jXR+oVZhI4QJXiDRRnw==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-194b4486faba64388c0aef8e516bab771ebbbceb.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-c47807f6c282e07774df77d23061aecf5fe36c2a.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="e1c1677d31c0b6d5b85a4aae9ef6fc79">

      
  <meta name="description" content="optional scripts for hubot, opt in via hubot-scripts.json">


  <meta content="9919" name="octolytics-dimension-user_id" /><meta content="github" name="octolytics-dimension-user_login" /><meta content="2346623" name="octolytics-dimension-repository_id" /><meta content="github/hubot-scripts" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="2346623" name="octolytics-dimension-repository_network_root_id" /><meta content="github/hubot-scripts" name="octolytics-dimension-repository_network_root_nwo" />

  <link href="https://github.com/github/hubot-scripts/commits/master.atom" rel="alternate" title="Recent Commits to hubot-scripts:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production  vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fgithub%2Fhubot-scripts%2Fblob%2Fmaster%2Fsrc%2Fscripts%2Fgitlab.coffee">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
          <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s, /" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
    data-repo="github/hubot-scripts"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="github/hubot-scripts">

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked">
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global">
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">


  <li>
      <a href="/login?return_to=%2Fgithub%2Fhubot-scripts"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/github/hubot-scripts/stargazers">
      2,408
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fgithub%2Fhubot-scripts"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/github/hubot-scripts/network" class="social-count">
        1,607
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/github" class="url fn" itemprop="url" rel="author"><span itemprop="title">github</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/github/hubot-scripts" class="js-current-repository js-repo-home-link">hubot-scripts</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" data-issue-count-url="/github/hubot-scripts/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/github/hubot-scripts" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /github/hubot-scripts">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/github/hubot-scripts/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /github/hubot-scripts/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class="js-issue-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/github/hubot-scripts/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /github/hubot-scripts/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/github/hubot-scripts/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g w" data-selected-links="repo_wiki /github/hubot-scripts/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/github/hubot-scripts/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /github/hubot-scripts/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/github/hubot-scripts/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /github/hubot-scripts/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/github/hubot-scripts.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/github/hubot-scripts.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/github/hubot-scripts" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/github/hubot-scripts" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>



                <a href="/github/hubot-scripts/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download github/hubot-scripts as a zip file"
                   title="Download github/hubot-scripts as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<a href="/github/hubot-scripts/blob/876093a47ab7cd3c8e9d880f570b10b586dc0a8a/src/scripts/gitlab.coffee" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:4cc02eabd394a0f485213b12e5846e6a -->

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/console-log-brain-write/src/scripts/gitlab.coffee"
                 data-name="console-log-brain-write"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="console-log-brain-write">console-log-brain-write</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/dependency-less/src/scripts/gitlab.coffee"
                 data-name="dependency-less"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="dependency-less">dependency-less</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/gh-twitter/src/scripts/gitlab.coffee"
                 data-name="gh-twitter"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="gh-twitter">gh-twitter</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/master/src/scripts/gitlab.coffee"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/pager-duty-ack-assigned/src/scripts/gitlab.coffee"
                 data-name="pager-duty-ack-assigned"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="pager-duty-ack-assigned">pager-duty-ack-assigned</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/pagerduty-multi-acct/src/scripts/gitlab.coffee"
                 data-name="pagerduty-multi-acct"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="pagerduty-multi-acct">pagerduty-multi-acct</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/twitter-config/src/scripts/gitlab.coffee"
                 data-name="twitter-config"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="twitter-config">twitter-config</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/blob/twitter-config-external/src/scripts/gitlab.coffee"
                 data-name="twitter-config-external"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="twitter-config-external">twitter-config-external</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.15/src/scripts/gitlab.coffee"
                 data-name="v2.5.15"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.15">v2.5.15</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.14/src/scripts/gitlab.coffee"
                 data-name="v2.5.14"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.14">v2.5.14</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.13/src/scripts/gitlab.coffee"
                 data-name="v2.5.13"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.13">v2.5.13</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.12/src/scripts/gitlab.coffee"
                 data-name="v2.5.12"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.12">v2.5.12</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.11/src/scripts/gitlab.coffee"
                 data-name="v2.5.11"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.11">v2.5.11</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.10/src/scripts/gitlab.coffee"
                 data-name="v2.5.10"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.10">v2.5.10</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.9/src/scripts/gitlab.coffee"
                 data-name="v2.5.9"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.9">v2.5.9</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.8/src/scripts/gitlab.coffee"
                 data-name="v2.5.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.8">v2.5.8</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.7/src/scripts/gitlab.coffee"
                 data-name="v2.5.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.7">v2.5.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.6/src/scripts/gitlab.coffee"
                 data-name="v2.5.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.6">v2.5.6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.5/src/scripts/gitlab.coffee"
                 data-name="v2.5.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.5">v2.5.5</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.4/src/scripts/gitlab.coffee"
                 data-name="v2.5.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.4">v2.5.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.3/src/scripts/gitlab.coffee"
                 data-name="v2.5.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.3">v2.5.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.2/src/scripts/gitlab.coffee"
                 data-name="v2.5.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.2">v2.5.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.1/src/scripts/gitlab.coffee"
                 data-name="v2.5.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.1">v2.5.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.5.0/src/scripts/gitlab.coffee"
                 data-name="v2.5.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.5.0">v2.5.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.8/src/scripts/gitlab.coffee"
                 data-name="v2.4.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.8">v2.4.8</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.7/src/scripts/gitlab.coffee"
                 data-name="v2.4.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.7">v2.4.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.6/src/scripts/gitlab.coffee"
                 data-name="v2.4.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.6">v2.4.6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.5/src/scripts/gitlab.coffee"
                 data-name="v2.4.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.5">v2.4.5</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.3/src/scripts/gitlab.coffee"
                 data-name="v2.4.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.3">v2.4.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.2/src/scripts/gitlab.coffee"
                 data-name="v2.4.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.2">v2.4.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.4.1/src/scripts/gitlab.coffee"
                 data-name="v2.4.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.4.1">v2.4.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.2.2/src/scripts/gitlab.coffee"
                 data-name="v2.2.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.2.2">v2.2.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.2.1/src/scripts/gitlab.coffee"
                 data-name="v2.2.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.2.1">v2.2.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.2.0/src/scripts/gitlab.coffee"
                 data-name="v2.2.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.2.0">v2.2.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.1.3/src/scripts/gitlab.coffee"
                 data-name="v2.1.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.1.3">v2.1.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.1.2/src/scripts/gitlab.coffee"
                 data-name="v2.1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.1.2">v2.1.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.1.1/src/scripts/gitlab.coffee"
                 data-name="v2.1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.1.1">v2.1.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.1.0/src/scripts/gitlab.coffee"
                 data-name="v2.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.1.0">v2.1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.7/src/scripts/gitlab.coffee"
                 data-name="v2.0.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.7">v2.0.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.6/src/scripts/gitlab.coffee"
                 data-name="v2.0.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.6">v2.0.6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.5/src/scripts/gitlab.coffee"
                 data-name="v2.0.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.5">v2.0.5</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.4/src/scripts/gitlab.coffee"
                 data-name="v2.0.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.4">v2.0.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.3/src/scripts/gitlab.coffee"
                 data-name="v2.0.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.3">v2.0.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.2/src/scripts/gitlab.coffee"
                 data-name="v2.0.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.2">v2.0.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.1/src/scripts/gitlab.coffee"
                 data-name="v2.0.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.1">v2.0.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v2.0.0/src/scripts/gitlab.coffee"
                 data-name="v2.0.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0.0">v2.0.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.8/src/scripts/gitlab.coffee"
                 data-name="v1.1.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.8">v1.1.8</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.7/src/scripts/gitlab.coffee"
                 data-name="v1.1.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.7">v1.1.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.6/src/scripts/gitlab.coffee"
                 data-name="v1.1.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.6">v1.1.6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.5/src/scripts/gitlab.coffee"
                 data-name="v1.1.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.5">v1.1.5</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.4/src/scripts/gitlab.coffee"
                 data-name="v1.1.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.4">v1.1.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.3/src/scripts/gitlab.coffee"
                 data-name="v1.1.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.3">v1.1.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.2/src/scripts/gitlab.coffee"
                 data-name="v1.1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.2">v1.1.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.1/src/scripts/gitlab.coffee"
                 data-name="v1.1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.1">v1.1.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.1.0/src/scripts/gitlab.coffee"
                 data-name="v1.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1.0">v1.1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.0.4/src/scripts/gitlab.coffee"
                 data-name="v1.0.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.0.4">v1.0.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/github/hubot-scripts/tree/v1.0.3/src/scripts/gitlab.coffee"
                 data-name="v1.0.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.0.3">v1.0.3</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/github/hubot-scripts/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="src/scripts/gitlab.coffee"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/github/hubot-scripts" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">hubot-scripts</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/github/hubot-scripts/tree/master/src" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">src</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/github/hubot-scripts/tree/master/src/scripts" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">scripts</span></a></span><span class="separator"> / </span><strong class="final-path">gitlab.coffee</strong>
  </div>
</div>


  <div class="commit file-history-tease">
      <img alt="Hnk Reno" class="main-avatar" data-user="1783602" height="24" src="https://avatars2.githubusercontent.com/u/1783602?v=2&amp;s=48" width="24" />
      <span class="author"><a href="/hnk" rel="contributor">hnk</a></span>
      <time datetime="2014-07-03T15:38:51+02:00" is="relative-time">July 03, 2014</time>
      <div class="commit-title">
          <a href="/github/hubot-scripts/commit/df2c77c930366a242b7544f3f0e0ee813a81041e" class="message" data-pjax="true" title="fix(gitlab.coffee): removed rogue line return">fix(gitlab.coffee): removed rogue line return</a>
      </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>7</strong>  contributors</a></p>
      
    <a class="avatar tooltipped tooltipped-s" aria-label="omribahumi" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=omribahumi"><img alt="Omri Bahumi" data-user="2558457" height="20" src="https://avatars2.githubusercontent.com/u/2558457?v=2&amp;s=40" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="pmotyka" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=pmotyka"><img alt="Peter Motyka" data-user="610131" height="20" src="https://avatars1.githubusercontent.com/u/610131?v=2&amp;s=40" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="yosida95" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=yosida95"><img alt="Kohei YOSHIDA" data-user="767275" height="20" src="https://avatars1.githubusercontent.com/u/767275?v=2&amp;s=40" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="hhaidar" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=hhaidar"><img alt="Houssam Haidar" data-user="1066160" height="20" src="https://avatars0.githubusercontent.com/u/1066160?v=2&amp;s=40" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="hnk" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=hnk"><img alt="Hnk Reno" data-user="1783602" height="20" src="https://avatars0.githubusercontent.com/u/1783602?v=2&amp;s=40" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="dsylla" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=dsylla"><img alt="David Sylla" data-user="668455" height="20" src="https://avatars1.githubusercontent.com/u/668455?v=2&amp;s=40" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="luuse" href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee?author=luuse"><img alt="Andreas Falk" data-user="111528" height="20" src="https://avatars3.githubusercontent.com/u/111528?v=2&amp;s=40" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Omri Bahumi" data-user="2558457" height="24" src="https://avatars0.githubusercontent.com/u/2558457?v=2&amp;s=48" width="24" />
            <a href="/omribahumi">omribahumi</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Peter Motyka" data-user="610131" height="24" src="https://avatars3.githubusercontent.com/u/610131?v=2&amp;s=48" width="24" />
            <a href="/pmotyka">pmotyka</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Kohei YOSHIDA" data-user="767275" height="24" src="https://avatars3.githubusercontent.com/u/767275?v=2&amp;s=48" width="24" />
            <a href="/yosida95">yosida95</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Houssam Haidar" data-user="1066160" height="24" src="https://avatars2.githubusercontent.com/u/1066160?v=2&amp;s=48" width="24" />
            <a href="/hhaidar">hhaidar</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Hnk Reno" data-user="1783602" height="24" src="https://avatars2.githubusercontent.com/u/1783602?v=2&amp;s=48" width="24" />
            <a href="/hnk">hnk</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="David Sylla" data-user="668455" height="24" src="https://avatars3.githubusercontent.com/u/668455?v=2&amp;s=48" width="24" />
            <a href="/dsylla">dsylla</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Andreas Falk" data-user="111528" height="24" src="https://avatars1.githubusercontent.com/u/111528?v=2&amp;s=48" width="24" />
            <a href="/luuse">luuse</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>105 lines (93 sloc)</span>
          <span class="meta-divider"></span>
        <span>4.074 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/github/hubot-scripts/raw/master/src/scripts/gitlab.coffee" class="minibutton " id="raw-url">Raw</a>
            <a href="/github/hubot-scripts/blame/master/src/scripts/gitlab.coffee" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/github/hubot-scripts/commits/master/src/scripts/gitlab.coffee" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->


            <a class="octicon-button disabled tooltipped tooltipped-w" href="#"
               aria-label="You must be signed in to make or propose changes"><span class="octicon octicon-pencil"></span></a>

          <a class="octicon-button danger disabled tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-coffeescript">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-line-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-line-code js-file-line"><span class="c1"># Description:</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-line-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-line-code js-file-line"><span class="c1">#   Post gitlab related events using gitlab hooks</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-line-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-line-code js-file-line"><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-line-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-line-code js-file-line"><span class="c1"># Dependencies:</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-line-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-line-code js-file-line"><span class="c1">#   &quot;url&quot; : &quot;&quot;</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-line-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-line-code js-file-line"><span class="c1">#   &quot;querystring&quot; : &quot;&quot;</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-line-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-line-code js-file-line"><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-line-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-line-code js-file-line"><span class="c1"># Configuration:</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-line-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-line-code js-file-line"><span class="c1">#   GITLAB_CHANNEL</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-line-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-line-code js-file-line"><span class="c1">#   GITLAB_DEBUG</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-line-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-line-code js-file-line"><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-line-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-line-code js-file-line"><span class="c1">#   Put http://&lt;HUBOT_URL&gt;:&lt;PORT&gt;/gitlab/system as your system hook</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-line-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-line-code js-file-line"><span class="c1">#   Put http://&lt;HUBOT_URL&gt;:&lt;PORT&gt;/gitlab/web as your web hook (per repository)</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-line-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-line-code js-file-line"><span class="c1">#   You can also append &quot;?targets=%23room1,%23room2&quot; to the URL to control the</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-line-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-line-code js-file-line"><span class="c1">#   message destination.  Using the &quot;target&quot; parameter to override the </span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-line-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-line-code js-file-line"><span class="c1">#   GITLAB_CHANNEL configuration value.</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-line-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-line-code js-file-line"><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-line-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-line-code js-file-line"><span class="c1"># Commands:</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-line-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-line-code js-file-line"><span class="c1">#   None</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-line-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-line-code js-file-line"><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-line-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-line-code js-file-line"><span class="c1"># URLS:</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-line-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-line-code js-file-line"><span class="c1">#   /gitlab/system</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-line-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-line-code js-file-line"><span class="c1">#   /gitlab/web</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-line-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-line-code js-file-line"><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-line-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-line-code js-file-line"><span class="c1"># Author:</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-line-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-line-code js-file-line"><span class="c1">#   omribahumi</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-line-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L28" class="blob-line-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-line-code js-file-line"><span class="nv">url = </span><span class="nx">require</span> <span class="s">&#39;url&#39;</span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-line-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-line-code js-file-line"><span class="nv">querystring = </span><span class="nx">require</span> <span class="s">&#39;querystring&#39;</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-line-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L31" class="blob-line-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-line-code js-file-line"><span class="nv">module.exports = </span><span class="nf">(robot) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-line-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-line-code js-file-line">  <span class="nv">gitlabChannel = </span><span class="nx">process</span><span class="p">.</span><span class="nx">env</span><span class="p">.</span><span class="nx">GITLAB_CHANNEL</span> <span class="o">or</span> <span class="s">&quot;#gitlab&quot;</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-line-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-line-code js-file-line">  <span class="nv">debug = </span><span class="nx">process</span><span class="p">.</span><span class="nx">env</span><span class="p">.</span><span class="nx">GITLAB_DEBUG</span><span class="o">?</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-line-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L35" class="blob-line-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="nx">robot</span><span class="p">.</span><span class="nx">adapter</span><span class="p">.</span><span class="nx">constructor</span><span class="p">.</span><span class="nx">name</span> <span class="o">is</span> <span class="s">&#39;IrcBot&#39;</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-line-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-line-code js-file-line">    <span class="nv">bold = </span><span class="nf">(text) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-line-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-line-code js-file-line">      <span class="s">&quot;\x02&quot;</span> <span class="o">+</span> <span class="nx">text</span> <span class="o">+</span> <span class="s">&quot;\x02&quot;</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-line-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-line-code js-file-line">    <span class="nv">underline = </span><span class="nf">(text) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-line-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-line-code js-file-line">      <span class="s">&quot;\x1f&quot;</span> <span class="o">+</span> <span class="nx">text</span> <span class="o">+</span> <span class="s">&quot;\x1f&quot;</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-line-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-line-code js-file-line">  <span class="k">else</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-line-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-line-code js-file-line">    <span class="nv">bold = </span><span class="nf">(text) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-line-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-line-code js-file-line">      <span class="nx">text</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-line-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-line-code js-file-line">    <span class="nv">underline = </span><span class="nf">(text) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-line-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-line-code js-file-line">      <span class="nx">text</span></td>
      </tr>
      <tr>
        <td id="L45" class="blob-line-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-line-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-line-code js-file-line">  <span class="nv">trim_commit_url = </span><span class="nf">(url) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-line-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-line-code js-file-line">    <span class="nx">url</span><span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/(\/[0-9a-f]{9})[0-9a-f]+$/</span><span class="p">,</span> <span class="s">&#39;$1&#39;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-line-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L49" class="blob-line-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-line-code js-file-line">  <span class="nv">handler = </span><span class="nf">(type, req, res) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-line-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-line-code js-file-line">    <span class="nv">query = </span><span class="nx">querystring</span><span class="p">.</span><span class="nx">parse</span><span class="p">(</span><span class="nx">url</span><span class="p">.</span><span class="nx">parse</span><span class="p">(</span><span class="nx">req</span><span class="p">.</span><span class="nx">url</span><span class="p">).</span><span class="nx">query</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-line-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-line-code js-file-line">    <span class="nv">hook = </span><span class="nx">req</span><span class="p">.</span><span class="nx">body</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-line-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L53" class="blob-line-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-line-code js-file-line">    <span class="k">if</span> <span class="nx">debug</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-line-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-line-code js-file-line">      <span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="s">&#39;query&#39;</span><span class="p">,</span> <span class="nx">query</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-line-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-line-code js-file-line">      <span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="s">&#39;hook&#39;</span><span class="p">,</span> <span class="nx">hook</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-line-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L57" class="blob-line-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-line-code js-file-line">    <span class="nv">user = </span><span class="p">{}</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-line-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-line-code js-file-line">    <span class="nv">user.room = </span><span class="k">if</span> <span class="nx">query</span><span class="p">.</span><span class="nx">targets</span> <span class="k">then</span> <span class="nx">query</span><span class="p">.</span><span class="nx">targets</span> <span class="k">else</span> <span class="nx">gitlabChannel</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-line-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-line-code js-file-line">    <span class="nv">user.type = </span><span class="nx">query</span><span class="p">.</span><span class="nx">type</span> <span class="k">if</span> <span class="nx">query</span><span class="p">.</span><span class="nx">type</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-line-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L61" class="blob-line-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-line-code js-file-line">    <span class="k">switch</span> <span class="nx">type</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-line-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-line-code js-file-line">      <span class="k">when</span> <span class="s">&quot;system&quot;</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-line-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-line-code js-file-line">        <span class="k">switch</span> <span class="nx">hook</span><span class="p">.</span><span class="nx">event_name</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-line-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-line-code js-file-line">          <span class="k">when</span> <span class="s">&quot;project_create&quot;</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-line-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;Yay! New gitlab project </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">name</span><span class="p">)</span><span class="si">}</span><span class="s"> created by </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">owner_name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">owner_email</span><span class="p">)</span><span class="si">}</span><span class="s">)&quot;</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-line-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-line-code js-file-line">          <span class="k">when</span> <span class="s">&quot;project_destroy&quot;</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-line-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;Oh no! </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">owner_name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">owner_email</span><span class="p">)</span><span class="si">}</span><span class="s">) deleted the </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">name</span><span class="p">)</span><span class="si">}</span><span class="s"> project&quot;</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-line-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-line-code js-file-line">          <span class="k">when</span> <span class="s">&quot;user_add_to_team&quot;</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-line-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">project_access</span><span class="p">)</span><span class="si">}</span><span class="s"> access granted to </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">user_name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">user_email</span><span class="p">)</span><span class="si">}</span><span class="s">) on </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">project_name</span><span class="p">)</span><span class="si">}</span><span class="s"> project&quot;</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-line-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-line-code js-file-line">          <span class="k">when</span> <span class="s">&quot;user_remove_from_team&quot;</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-line-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">project_access</span><span class="p">)</span><span class="si">}</span><span class="s"> access revoked from </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">user_name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">user_email</span><span class="p">)</span><span class="si">}</span><span class="s">) on </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">project_name</span><span class="p">)</span><span class="si">}</span><span class="s"> project&quot;</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-line-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-line-code js-file-line">          <span class="k">when</span> <span class="s">&quot;user_create&quot;</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-line-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;Please welcome </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">email</span><span class="p">)</span><span class="si">}</span><span class="s">) to Gitlab!&quot;</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-line-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-line-code js-file-line">          <span class="k">when</span> <span class="s">&quot;user_destroy&quot;</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-line-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;We will be missing </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">email</span><span class="p">)</span><span class="si">}</span><span class="s">) on Gitlab&quot;</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-line-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-line-code js-file-line">      <span class="k">when</span> <span class="s">&quot;web&quot;</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-line-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-line-code js-file-line">        <span class="nv">message = </span><span class="s">&quot;&quot;</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-line-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-line-code js-file-line">        <span class="c1"># is it code being pushed?</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-line-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-line-code js-file-line">        <span class="k">if</span> <span class="nx">hook</span><span class="p">.</span><span class="nx">ref</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-line-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-line-code js-file-line">          <span class="nv">branch = </span><span class="nx">hook</span><span class="p">.</span><span class="nx">ref</span><span class="p">.</span><span class="nx">split</span><span class="p">(</span><span class="s">&quot;/&quot;</span><span class="p">)[</span><span class="mi">2</span><span class="p">..].</span><span class="nx">join</span><span class="p">(</span><span class="s">&quot;/&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-line-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-line-code js-file-line">          <span class="c1"># if the ref before the commit is 00000, this is a new branch</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-line-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-line-code js-file-line">          <span class="k">if</span> <span class="sr">/^0+$/</span><span class="p">.</span><span class="nx">test</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">before</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-line-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-line-code js-file-line">            <span class="nv">message = </span><span class="s">&quot;</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">user_name</span><span class="p">)</span><span class="si">}</span><span class="s"> pushed a new branch (</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">branch</span><span class="p">)</span><span class="si">}</span><span class="s">) to </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">repository</span><span class="p">.</span><span class="nx">name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">underline</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">repository</span><span class="p">.</span><span class="nx">homepage</span><span class="p">)</span><span class="si">}</span><span class="s">)&quot;</span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-line-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-line-code js-file-line">          <span class="k">else</span></td>
      </tr>
      <tr>
        <td id="L85" class="blob-line-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-line-code js-file-line">            <span class="nv">message = </span><span class="s">&quot;</span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">user_name</span><span class="p">)</span><span class="si">}</span><span class="s"> pushed </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">total_commits_count</span><span class="p">)</span><span class="si">}</span><span class="s"> commits to </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">branch</span><span class="p">)</span><span class="si">}</span><span class="s"> in </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">repository</span><span class="p">.</span><span class="nx">name</span><span class="p">)</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">underline</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">repository</span><span class="p">.</span><span class="nx">homepage</span> <span class="o">+</span> <span class="s">&#39;/compare/&#39;</span> <span class="o">+</span> <span class="nx">hook</span><span class="p">.</span><span class="nx">before</span><span class="p">.</span><span class="nx">substr</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="mi">9</span><span class="p">)</span> <span class="o">+</span> <span class="s">&#39;...&#39;</span> <span class="o">+</span> <span class="nx">hook</span><span class="p">.</span><span class="nx">after</span><span class="p">.</span><span class="nx">substr</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="mi">9</span><span class="p">))</span><span class="si">}</span><span class="s">)&quot;</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-line-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-line-code js-file-line">          <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="nx">message</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-line-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-line-code js-file-line">        <span class="c1"># not code? must be a something good!</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-line-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-line-code js-file-line">        <span class="k">else</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-line-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-line-code js-file-line">          <span class="k">switch</span> <span class="nx">hook</span><span class="p">.</span><span class="nx">object_kind</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-line-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-line-code js-file-line">            <span class="k">when</span> <span class="s">&quot;issue&quot;</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-line-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-line-code js-file-line">              <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;Issue </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">id</span><span class="p">)</span><span class="si">}</span><span class="s">: </span><span class="si">#{</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">title</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">state</span><span class="si">}</span><span class="s">)&quot;</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-line-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-line-code js-file-line">            <span class="k">when</span> <span class="s">&quot;merge_request&quot;</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-line-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-line-code js-file-line">              <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;Merge Request </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">id</span><span class="p">)</span><span class="si">}</span><span class="s">: </span><span class="si">#{</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">title</span><span class="si">}</span><span class="s"> (</span><span class="si">#{</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">state</span><span class="si">}</span><span class="s">) between </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">source_branch</span><span class="p">)</span><span class="si">}</span><span class="s"> and </span><span class="si">#{</span><span class="nx">bold</span><span class="p">(</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">target_branch</span><span class="p">)</span><span class="si">}</span><span class="s">&quot;</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-line-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-line-code js-file-line">          <span class="k">if</span> <span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">description</span></td>
      </tr>
      <tr>
        <td id="L95" class="blob-line-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-line-code js-file-line">            <span class="nx">robot</span><span class="p">.</span><span class="nx">send</span> <span class="nx">user</span><span class="p">,</span> <span class="s">&quot;&gt;&gt; </span><span class="si">#{</span><span class="nx">hook</span><span class="p">.</span><span class="nx">object_attributes</span><span class="p">.</span><span class="nx">description</span><span class="si">}</span><span class="s">&quot;</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-line-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-line-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-line-code js-file-line">  <span class="nx">robot</span><span class="p">.</span><span class="nx">router</span><span class="p">.</span><span class="nx">post</span> <span class="s">&quot;/gitlab/system&quot;</span><span class="p">,</span> <span class="nf">(req, res) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-line-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-line-code js-file-line">    <span class="nx">handler</span> <span class="s">&quot;system&quot;</span><span class="p">,</span> <span class="nx">req</span><span class="p">,</span> <span class="nx">res</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-line-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-line-code js-file-line">    <span class="nx">res</span><span class="p">.</span><span class="nx">end</span> <span class="s">&quot;&quot;</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-line-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L101" class="blob-line-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-line-code js-file-line">  <span class="nx">robot</span><span class="p">.</span><span class="nx">router</span><span class="p">.</span><span class="nx">post</span> <span class="s">&quot;/gitlab/web&quot;</span><span class="p">,</span> <span class="nf">(req, res) -&gt;</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-line-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-line-code js-file-line">    <span class="nx">handler</span> <span class="s">&quot;web&quot;</span><span class="p">,</span> <span class="nx">req</span><span class="p">,</span> <span class="nx">res</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-line-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-line-code js-file-line">    <span class="nx">res</span><span class="p">.</span><span class="nx">end</span> <span class="s">&quot;&quot;</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.03431s from github-fe118-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-12d5fda141e78e513749dddbc56445fe172cbd9a.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-766b0d418ce5caf7cf8540ce1c80165442c2ab6b.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

