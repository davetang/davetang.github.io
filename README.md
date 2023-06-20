Table of Contents
=================

* [README](#readme)
   * [Quick start](#quick-start)
   * [Configuration](#configuration)
   * [Posts](#posts)
   * [GitHub pages](#github-pages)
   * [Useful links](#useful-links)

<!-- Created by https://github.com/ekalinin/github-markdown-toc -->

# README

[Hugo](https://gohugo.io/) is a framework for building static websites and was
used to build [this site](https://davetang.github.io/).

## Quick start

Follow the [Quick start guide](https://gohugo.io/getting-started/quick-start/)
to create a new site. I will use the
[hugo-PaperMod](https://github.com/adityatelange/hugo-PaperMod/wiki/Installation)
theme, which looks pretty good.

```console
module load hugo
hugo new site quickstart -f yml
cd quickstart
git clone https://github.com/adityatelange/hugo-PaperMod themes/PaperMod --depth=1
echo "theme: 'PaperMod'" >> config.yml
hugo server
```

## Configuration

The config file (`config.yml`) controls many settings of the site. Use the
PaperMod sample
[config.yml](https://github.com/adityatelange/hugo-PaperMod/wiki/Installation#sample-configyml)
to get started.

## Posts

[Archetypes](https://gohugo.io/content-management/archetypes/) are templates
used when creating new content. These template files are stored in
`archetypes`. For example `archetypes/default.md` looks like this:

```
---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true
---
```

Using `hugo new` will add a new page using the default archetype.

```console
hugo new posts/my-first-post.md
```

Use the PaperMod
[template](https://github.com/adityatelange/hugo-PaperMod/wiki/Installation#sample-pagemd)
to create a new post archetype by saving the template in `archetypes/post.md`.

The template was edited such that new posts will be dynamically populated with
a title (created from the file name) and an updated date time (see [template
variables](https://gohugo.io/content-management/archetypes/#create-a-new-archetype-template)).

[Site variables](https://gohugo.io/variables/site/) were also used in the
archetype template; this means that updates to the config file will
automatically update variables in the archetype. For example to use the base
URL from the config file, use the following in the archetype file:

    {{ .Site.BaseURL }}

Add new post using the `post.md` template.

```console
hugo new --kind post posts/my-test-post.md
# Content "/home/dtang/github/davetang.github.io/content/posts/my-test-post.md" created
```

There is a helper script to create a new post.

```console
script/new_post.sh
# Usage: script/new_post.sh <name-of-post.md>
```

## GitHub pages

Follow these
[instructions](https://gohugo.io/hosting-and-deployment/hosting-on-github/) to
deploy to GitHub Pages using GitHub Actions.

## Useful links

* [Configuration](https://gohugo.io/getting-started/configuration/)
* [Themes](https://themes.gohugo.io/)
