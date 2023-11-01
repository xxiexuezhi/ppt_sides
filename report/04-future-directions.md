
## Future directions

\label{sec:future_directions}

\ref{sec:future_directions}

Our immediate goal is to evaluate further the accuracy of the classifier network described in Section \ref{sec:dcn} and to publish this network, which we call the Protein Adjacency Graph Neural Network or PAGNN, in a standalone article. We have already shown that PAGNN can accurately predict whether a given sequence matches a given adjacency matrix for a set of Gene3D domains that were not present in the training dataset (Figure dcn_training_curvesB), and we have shown that there is a strong correlation between the difference in PAGNN predictions for the wild-type and mutant sequences and the ΔΔG associated with the mutations (Figure dcn_training_curvesC). We are in the process of evaluating the utility of PAGNN on several additional tasks, including decoy discrimination, remote homology detection, and homology modeling. In the decoy discrimination task, we will assess the ability of PAGNN to pick out a real structure from a set of decoys generated using 3DRobot [@Deng3DRobotautomatedgeneration2016] or a similar method. We will also correlate the PAGNN score with the root-mean-square distance of the decoy structures to the reference structure. In the remote homology detection task, we will assess the ability of PAGNN to improve the assignment of a given sequence to the correct SCOPe family. First, we will use `hhpred` to construct a set of alignments of the query sequence to its closest homologs in the SCOPe database. Next, we will use PAGNN to score each of the alignments using the adjacency matrix of the homologous protein, and we will assess the ability of PAGNN to rank more highly the alignments to proteins that belong to the correct SCOPe family. In the homology detection task, we will assess the ability of PAGNN to improve the quality of the homology models that are constructed for a given sequence. The primary factor affecting the quality of a homology model is the accuracy of the alignment of the query sequence to the structural template [@Marti-RenomAlignmentproteinsequences2004]. We will use PAGNN to score each of the alignments produced by `hhpred` and we will correlate the scores that PAGNN assigns to those alignments with the quality of the resulting homology models.

\cite{hellwoorld}. 

Our subsequent goal will be to optimize the generative adversarial network (GAN) described in Section \ref{sec:gan} to achieve sufficient accuracy to be used for constructing libraries that can be screened using high-throughput experimental techniques \cite{SunProteinengineeringhighly2016,RocklinGlobalanalysisprotein2017}. Training the GAN using real and permuted sequences (Table internal_validation_datasets) results in a generator that can produce sequences with roughly the correct secondary structure but incorrect orientation of the secondary structure elements with respect to one another (see Figures gan_validation_seq, gan_validation_ss, and gan_validation_models). Therefore, we have to modify our training dataset to make the classification task more difficult. We also need to address some of the issues with the architecture of our network. While using batch normalization is reported to significantly speed up and improve the stability of the training process, in our case it results in an unwieldy network that is difficult to validate and to use after training. We can instead try using instance normalization \cite{HuangArbitraryStyleTransfer2017}, layer normalization \cite{BaLayerNormalization2016}, or weight normalization \cite{SalimansWeightNormalizationSimple2016}, which do not have the same shortcomings. Once we have a GAN that can reliably generate sequences, we can use additional filters to select a subset of the sequences that are the most likely to fold into a desirable shape. One approach would be to create homology models of each of the sequences and to sort those homology models using DOPE scope, TM-Score, or the Rosetta scoring function.
- It remains unclear whether including structural information leads to better accuracy than training a transformer model on sequence input only \cite{SalimansWeightNormalizationSimple2016} [@SalimansWeightNormalizationSimple2016].

\ref{sec:future_directions}

Text [^1]. ^[some crazy footnote somethng]

```python
import os

print("hello world")
```

Reference Figure \ref{fig:design-1n5u}.

\setkeys{Gin}{width=1.0\linewidth}

![design-1n5u](figures/generated/design-1n5u.pdf "An exemplary image crazy crazy text. Hello world")

\input{fig-rgn.tex}

> Quoting from some famous person.

A link to [a website](https://foo.bar) <https://foo.bar>.

This is **important**.

Not as important as **_this_**. Don't forget _this_.

\begin{equation}
E = mc^2
\end{equation}

[^1]: This is a footnote.
