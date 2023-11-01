\section{Discussion} \label{sec:discussion}

For my PhD project, I propose to examine how recent advances in deep learning can be used to improve the problem of protein design.

There are two hurdles that limit our ability to stabilize proteins: insufficient accuracy of the energy functions that are used to score different conformations, and inability to model the motion of proteins quickly.

There is still a limit of how accurate of results we can achieve with a fixed backbone method. We could explore several approaches for introducing backbone flexibility:

\begin{verbatim}
    A) Select several different PDB templates from which to extract adjacency matrices.
    B) Include co-evolutionary information, which will include important residue-residue interactions even if they are not captured by the particular PDB. 
\end{verbatim}

### Unresolved questions
