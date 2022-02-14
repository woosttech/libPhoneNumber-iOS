#!/bin/sh

echo "Deleting old metadata..."
rm -r generatedJSON

echo "Retrieving new metadata (this may yield an error about a window)..."
cd scripts
swift metadataGenerator.swift

echo "Generating new code from metadata..."
mv generatedJSON ../
cd ../libPhoneNumber
./GeneratePhoneNumberHeader.sh

echo "Done"
