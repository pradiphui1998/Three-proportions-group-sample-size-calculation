# Load the pwr package
library(pwr)

# Create a 3x2 contingency table
data <- matrix(c(62,82,6,4834,1192,49), nrow = 2, byrow = TRUE)
data
# Add row and column names
rownames(data) <- c("Yes", "No")
colnames(data) <- c("DC", "MCDA","MCMA")

# Print the contingency table
print(data)

# Perform chi-square test
chisq_result <- chisq.test(data)

# Print the result
print(chisq_result)

## Calculating the effect size
# w = √(Chisquare/(n*df))
w=sqrt(131.96/(6225*2))
w

pwr.chisq.test(w = 0.1029524, N = NULL, df = 2, sig.level = 0.05, power =0.80)
