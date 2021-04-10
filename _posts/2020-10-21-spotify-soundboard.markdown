---
layout: post
title:  "SpotifySoundboard"
date:   2020-10-21 12:00:00 +0100
categories: plotly dash interactive visualisation spotify
excerpt_separator: <!--more-->
---

Interactive dashboard application demonstrating the [Dash][dash] framework with data from [Spotify][spotify-data].

[GitHub][github] - [WebApp][web-app]

<!--more-->

---
 
The SpotifySoundboard web app was developed as a way of familiarising myself with [Google Cloud Platform][gcp] 
and the [Dash][dash] framework for analytical application development. The project uses Google's [Cloud Run][cloud-run]
to host [Docker][docker] containers for the live application and for the weekly update service. A combination of the 
[Cloud Scheduler][cloud-scheduler] and [PubSub][pubsub] messaging triggers the regular update and maintenance job.

In addition to these cloud services, the application uses the [aiohttp] library to asynchronously send and
process requests to the Spotify data API. For the weekly update this constitutes around 60 requests, one for each
country included in the report. However, on a fresh deployment, many hundreds of requests must be managed as we
build a data set of weekly streaming data for each country over a two year period. The [aiofiles][aiofiles]
library helps manage asynchronous file writes, which although do not pose a serious bottleneck in this application
would be critical if we were to request larger files from the API.

<br>

[![spotify-soundboard](/assets/spotify-soundboard.png)][web-app]

[github]: https://github.com/domvwt/spotify-soundboard
[web-app]: https://spotify-soundboard-kxyoqpiojq-nw.a.run.app/
[dash]: https://plotly.com/dash/
[spotify-data]: https://spotifycharts.com/regional
[gcp]: https://cloud.google.com/
[cloud-run]: https://cloud.google.com/run
[docker]: https://www.docker.com/
[cloud-scheduler]: https://cloud.google.com/scheduler
[pubsub]: https://cloud.google.com/pubsub/
[aiohttp]: https://docs.aiohttp.org/en/stable/
[aiofiles]: https://github.com/Tinche/aiofiles