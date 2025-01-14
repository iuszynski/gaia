---
layout: page_team
title: GINKGO
cat: gaia
subcat: team
headline: Mapping the brain microstructure across individuals and species
teasing: Develops innovative methods to map the brain structural connectome, cortex cytoarchitectony and myeloarchitectony at the individual scale, from animals to humans using ultra-high field and extreme field MRI.
site: https://neurospin.github.io/ginkgo
leader: Ivy Uszynski
icon: ginkgo.png
added: 2020
permalink: teams/gaia-ginkgo.html
---

<!-- Banner -->
<section id="banner">
<div class="content">
  <header><p>{{ page.title }} team</p></header>
  <p>
​   ​Within the framework of the transversal research program "Cyto in vivo", our main objective is twofold: mapping the cerebral structural connectome and mapping the cortex cytoarchitectony and myeloarchitectony at the individual scale, from animal to human using MRI. To this end, the scientific strategy is based on 3 pillars: the collection of extreme field (11.7 T, 17.2 T) MRI data acquired on post-mortem brains, the collection of ultra-high field (3 T, 7 T) MRI data acquired on human volunteers, and the development of innovative numerical methods of inference of the structural connectome, cytoarchitectonics and myeloarchitectonics of individual brains based on high performance computing (HPC), numerical simulation and artificial intelligence (AI). ​
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
Our Ginkgo team has been developing a software toolbox for 15 years dedicated to ​the analysis of diffusion and quantitative MRI and to the construction of white matter atlases (*). During the past five years, it has
been exploited in the frame of collaborative projects (INRAE, NeuroPSI, iBrain, Collège de France, ENS Paris-Saclay, MD Anderson, Beauval ZooParc) to establish novel connectivity atlases of various species from humans to animals and has made it possible to study the singularity of the connectivity of the human brain compared to the chimpanzee brain.

In close collaboration with the INSERM iBRAIN Unit, we have also contributed to the Human Brain Project with the Chenonceau project consisting in scanning for 12 000 hours a post-mortem brain on preclinical MRIs at the mesoscale. It allowed the collection of a Big Dataset of anatomical, diffusion and relaxometric MRI, opening the way to the exploration of fine brain structures, of fine anatomical connectivity, and of the cortex cytoarchitectonics and myeloarchitectonics at unprecedented resolutions.

In the framework of the AIDAS institute, we developed a novel HPC tools for the global inference of the structural connectome capable of scaling and reconstructing connectomes of mesoscopic to microscopic
resolutions from diffusion MRI and PLI. To further improve the ability of diffusion MRI to probe brain cytoarchitecture, the Ginkgo team has developed an innovative simulation framework, Medusa, which aims
to transform MRI into a virtual biopsy tool. It relies on large scale numerical simulations of realistic brain tissue samples and of their corresponding diffusion MRI signatures, and on AI techniques to train decoding tools
able to map brain cytoarchitectonics in vivo at the individual scale.

We will continue investigating brain microstructure, in the frame of 3 projects aiming at deciphering the cellular disorders at the origin of white matter hyperintensities in small vessel diseases (SUMMIT), characterizing the cytoarchitecture of brain functions (iCORTEX), and collecting a deep phenotyping biobank
of multimodal and multiscale in and ex vivo brain data using outstanding imagers (BrainDeepPhenotyping, PEPR Santé Numérique).​
