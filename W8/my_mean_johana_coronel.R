my_mean= function(x) {
  sum(x[!is.na(x)])/ length(x[!is.na(x)])
}