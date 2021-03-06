#!/bin/bash
# Install Oracle JDK8
sudo apt-get install software-properties-common -y && \
sudo add-apt-repository ppa:webupd8team/java -y && \
sudo apt-get update && \
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections && \
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y

# Clone ONOS app samples repoitory
git clone https://gerrit.onosproject.org/onos-app-samples

# Build app samples
cd ./onos-app-samples
mvn clean install

echo "If the row corresponding to onos-app-ifwd shows Success, then setup went ok so far. Ignore the rest of the errors."
