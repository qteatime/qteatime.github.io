---
layout: article
title: "Katelog #1: Meet Kate"
---

Imagine if gaming consoles weren't just for passively consuming things. Imagine if they also encouraged people to make their own games. Build upon others' works. And even modify the OS and console themselves—to adapt the platform to you, rather than require you to adapt to the platform.

Kate is a [fantasy console][] that I started in 2022 with these goals in mind. It looks like something that could have been out there in the GameBoy Advance or DS era, but with some slightly improved specifications. And a resolution of whole 800 per 480 pixels, to keep that cursed 5:3 aspect ratio alive.

![](/files/2023/02/kate.png)

More important than that, however, is that Kate has been made to look cute. It has also been made to allow people to share small story-rich games (think visual novels, interactive fictions, RPGs) that people can fully play offline... without having to worry about it wrecking their computer or doing weird things to your online accounts.

You can read the nitty-gritty details of it on [Kate's Concept Paper][concept], but the short story is that you package a game as a Kate cartridge, send it off to someone so they can install it on their local Kate console, and then Kate takes over with sandboxing the hell out of it to make sure it can't do any damage—even if the cartridge turns out to be full of malicious code.

Kate is a web-based console—it runs on top of standard web technologies, and it runs games made with standard web technologies, such as HTML and JavaScript. It, however, runs everything offline, so you don't need internet access to play games. [The way it works is a bit involved][runtime], but it works.

What Kate is not, currently, is a finished product. Indeed, it's quite early in its development stages. And even though it _can_ play games, it's not like there are any games made for it right now. So I've been porting my old games to it, and also taking the opportunity to experiment with where I want the platform to go.

I hope I can share more about it here soon. Until then, I'll leave this small demo of my work-in-progress port of [my previous Jam game](https://qteatime.itch.io/the-sound-of-rain) running in Kate here:

![](/files/2023/02/kate-demo.webp)
{: .frame-image }

[fantasy console]: https://en.wikipedia.org/wiki/Fantasy_video_game_console
[concept]: https://github.com/qteatime/kate/blob/main/CONCEPT.md
[runtime]: https://github.com/qteatime/kate#cartridges-and-runtime
