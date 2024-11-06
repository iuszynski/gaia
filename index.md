---
layout: page_lab
---

{% assign lab = "gaia" %}
{% assign teams_sorted = site.labs | where: "cat", lab | where: "subcat", "team" | sort: "title"  %}
{% assign cells_sorted = site.labs | where: "cat", lab | where: "subcat", "cell" | sort: "title"  %}

<!-- Banner -->
<section id="banner">
<div class="content" style="width: 100%;">
  <p>
  The GAIA laboratory is part of the BAOBAB (CEA, CNRS, Paris-Saclay Univ.) unit of <a href="http://www.cea.fr/english"  target="_blank">CEA</a>/<a href="http://joliot.cea.fr/drf/joliot/en/Pages/research_entities/NeuroSpin.aspx"  target="_blank">NeuroSpin department</a>, located on the <a href="https://www.universite-paris-saclay.fr/en" target="_blank">Paris-Saclay campus</a>.
  </p>
  <p>
  GAIA laboratory develops new computer vision systems dedicated to the modeling of the inter-subject variability of complex brain phenotypes, is the algorithmic forefront of the exploitation of high field MRI, designs dedicated artificial intelligence methods and software environments to exploit brain phenotypes in a variety of contexts (biomarker research, genetics, cognitive neuroscience, etc).
  </p>
  <p>
  Below is a list of all the <a href="#teams">teams</a> and <a href="#cells">cells</a>. A <a href="#gallery">gallery</a> of current research topics is also available.
  </p>
  <!-- <p>
  <b>Teams:</b>
  {% for team in teams_sorted %}
    {% if team.site %}
        <a href="{{team.site}}">{{team.title}}</a>
    {% else %}
        <a href="{{site.url}}{{site.baseurl}}{{team.url}}">{{team.title}}</a>
    {% endif %}
  {% endfor %}
  <br>
  <b>Cells:</b>
  {% for cell in cells_sorted %}
    {% if cell.site %}
        <a href="{{cell.site}}">{{cell.title}}</a>
    {% else %}
        <a href="{{site.url}}{{site.baseurl}}{{cell.url}}">{{cell.title}}</a>
    {% endif %}
  {% endfor %}
   </p> -->
</div>
<div class="">
  <img src="{{site.url}}{{site.baseurl}}/images/banner.png" alt="" style="
    width: 100%;
    height: auto;
    margin-bottom: 2em;
  "/>
</div>
</section>
