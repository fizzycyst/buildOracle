#!/bin/bash
workspace=/home/vagrant/workspace
eclipseroot=/opt/eclipse

# eclipse
repoUrls=http://download.eclipse.org/releases/mars/

# m2eclipse
#repoUrls=$repoUrls,http://download.eclipse.org/technology/m2e/releases
#features=org.eclipse.m2e.feature.feature.group,org.eclipse.m2e.logback.feature.feature.group

# Subversive
# ,http://community.polarion.com/projects/subversive/download/eclipse/5.0/mars-site/
repoUrls=$repoUrls
features=$features,org.eclipse.team.svn.feature.group, org.polarion.eclipse.team.svn.connector.feature.group, org.tigris.subversion.clientadapter.feature.feature.group

# m2e-subversive
#repoUrls=$repoUrls
features=$features,org.sonatype.m2e.subversive.feature.feature.group

destEclipse=$eclipseroot
echo "Destination" $destEclipse
echo "Features" $features

$destEclipse/eclipse \
   -nosplash \
   -application org.eclipse.equinox.p2.director \
   -repository $repoUrls \
   -installIU $features \
   -destination $eclipseroot \
   -profile SDKProfile \
   -profileProperties org.eclipse.update.install.features=true \
   -bundlepool $eclipseroot \
   -p2.os linux \
   -p2.ws gtk \
   -p2.arch x86_64 \
   -roaming