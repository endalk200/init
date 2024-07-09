#!/bin/bash

# Extract private_key and public_key from Terraform output
private_key=$(terraform output -json private_key | jq -r '.')
public_key=$(terraform output -json public_key | jq -r '.')

# Save the private key to a file
echo "$private_key" >id_rsa
chmod 600 id_rsa

# Save the public key to a file
echo "$public_key" >id_rsa.pub
chmod 644 id_rsa.pub

# Verify the files
echo "Private key saved to id_rsa"
echo "Public key saved to id_rsa.pub"
