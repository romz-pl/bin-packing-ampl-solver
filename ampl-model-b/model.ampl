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
# 1 if item i is assigned to bin j, 0 otherwise
var X{ITEMS, BINS} binary;  
        
        


# Obective function
minimize Dumy: 0;


# Each item must be assigned to exactly one bin
subject to item_assignment{i in ITEMS}:
    sum{j in BINS} X[i, j] = 1;

# Bin capacity constraint: total size in each bin cannot exceed capacity
subject to bin_capacity{j in BINS}:
    sum{i in ITEMS} WEIGHT[i] * X[i, j] <= CAPACITY;




