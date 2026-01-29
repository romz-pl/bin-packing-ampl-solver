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
+  BPPLIB: A library for bin packing and cutting stock problems, [Optimization Letters](https://doi.org/10.1007/s11590-017-1192-z)
+  Bin packing and cutting stock problems: Mathematical models and exact algorithms, [European Journal of Operational Research](https://doi.org/10.1016/j.ejor.2016.04.030)
+  BPPLIB - A Bin Packing Problem Library: [A collection of codes, benchmarks, and links](https://github.com/mdelorme2/BPPLIB/tree/main)

