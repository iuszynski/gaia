---
layout: page_team
title: ARCHITECTURE
cat: gaia
subcat: team
headline: Deciphering the variability of the cortical folding pattern
teasing: Develops innovative methods to decipher the cortical folding pattern and perform automatic sulcus recognition, based on the use of machine learning and artificial intelligence techniques to infer dictionaries of tractable local polymorphisms supposed to provide a good proxy to the architectural segregation of populations.
leader: Denis Rivière
icon: architecture.png
added: 2020
permalink: teams/gaia-architecture.html
---


<!-- Banner -->
<section id="banner">
<div class="content">
  <header><p>{{ page.title }} team</p></header>
  <p>
  ​​Our team seeks to decipher the variability of the cortical folding pattern, which we consider as a proxy of cortical architecture. We develop supervised deep learning approaches to identify the cortical sulci of a nomenclature, in order to perform their morphometry. We also design unsupervised deep learning approaches to generate a dictionary of the folding patterns existing in the general population, and to automatically define gyration anomalies. Our work is based on about 100,000 healthy and pathological brains, from the early stages of folding to advanced age. We also perform comparative studies with great apes.
  </p>
  <p>
    <b> Leader: </b>
    <script>mail2("{{page.leader | replace: " ", "." | downcase}}", "cea", 3, "", "{{page.leader}}")</script>
  </p>
</div>
<span class="image object">
  <img src="{{site.url}}{{site.baseurl}}/images/labs/{{page.icon}}" alt="" />
</span>
</section>

<!-- Content -->
<br>
For 30 years, we have been improvi​​ng our tools for automatic recognition of cortical sulci. The latest generation (L. Borne, B. Cagna, C. Fischer) relies on deep learning and distillation techniques to learn first a representation of the folding variability on a very large number of brains before exploiting a database of a few hundred brains whose sulci have been manually labeled. Sulcus morphometry is used in a multitude of collaborations to establish biomarkers, e.g., for pathologies of aging (WQ Shu-Quartier-Dit-Maire). But we are approaching the limits of the current anatomical nomenclature, which is not adapted to certain observed patterns.

This is why for a few years we question the usual idea that an atlas can be adapted to any brain. We seek to infer with unsupervised deep learning approaches a dictionary of all the folding patterns (L. Guillon, A. Gaudin, J. Chavas). The goal is to be able to decompose any brain from this dictionary and potentially to highlight anomalies when an observed pattern is not listed. We use generative models and contrastive models to bias the dictionary towards folding patterns predictive of behavioral traits or developmental ​​​pathologies.

We are also developing machine learning analyses to project the geometric variability of a sulcus or a pattern into a low-dimensional manifold, in order to quantify possible links with a pathology or a behavior (Z. Y. Sun, M. Pascucci). We have adapted these strategies to the analysis of the d​​evelopment of the folding of premature babies (H. de Vareille) and to the comparison of the folding of great apes with that of humans (O. Foubet).

In the context of the Human Brain Project, we have established the first atlases of short-range connectivity through U-fibers (M. Guevara, N. Labra, N. Vindas) and new parcellations of the cortical surface integrating connectivity from diffusion MRI and cytoarchitectonicity (C. Langlet, XY Wang). Our ultimate goal is to link folding variability with connectivity and architectonics variability.​

<bf>Developed neuroimaging software platform:</bf> [BrainVisa](https://brainvisa.info/web)
