---
title:
layout: page_select
permalink: bibliography/bestof.html
---

<h2> Selected publications of the {{site.title}}</h2>

{% assign today = site.time | date: '%Y' %}
{% assign biblio_sorted = site.biblio | sort: 'year' | reverse %}
{% assign year = today | minus: 5 %}

<div class="bibliography">
  {% for entry in biblio_sorted %}
    {% if entry.year > year and entry.bestof %}
    <li>
      <div class="text-justify  {{entry.cat}} {{entry.subcat}}">
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
