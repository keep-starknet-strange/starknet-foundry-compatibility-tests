# Madara Starknet Foundry Action

## Usage

```yml
jobs:
  starknet-foundry-tests:
    name: Run Starknet Foundry compatibility tests
    runs-on: ubuntu-latest
    needs: madara_commands
    env:
      SNCAST_VERSION: "0.8.3"
    steps:
      - uses: justinfrevert/madara-foundry-action@v0.1.0
```