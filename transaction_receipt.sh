#!/bin/bash

# Check if the transaction hash argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <transaction_hash>"
    exit 1
fi

# Extract the transaction hash argument
TX_HASH="$1"

# Send the cURL request with the provided transaction hash
RESPONSE=$(curl -s -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "jsonrpc": "2.0",
    "method": "starknet_getTransactionReceipt",
    "params": {
        "transaction_hash": "'"$TX_HASH"'"
    },
    "id": 0
}' \
  http://localhost:9944)

# Check if the response contains an error field
if [[ $RESPONSE == *"\"error\""* ]]; then
    echo "Error: $RESPONSE"
    exit 1
else
    echo "Transaction receipt: $RESPONSE"
fi