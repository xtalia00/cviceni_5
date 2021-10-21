BRproDDP = function(a,b){
  mapapoza = c()
  mapapoza[1]=0
  mapapozb = c()
  mapapozb[1]=0
  for (i in 1:(length(a))) {
    mapapoza[i+1]= mapapoza[i] + a[i]
  }
  for (j in 1:(length(b))) {
    mapapozb[i+1]= mapapozb[i] + b[i]
  }
  return(mapapozb)
}