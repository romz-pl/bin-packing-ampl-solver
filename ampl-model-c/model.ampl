#
# Bin Packing Problem 
# Minimize the number of bins needed to pack all items
#
# Author: Zbigniew Romanowski
#



# Number of items
param N integer, > 0;

# Number of bins.
param U integer, > 0;

# Capacity of each bin
param CAPACITY integer, >= 0;         

# Set of items to be packed
set ITEMS = {1..N};

# Set of available bins             
set BINS = {1..U};     

# Weight of items
param WEIGHT{ITEMS} integer, > 0;
     


# Decision variable 
# The item i is assigned to bin X[i].
var X{ITEMS} integer, >=1, <= U;  
        
        


# Obective function
minimize Dumy: 0;


# Bins must be ordered in non-increasing order.
#subject to bins_order{i in ITEMS: i > 1}:
#    X[i - 1] <= X[i];

# Bin capacity constraint: total size in each bin cannot exceed capacity
subject to bin_capacity{b in BINS}:
    sum{i in ITEMS} WEIGHT[i] * (if X[i] = b then 1 else 0)  <= CAPACITY;




