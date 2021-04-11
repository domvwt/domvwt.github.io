---
layout: post
title:  "aldentefier (fast.ai + FastAPI)"
date:   2020-12-27 12:00:00 +0100
categories: computer-vision deep-learning fastai fastapi docker 
excerpt_separator: <!--more-->
---

Image classification API with a decoupled HTML / JS frontend and [FastAPI][fastapi] / [Docker][docker] backend.

[GitHub][github] - [WebApp][web-app]

<!--more-->

---

The aldentefier app was created to test the combination of [fast.ai][fastai] and [FastAPI][fastapi] for producing a quick 
proof of concept service. Using the familiar Google [Cloud Run][cloud-run] service for hosting the backend with a [static API 
portal][web-app] proved to be a useful setup, avoiding the long loading screen when the docker service needs to be cold 
started. The decoupling also means that, in a production setting, these services can be scaled independently. For example, 
if the prediction service is called from a number of different client applications. 

The image classification model was developed while following [practical deep learning for coders][practical-dl].
Jeremy Howard and the team at [fast.ai][fastai] have produced some excellent, free courses on deep learning and AI ethics. 
The application first approach to teaching is a welcome alternative to teaching from fundamentals and they've been attracting
a lot of positive attention for their efforts in democratising AI and for the accomplishments of their students. 
I highly encourage anyone new to deep learning, or looking to quickly produce a working application, to 
[check out their page][fastai] and [freely available book][fastbook].

[FastAPI][fastapi] is a web framework designed specifically for building API services. It's incredibly fast thanks to its 
asynchronous serving capability and robust due to its strongly enforced type safety. It even produces and serves 
interactive API docs in [swagger][swagger] and [redoc][redoc] formats right out of the box. Powered by 
[Starlette][starlette] and [Pydantic][pydantic], it's remarkably quick while being simple and satisfying to develop with.

It should be noted that the model doesn't do a fantastic job of classifying user submitted photos (this was not a priority for the project...) but it does make its guesses quickly and reliably!

<br>

[![aldentefier](/assets/aldentefier.png)][web-app]


[github]: https://github.com/domvwt/aldentefier-api
[web-app]: https://domvwt.github.io/aldentefier-api
[docker]: https://www.docker.com/
[fastapi]: https://fastapi.tiangolo.com/
[fastai]: https://www.fast.ai/
[fastbook]: https://github.com/fastai/fastbook 
[practical-dl]: https://course.fast.ai/
[flask]: https://palletsprojects.com/p/flask/
[swagger]: https://swagger.io/tools/swagger-ui/
[redoc]: https://redoc.ly/
[starlette]: https://www.starlette.io/
[pydantic]: https://pydantic-docs.helpmanual.io/
[cloud-run]: https://cloud.google.com/run
