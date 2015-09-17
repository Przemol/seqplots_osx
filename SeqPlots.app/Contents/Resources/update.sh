export RHOME=$(pwd)/Rbin/Resources
export R_HOME_DIR=$(pwd)/Rbin/Resources
$RHOME/bin/R -e "devtools::install_github('przemol/seqplots', build_vignettes=FALSE)"
