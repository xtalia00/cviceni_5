BRproDDP = function(a,b){
  mapapoza = c()
  mapapoza[1]=0
  mapapozb = c()
  mapapozb[1]=0
  difer = c()
  for (i in 1:(length(a))) {
    mapapoza[i+1]= mapapoza[i] + a[i]
  }
  for (j in 1:(length(b))) {
    mapapozb[j+1]= mapapozb[j] + b[j]
  }
  slouc = sort(unique(c(mapapozb,mapapoza)),decreasing = FALSE)
  
  
  
  for (e in 2:(length(slouc))) {
    difer[e-1] = slouc[e] - slouc[e-1]
  }
  
  return(sort(difer))
}



PartialDigestProblem = function(L){
  
#width � max(L)
#Delete(width,L)
#X � {0,width}
# Place(L,X)
#Place(L,X)
if (length(L)==0){
output = X }
return(X)


#y � maxim�ln� prvek z L
# if ??(y,X)

# p�idej y do X a odstra� d�lky ??(y,X) z L
# Place(L,X)
# odstra� y z X a p�idej d�lky ??(y,X) do L
# if ??(width-y,X)

# p�idej width-y do X a odstra� d�lky ??(width-y,X) z L
# Place(L,X)
# odstra� width-y z X a p�idej d�lky ??(width-y,X) do L
# return
}
