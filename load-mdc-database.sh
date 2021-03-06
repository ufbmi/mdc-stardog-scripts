#/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/ide/apollo-sv MDC ~/backup/dev-apollo-sv-backup-2017-04-24.rdf 
#/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/ide/classes-and-indexing-instances MDC ~/backup/dev-classes-and-indexing-instances-backup-2017-04-24.rdf
#/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/ide/article-instances MDC ~/backup/dev-articles-backup-2017-04-24.rdf 
#/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/mdc/content MDC ~/owl-files/dtm-ontology.owl

/srv/stardog/stardog-3.1.1/DIST/bin/stardog data remove --named-graph http://www.pitt.edu/obc/ide/apollo-sv MDC
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data remove --named-graph http://www.pitt.edu/obc/ide/classes-and-indexing-instances MDC
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data remove --named-graph http://www.pitt.edu/obc/ide/article-instances MDC 
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data remove --named-graph http://www.pitt.edu/obc/mdc/content MDC

/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/ide/apollo-sv MDC ~/owl-files/merged-apollo-sv-2018-02-23.owl
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/ide/classes-and-indexing-instances MDC ~/owl-files/all-indexing-instances-and-classes-2018-02-15.owl
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/ide/article-instances MDC ~/owl-files/PROD-articles-backup-2018-02-09.rdf
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/mdc/content MDC ~/owl-files/license-ontology-2018-02-23.owl
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/mdc/content MDC ~/owl-files/data-format-ontology-2018-02-23.owl
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/mdc/content MDC ~/owl-files/software-ontology-2018-02-23.owl
/srv/stardog/stardog-3.1.1/DIST/bin/stardog data add --named-graph http://www.pitt.edu/obc/mdc/content MDC ~/owl-files/dataset-ontology-2018-02-23.owl
