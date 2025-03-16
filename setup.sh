#!/bin/bash

cp ~/.bashrc ~/.bashrc.nextflow_back
echo -e '\n#set java path for nextflow:' >> ~/.bashrc
echo -e 'export JAVA_CMD=/usr/lib/jvm/java-17-openjdk-17.0.14.0.7-2.el9.x86_64/bin/java' >> ~/.bashrc
echo "JAVA_CMD has been set to /usr/lib/jvm/java-17-openjdk-17.0.14.0.7-2.el9.x86_64/bin/java"

{
    nextflow &> /dev/null
} || {
    echo -e 'export PATH=$PATH:/private/apps/bin/Rocky/' >> ~/.bashrc
    echo "/private/apps/bin/Rocky/ has been added to PATH"
}
echo "please run 'source ~/.bashrc' to make the changes effective"
 
