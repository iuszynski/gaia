---
layout: page_select
title:
permalink: /opportunities/
expiration: 100
---

<!-- Section -->
For a spontaneous application do not hesitate to <a href="mailto:{{site.email}}">contact us.</a>

{% assign today = site.time | date: '%s' %}
{% assign jobs_sorted = site.opportunities | sort: 'date' | reverse %}
{% assign jobs_array = "permanent|engineer|phd|postdoc|internship" | split: "|" %}


{% assign jobs_valid = '' | split: '' %}
{% for item in jobs_array %}
    {% assign listjobs = '' | split: '' %}
    {% for job in jobs_sorted %}
        {% if job.type contains item %}
            {% assign start = job.date | date: '%s' %}
            {% assign seconds_since = today | minus: start %}
            {% assign hours_since = seconds_since | divided_by: 60 | divided_by: 60 %}
            {% assign days_since = hours_since | divided_by: 24 %}
            {% if days_since < site.expiration_opportunities %}
                {% assign listjobs = listjobs | push: job %}
            {% endif %}
        {% endif %}
    {% endfor %}
    {% assign jobs_valid = jobs_valid | push: listjobs %}
{% endfor %}

<div>
{% assign i = 0 %}
{% for item in jobs_array %}
    {% assign listjobs = jobs_valid[i] %}
    {% assign i = i | plus: 1 %}
    {% if listjobs.size > 0 %}
        <div class="major">
        {% if item == 'permanent' %}
            <h3>Permanent position</h3>
        {% elsif item == 'phd' %}
            <h3>PhD Scholarship</h3>
        {% elsif item == 'engineer' %}
            <h3>Research Engineers</h3>
        {% elsif item == 'postdoc' %}
            <h3>PostDoctoral position</h3>
        {% elsif item == 'internship' %}
            <h3>Internship</h3>
        {% elsif item == 'old' %}
            <h3>Already filled position</h3>
        {% endif %}
        </div>
        <div class="content list">
        {% for job in listjobs %}
            <div class="{{job.cat|replace: ' ', '-'}} {{job.subcat|replace: ' ', '-'}}">
              <p style="text-align: left; padding-left: 5em; margin: 0;">
                &#x2022; {{job.title}} - {{job.profile}}
                {% if job.ext_url %}
                  <a href="{{job.ext_url}}" class="icon fa-cloud-download" target="_blank"><span class="label">Job</span></a>
                {% elsif job.pdf %}
                  <a href="{{site.url}}{{site.baseurl}}/images/opportunities/{{job.pdf}}" class="icon fa-cloud-download" target="_blank"><span class="label">Job</span></a>
                {% else %}
                  <a href="mailto:{{site.email}}" class="icon fa-envelope-square" target="_blank"><span class="label">Job</span></a>
                {% endif %}
             </p>
          </div>
        {% endfor %}
        <br />
    {% endif %}
{% endfor %}
</div>
