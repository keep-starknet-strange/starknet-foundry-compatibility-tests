# Madara Starknet Foundry Action

## Usage

```yml
jobs:
  starknet-foundry-tests:
    name: Run Starknet Foundry compatibility tests
    runs-on: ubuntu-latest
    needs: madara_commands
    env:
      SNCAST_VERSION: "0.12.0"
      SCARB_VERSION: "2.3.1"
    steps:
      - uses: keep-starknet-strange/starknet-foundry-compatibility-tests@main
```
