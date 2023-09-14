#!/bin/bash

# Check if Java is installed
if ! command -v java &> /dev/null; then
    echo "Java is not installed. Please install Java and try again."
    exit 1
fi

# Check if the JAR file exists
jar_file="XiaomiADBFastbootTools.jar"
if [ ! -f "$jar_file" ]; then
    echo "$jar_file not found in the current directory."
    exit 1
fi

# Run the Java JAR with command-line arguments
java -jar "$jar_file" "$@"
