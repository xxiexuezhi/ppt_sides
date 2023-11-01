# ProteinSolver v2 <!-- .element: style="margin-top: 16rem" -->

---

## Overview

- ProteinSolver v2 <br> <span style="color: gray">_Learning a joint representation of protein sequence and structure._</span>

  - General idea
  - Input data
  - Network architecture
  - Preliminary results
  - Summary

---

## General idea

<div style="margin: 6rem 2rem 0rem 2rem">

</div>

<div style="height: 360pg; overflow: hidden;">
<img src="figures/introduction/overview-protein-design-ps2.png" />
</div>

---

## Input data

<div style="margin: 0 2rem 0 2rem; display: grid; grid-template-columns: 3fr 2fr; column-gap: 4rem">

<div style="text-align: left;">

### Node attributes

- Amino acid sequence.

- Secondary structure.

- Backbone angles: φ (phi), ψ (psi), and ω (omega).

- Cα angles.

- Cα dihedral angles.
</div>

<div style="height: 520px">
<img src="figures/introduction/Protein_backbone_PhiPsiOmega_drawing.svg" />
</div>

</div>

^^^

### Amino acids <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/aa_sequence-counts.png" />

^^^

### Secondary structure <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/dssp-counts.png" />

^^^

### Phi angles <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/phi-counts.png" />

^^^

### Psi angles <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/psi-counts.png" />

^^^

### Omega angles <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/omega_next-counts.png" />

^^^

### Cα angles <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/ca_angles-counts.png" />

^^^

### Cα dihedral angles <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/ca_dihedral_next-counts.png" />

---

## Input data

<div style="margin: 0 2rem 0 2rem; display: grid; grid-template-columns: 3fr 2fr; column-gap: 4rem">

<div style="text-align: left;">

### Edge attributes

- Distance between residues (backbone, Cα, nearest).

- Hydrogen bonds (structures protonated using `reduce`).

- Translations (in internal coordinates).

- Rotations (as quaternions).
</div>

<div style="height: 520px; margin-right: 0rem">
<img src="figures/introduction/edge-features-demo.png" />
</div>

</div>

^^^

<!-- .slide: data-background-iframe="https://eater.net/quaternions/video/doublecover" data-background-interactive -->

<div style="position: absolute; width: 340px; top: 550px; left: 0; box-shadow: 0 1px 4px rgba(0,0,0,0.5), 0 5px 25px rgba(0,0,0,0.2); background-color: rgba(0, 0, 0, 0.6); color: #fff; padding: 20px; font-size: 20px; text-align: left;">
  <h2 style="color: #c7c7c7">Visualizing quaternions</h2>
  <a href="https://eater.net/quaternions/">https://eater.net/quaternions/</a>
</div>

^^^

### Distance between Cα atoms <!-- .element: class="h-attr" -->

<img src="figures/proteinsolver/03_protein_features_core/distance_ca-counts.png" />

^^^

### Hydrogen bonds <!-- .element: class="h-attr" -->

<img style="margin-top: 4rem; width: 60%" src="figures/proteinsolver/03_protein_features_core/hbond-counts.png" />

^^^

### Translation azimuth and elevation angles <!-- .element: class="h-attr" -->

<div style="margin: 0 2rem 0 2rem; display: grid; grid-template-columns: 1fr; grid-template-rows: 220px 220px; grid-gap: 0">

<div>
<img src="figures/proteinsolver/03_protein_features_core/translation_1_az-counts.png" />
</div>

<div>
<img src="figures/proteinsolver/03_protein_features_core/translation_1_el-counts.png" />
</div>

</div>

^^^

### Rotation quaternions <!-- .element: class="h-attr" -->

<div style="margin: 0 2rem 0 2rem; display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: 220px 220px; grid-gap: 0">

<div>
<img src="figures/proteinsolver/03_protein_features_core/rotation_1_a-counts.png" />
</div>

<div>
<img src="figures/proteinsolver/03_protein_features_core/rotation_1_b-counts.png" />
</div>

<div>
<img src="figures/proteinsolver/03_protein_features_core/rotation_1_c-counts.png" />
</div>

<div>
<img src="figures/proteinsolver/03_protein_features_core/rotation_1_d-counts.png" />
</div>

</div>

---

## Network architecture

<img src="figures/google-docs/network-architecture.png" />

---

## Preliminary results

### Predicting node attributes

<img src="figures/google-docs/aa-sequence-partial-dependence.png" />

---

## Preliminary results

### Predicting edge attributes

<img src="figures/google-docs/distance-ca-partial-dependence.png" />

---

## Summary

<div class="list-no-bullet" style="margin: 4rem;">

- <span class="bullet">✔</span> Can predict edge attributes for all edges, even in large proteins.

- <span class="bullet">❓</span> Combining multiple loss functions leads to a robust and generalizable model. Are multitask scoring functions any good?
</div>

- Compare model trained with all masking to models trained explicitly for the task at hand.

---

## Validation

- Compare the utility of the embedding learned by ProteinSolver with the embeddings learned by different transformer models—trained using sequence information only—on a variety of downstream tasks (TAPE). TAPE benchmark.

---

## Things to try in the immediate future

- Base off TAPE, like the Longformer

- Generate sequence and angles simultaneously.

---

## Future directions

- Protein folding — Predict phi, psi, omega angles given protein sequence (and possibly other information that can be gleaned from low-resolution experiments).

- Homology modelling — Predict phi, psi, omega angles given all other node and attribute features (using the amino acid sequence of the target protein).

---

## More future directions

- Add additional edge attributes which summarize protein motion (e.g. different NMR states or results of a molecular dynamics trajectory).

  - Presumably, we could then produce proteins that have the same dynamics and function as the target protein.

- Apply our model to protein docking (Fan Shen).
