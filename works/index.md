---
layout: page
title: Works
group: works
permalink: /works/
---

<h1 class="q-article-title">Works</h1>

<!-- prettier-ignore -->
<div class="q-article-body">
  {% for section in site.data.works %}
    <h2 class="q-card-list-title">{{ section.title }}</h2>

    <div class="q-card-list">
      {% for work in section.works %}
        <div class="q-card-item">
          <div class="q-card-item-thumb">
            <img src="{{ work.thumbnail }}" alt="">
          </div>
          <div class="q-card-item-info">
            <div class="q-card-item-meta">{{ work.kind }}</div>
            <h3 class="q-card-item-title"><a href="{{ work.url }}" title="{{ work.title }}" target="{{ work.target }}">{{ work.title }}</a></h3>
            <div class="q-card-item-snip">{{ work.snip | markdownify }}</div>
          </div>
        </div>
      {% endfor %}
    </div>

{% endfor %}

</div>
