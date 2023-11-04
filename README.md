# CairoRegistry

## Description
CairoRegistry is a simple decentralized application (dApp) that allows users to register their names on the StarkWare blockchain. It's built using the Cairo language, optimized for ZK-STARK proofs.

## Features
- Decentralized user registration
- Simple and efficient contract built in Cairo
- Ready to be integrated with frontend applications

## Setup and Deployment

### Prerequisites
1. Cairo compiler
2. StarkWare blockchain node or access to one

### Steps
1. Clone this repository.
   ```bash
   git clone https://github.com/yourgithubusername/CairoRegistry.git
   ```

2. Navigate to the directory and compile the Cairo contract.
  ```bash
  cd CairoRegistry
  cairo-compile registry.cairo --output registry_compiled.json
  ```

3. Deploy the compiled contract to the StarkWare blockchain. You'd typically use StarkWare's deployment tools or integrations for this.

4. Integrate with your preferred frontend framework to interact with the contract.

### Usage
**To register a user:**
Call the register_user function in the contract with the desired name as the parameter. The function will return a success or error code based on the registration's result.
