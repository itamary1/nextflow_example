#!/bin/bash
cp ~/.bashrc ~/.bashrc.nextflow_back
echo -e '\n#set java path for nextflow:' >> ~/.bashrc
echo -e 'export JAVA_CMD=/private/common/Software/Java/jdk-11.0.2/bin/java' >> ~/.bashrc
echo "JAVA_CMD has been set to /private/common/Software/Java/jdk-11.0.2/bin/java"

{
    nextflow &> /dev/null
} || {
    echo -e 'export PATH=$PATH:/private/apps/bin/Rocky/' >> ~/.bashrc
    echo "/private/apps/bin/Rocky/ has been added to PATH"
}
