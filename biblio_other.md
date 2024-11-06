---
title:
layout: page_select
permalink: bibliography.html
---


<h2> Publications of the {{site.title}} </h2>

{% assign today = site.time | date: '%Y' %}
{% assign biblio_sorted = site.biblio | sort: 'subcat' | reverse %}

{% for idx in (0..4) %}

{% assign year = today | minus: idx %}

<div class="bibliography_header">
<h3>{{year}}</h3>
</div>

{% assign section = "" %}
<div class="bibliography">
  {% for entry in biblio_sorted %}
    {% if entry.year == year %}
        {% if section != entry.subcat %}
            {% assign section = entry.subcat %}
            <div class="text-justify {{entry.cat}} {{entry.subcat}}">
            <b>{{section|upcase}}:</b>
            </div>
        {% endif %}
    <li>
      <div class="text-justify {{entry.cat}} {{entry.subcat}}">
        &#x2022;
        {% if entry.doi %}
          {% capture title %}<a href="http://doi.org/{{entry.doi}}" target="_blank">{{entry.title}}</a>{% endcapture %}
        {% else %}
          {% assign title = {{entry.title}} %}
        {% endif %}
        {% if entry.journal %}
            {{entry.author}}: {{title}}, {{entry.journal}} ({{entry.year}})
        {% elsif entry.booktitle %}
            {{entry.author}}: {{title}}, {{entry.booktitle}} ({{entry.year}})
        {% else %}
            {{entry.author}}: {{title}} ({{entry.year}})
        {% endif %}
      </div>
    </li>
    {% endif %}
  {% endfor %}
</div>
<hr>

{% endfor %}
