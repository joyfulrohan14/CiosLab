***************** average multiple pbs -> one gene ****************************
setwd("//home//cissigao//Desktop//course//635//hw1")

######## read files and pre-process data ###########
### Iris-dat.txt
iris <- as.matrix(read.table("Iris-dat.txt", skip = 1, header = TRUE, sep = ","))
iris <- iris[-1,]		# remove the first row in the data

### Hea-dat.txt
hea <- as.matrix(read.table("Hea-dat.txt", skip = 1, header = TRUE, sep = ","))
nm <- which((hea[1,] == "Integer") | (hea[1,] == "Real"))			# nm - col# of those non-numeric features
hea <- cbind(hea[-1,nm],hea[-1,dim(hea)[2]])		# remove the first row and non-numeric features in the data

####### each line at a time #####
data <- dataD <- iris; name <- "iris-data"
data <- dataD <- hea; name <- "heart-data"

######## CAIM Algorithm  ########################
class <- data[,dim(data)[2]]
S <- length(unique(class))
CAIM = rep(0,dim(data)[2])

CAIM_G = 0
cat(name, "class = ", S, "\n")
for(i in 1:(dim(data)[2]-1)) {	# foreach feature in our dataset
cat("feature ", i, ": ", colnames(data)[i], "\n")
#STEP1
#	cat(i,"\n")
	f = as.numeric(data[,i])
	fs = sort(unique(f))
	B <- rep(fs[1], length(fs)+1)
	dn <- B[length(B)] <- max(f)
	d0 <- B[1] <- min(f)
	for(bb in 2:length(fs)){
		B[bb] <- (fs[bb-1]+fs[bb])/2
	}
	D <- c(d0,dn)
#STEP2
	k = 1
	while(TRUE) {
		cat("interval ", k," : ")
		CAIM = 0
		for(new in 2:length(B)-1) {
			if(! B[new]%in% D) {
				Dtry <- sort(c(D, B[new]))
				# calculate new CAIM Creteria
				numerator = 0 
				for(r in 2:length(Dtry)) {
					Mr <- max <- 0
					for(c in 1:S) {
						if(r == 2) {
							qir = length(intersect(which(f>=Dtry[r-1] & f<= Dtry[r]), which(class == unique(class)[c])))
						} else {
							qir = length(intersect(which(f>Dtry[r-1] & f<= Dtry[r]), which(class == unique(class)[c])))
						}
						if(qir > max) { max = qir }
						Mr = Mr + qir
					}
						numerator = numerator + (max*max)/Mr
				}
				if(numerator/(length(Dtry)-1) > CAIM) {CAIM = numerator/(length(Dtry)-1); Dnew = Dtry}
			}
		}
		cat("CAIM = ", CAIM)
		if((CAIM > CAIM_G) | (k < S)) {
			D = Dnew
			CAIM_G = CAIM
			cat(" (accept)\tD = [", D, "]\n")			
		} else { cat(" (reject)\n"); break}
		dataD[which(f<=D[2]),i] = 1
		for(dd in 3:length(D)) {
			dataD[which((f>D[dd-1])&(f<=D[dd])),i] = dd-1			
		}
		k = k + 1
	}
}

data		# display the original dataset
dataD 	# display the dataset after discretization

