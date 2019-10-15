### SC function ###
SOL <- function(m) {
	if(dim(m)[2]==1) {
		return(1)
	} 
	sol = c(rep(0, dim(m)[2]))
	nOfC = dim(m)[2]
	if(sum(m)==0) {							# if all rows are empty
		print("error: empty matrix!")
	} else {
		if(length(m)>nOfC) {
			emptyR = which(rowSums(m)==0)
			if(length(emptyR)>0) {
				m = m[-emptyR,]									# remove empty rows
			}
		}
		while(length(m)>0) {
			if(length(m)>nOfC)	{
				minRsum = unique(sort(rowSums(m)))[1]
				minRm = m[which(rowSums(m)==minRsum),]							# step1: active rows that have the minimum number of 1's in the rows -- min-rows
				if(length(which(rowSums(m)==minRsum))>1) {							# if multiple rows been selected
					maxCsum = unique(sort(colSums(minRm),decreasing =TRUE))[1]
					maxC = which(colSums(minRm)==maxCsum)			
					#minRmaxCm = minRm[,maxC]				
				} else {												# only one row been selected
					maxCsum = unique(sort(minRm,decreasing =TRUE))[1]
					maxC = which(minRm==maxCsum)				
				}
				if(length(maxC)>1) {
					maxCsumAll = unique(sort(colSums(m[,maxC]),decreasing =TRUE))[1]
					maxmaxC = which(colSums(m[,maxC])==maxCsumAll)
					sol[maxC[maxmaxC][1]] = 1
					inactive = which(m[,maxC[maxmaxC][1]]==1)
				} else {
					sol[maxC] = 1
					inactive = which(m[,maxC]==1)
				}
				m = m[-inactive,]
			} else {
				sol[which(m==1)[1]] = 1
				length(m)=0
			}	# end of if
		}	# end of while
		return(sol)
	}	# end of if
}	# end of function

### function to see if a is a subSet of b ###
subSets <- function(a, b) {
	contain = rep(0,dim(a)[1])
	for(i in 1:dim(a)[1]) {
		for(j in 1:dim(b)[1]) {
			if(sum(a[i,]==b[j,]) == dim(a)[2]) {
				contain[i] = 1
			}
		}
	}
	if((sum(contain)==dim(a)[1]) & dim(a)[1] <= dim(b)[1]) {
		return(TRUE)
	} else {
		return(FALSE)
	}
}

### function to remove redundant leaves on that level ###
rmRedundant <- function(l) {
	redundant = rep(0,length(l))
	for(i in 1:length(l)) {
		m1=l[[i]]
		for(j in 1:length(l)) {
			if(i != j) {
				m2 = l[[j]]
				if(subSets(m1,m2)) {
					if(dim(m1)[1]==dim(m2)[1]) {
						redundant[i]=1; redundant[j]=0
					} else {
						redundant[i]=1
					}
				}
			}
		}
	} 
	if(length(which(redundant==1)) > 0) {
		l = l[-which(redundant==1)]
	}
	return(l)
}

### read in data	###
data <- read.table("Iris-DS.txt", sep=",", header=TRUE, skip=1)

### data pre-processing ###
data = data[-1,]
for(i in 1:dim(data)[2]) {
	data[,i] = gsub("\\s","",data[,i])
}
## CLIP4 Algorithms: 
### Phase I ###
rules = "";
for(c in 1:length(class)) {						# take each class as POS and rest as NEG
	classP = class[c];
	POS = as.matrix(data[which(data[,dim(data)[2]]==class[c]),-dim(data)[2]])
	NEG = as.matrix(data[which(data[,dim(data)[2]]!=class[c]),-dim(data)[2]])

nodes=list(as.matrix(POS))
for(i in 1: dim(NEG)[1]) {								# ith row of NEG and ith level of the tree
	Cnodes = list()
	for(j in 1:length(nodes)) {
		node = as.matrix(nodes[[j]])								# take the jth node from the ith level of the tree
		bin <- node <- node[rowSums(is.na(node))<ncol(node),]				# remove all NA rows
		for(k in 1:dim(NEG)[2]) {
			for(l in 1:dim(node)[1]) {
				if((node[l,k]==NEG[i,k])|(node[l,k]=="*")|(NEG[i,k]=="*")) {
					bin[l,k] = "0"
				} else {
					bin[l,k] = "1"
				}
			}	
		}
		bin=apply(bin,2,as.numeric) 
		sol = SOL(bin)
		children = which(sol==1)
		for(nn in 1:length(children)) {
			if(length(which(node[,children[nn]] != NEG[i,children[nn]])) > 1) {
				Cnodes[[length(Cnodes)+1]] = node[which(node[,children[nn]] != NEG[i,children[nn]]),]
			} else { Cnodes[[length(Cnodes)+1]] = t(node[which(node[,children[nn]] != NEG[i,children[nn]]),]) }	
		}
	}
	nodes = rmRedundant(Cnodes) 
}

### Phase II ###
TM = matrix(0, dim(POS)[1], length(nodes))
for(c in 1:length(nodes)) {
	node = as.matrix(nodes[[c]])
	for(r in 1:dim(node)[1]) {
		TM[which(POS[,c]==node[r,c]),c] = 1
	}
}
sol = SOL(TM)

for(i in 1:length(which(sol==1))) {
	BPneg = NEG
	BP = matrix(1,dim(NEG)[1],dim(NEG)[2])
	node = as.matrix(nodes[[which(sol==1)[i]]])
	for(r in 1:dim(NEG)[1]) {
		for(c in 1:dim(NEG)[2]) {
			if(length(which(node[,c]==NEG[r,c]))>0) {
				BP[r,c] = 0; BPneg[r,c] = NA
			}
		}
	}
	Rsol = SOL(BP)
	rule = "IF "
	for(mm in 1:length(which(Rsol==1))) {				# foreach selected feature of this rule, eliminate uncovered examples
		feature = which(Rsol==1)[mm]
		values = levels(as.factor(as.character(BPneg[,feature])))
		for(nn in 1:length(values)) {
			rule = paste(rule,"(", colnames(data)[feature]," != ", values[nn],") AND ",sep="")
		}
	}
	rule = substr(rule,1,nchar(rule)-4)
	rule = paste(rule,"THEN ", classF, " = ", classP, sep="")
	rules = c(rules, rule)
}

}

print(rules[-1])






