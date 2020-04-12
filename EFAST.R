setwd("D:/Projects/T1D/Efast")


# an R random seed (for beeing reproducible)
set.seed(1395878419)


# TODO: give the quantile function and the corresponding parameters for the input factors      
input.values <- list(
  'average-lifespan-of-CTL' =         list(quantile.function="qnorm", mean = 100,  sd = 20),
  'number-of-damaged-beta-cell' =      list(quantile.function="qnorm", mean = 100, sd = 20),
  'time-required-for-antigen-moving-one-step' =  list(quantile.function="qnorm", mean = 100, sd = 20),
  'maximum-number-of-naive-cd8t-cell-binding-to-DCs' =  list(quantile.function="qnorm", mean = 100, sd = 20),
  'recruitment-rate-of-DCs-by-pancreas' =  list(quantile.function="qnorm", mean = 100, sd = 20)
)

# TODO: give the number of repititions for the eFAST method (has to be large enough, otherwise, fast99 will produce NAs)
no.repititions <- 200


# how many repetitions for each input factor set should be run (to control stochasticity)?
# TODO: adapt the number of repititions, set to 1 if deterministic model
no.repeated.sim <- 10

# load required package sensitivitiy
#require(sensitivity)
source("fast99.R")
source("base.R")

# get names of input factors
input.names <- names(input.values)

# get names of quantile functions fpr the input factors
q.functions <- sapply(seq(1,length(input.values)), function(i) {
  input.values[[i]]$quantile.function})

# generate a list of arguments for the quantile functions
q.args <- lapply(input.values, function(i) {
  i$quantile.function <- NULL; return(i)})


# create instance of fast99 class
f99 <- fast99(model = NULL, factors = input.names, n = no.repititions, q = q.functions, q.arg = q.args)
sim.results.f99 = read.csv(file="Efast Results.csv", header = FALSE)
sim.result.f99.average=t(matrix(sim.results.f99[,10]))

tell(f99, sim.result.f99.average)
data=f99$X




