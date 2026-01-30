# The AMPL solver for bin packing problem

> [!NOTE]
> The **bin packing problem** can be informally defined in a very simple way. We are given $N$ **items** each having an integer weight $w_j$ for $j = 1..N$, and an unlimited number of identical **bins** of integer **capacity** $C$. The objective is to pack all the items into the minimum number of bins so that the total weight packed in any bin does not exceed the capacity. We assume, with no loss of generality, that $0 < w_j < C$ for all $j$ for $j = 1..N$.


## Mathematical problem
In order to give a formal definition of the problem , let $U$ be any upper bound on the minimum number of bins needed, and assume that the bins are are numbered as $1..U$ Let us introduce two types of binary decision variables:
+ For $i = 1..U$ the vector $Y$, such that $Y_i = 1$ if bin $i$ is used in the solution, and $Y_i = 0$ otherwise.
+ For $i = 1..U$ and $j = 1..N$ the matrix $X$, such that $X_{ij} = 1$ if item $j$ is packed into bin $i$ and $X_{ij} = 0$ otherwise.
We can model the bin packing problem as as Integer Linear Program (ILP) of the form

$$
\min_{X, Y} \sum_{i=1}^U Y_i
$$

subject to

$$
\forall {i = 1..U} \quad \sum_{j=1}^N w_j X_{ij} \leq C Y_i
$$

and

$$
\forall {i = 1..N} \quad \sum_{i=1}^U X_{ij} = 1
$$

The first set of constraints impose that the capacity of any used bin is not exceeded, while the second set of constraints ensure that each item is packed into exactly one bin.


## References

### 2026
+ BPPLIB - A Bin Packing Problem Library: [A collection of codes, benchmarks, and links on GitHub](https://github.com/mdelorme2/BPPLIB/tree/main)
+ ESICUP Cutting & Packing Datasets: [A collection of datasets for academic research on GitHub](https://github.com/ESICUP/datasets)
+ Oscar-Oliveira OR-Datasets: [Cutting and Packing Problems on GitHub](https://github.com/Oscar-Oliveira/OR-Datasets/tree/master)

### 2020
+ New Symmetry-less ILP Formulation for the Classical One Dimensional Bin-Packing Problem, [Computing and Combinatorics. COCOON 2020. Lecture Notes in Computer Science, vol 12273](https://doi.org/10.1007/978-3-030-58150-3_34)

### 2018
+  BPPLIB: A library for bin packing and cutting stock problems, [Optimization Letters](https://doi.org/10.1007/s11590-017-1192-z)
+  One-Dimensional Bin Packing, [Chapter in Book Introduction to Cutting and Packing Optimization: Problems, Modeling Approaches, Solution Methods](https://doi.org/10.1007/978-3-319-64403-5_3)

### 2016
+  Bin packing and cutting stock problems: Mathematical models and exact algorithms, [European Journal of Operational Research](https://doi.org/10.1016/j.ejor.2016.04.030)

### 2004
+ Problems, Models and Algorithms in One- and Two-Dimensional Cutting, [PhD Thesis, Gleb Belov](https://d-nb.info/970782489/34)

### 2002
+ LP models for bin packing and cutting stock problems, [European Journal of Operational Research](https://doi.org/10.1016/S0377-2217(02)00124-8)
