#!/bin/bash                                                                                                                                                                                                                                      

#don't touch PROD!!!!
if [ $3 = "PROD" ];
then  exit 1
fi

articlesbackup="./backup/$1-articles-backup-$2.rdf"
indexingbackup="./backup/$1-classes-and-indexing-instances-backup-$2.rdf"
apollosvbackup="./backup/$1-apollo-sv-backup-$2.rdf"

if [ -s $articlesbackup -a -s $indexingbackup -a -s $apollosvbackup ];
then


echo "Removing data from named graphs first"
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add -f RDF/XML -g http://www.pitt.edu/obc/ide/article-instances -- $3
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add -f RDF/XML -g http://www.pitt.edu/obc/ide/classes-and-indexing-instances -- $3
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add -f RDF/XML -g http://www.pitt.edu/obc/ide/apollo-sv -- $3

echo "Loading data from $1 backup on $2 to $3 database."

echo $articlesbackup
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add -f RDF/XML -g http://www.pitt.edu/obc/ide/article-instances -- $3 $articlesbackup
echo $indexingbackup
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add -f RDF/XML -g http://www.pitt.edu/obc/ide/classes-and-indexing-instances -- $3 $indexingbackup
echo $apollosvbackup
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add -f RDF/XML -g http://www.pitt.edu/obc/ide/apollo-sv -- $3 $apollosvbackup

exit 0
fi

exit 1
