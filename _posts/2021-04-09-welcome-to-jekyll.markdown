---
layout: post
title:  "esparto"
date:   2021-04-09 19:47:12 +0100
categories: jekyll update
excerpt_separator: <!--more-->
---

A minimal frontend web framework written in Python - designed for creating shareable documents that look great with minimal effort.

[GitHub][github] - [Docs][documentation] - [PyPI][PyPI]

<!--more-->

---

Sharing reports is a common problem in data science, especially when analyses and model evaluations need to be distributed among
non technical audiences. Frameworks such as [Dash][dash] and [Bokeh][bokeh] are excellent options when it comes to producing
sophisticated, interactive applications, however they can prove to be overly complex and awkward when the desired output is
a simple shareable document.

This is the motivation behind *esparto*: a lightweight framework - developed over a couple of weeks worth of evenings and weekends - 
that aims to do nothing more than produce well formatted pages with minimal effort. There are plans to develop a suite of model
evaluation templates with esparto as a backend, but for now it seems worth sharing as a potential middleground between Jupyter
Notebooks and some of the fuller featured yet complicated solutions.

Check out the [documentation][documentation] and [GitHub repo][github] if you'd like to learn more!

[github]: https://github.com/domvwt/esparto
[documentation]: https://domvwt.github.io/esparto/
[PyPI]: https://pypi.org/project/esparto/
[dash]: https://plotly.com/dash/
[bokeh]: https://docs.bokeh.org/en/latest/index.html