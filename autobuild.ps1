param($Modelfile) 

$tagbase = "jrdnperla/runpod_custom_worker_a1111:"

$dockerfileV = "v1.1"

$model = gci $modelfile

    $tag = $tagbase + $model.BaseName + $dockerfileV
    "Building $tag"
    docker build . -t $tag --build-arg MODEL=$($model.Name)



#docker builder prune

#build new config.yaml
tree /f /a > config.txt

#  +---embeddings
# |   +---Celeb
# |   |       emb-AtwellHaley.pt .\.dockerfileignore

#strip out all spaces, +, and leading dashes
#add ':' to end of each line
#convert | to double space
#convert Filenames to FriendlyNames and append
#strip .pt/.bin
#save as .yaml


#do something w/ styles.csv later
