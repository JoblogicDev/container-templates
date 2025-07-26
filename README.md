# Dev Container Templates

This repository contains custom development container templates that can be used to quickly set up development environments.

## Templates

### my-template

A customizable development container template with common tools and languages.

**Features:**
- Configurable Node.js and Python versions
- Git, Docker-in-Docker support
- Optional PostgreSQL database
- VS Code extensions pre-configured

**Options:**
- `nodeVersion`: Node.js version (18, 20, lts)
- `pythonVersion`: Python version (3.9, 3.10, 3.11, 3.12)
- `includeDatabase`: Include PostgreSQL database service

## Usage

### With Dev Container CLI

```bash
devcontainer templates apply --workspace-folder . \
    --template-id ghcr.io/yourusername/your-repo/my-template:latest \
    --template-args '{ "nodeVersion": "lts", "pythonVersion": "3.11", "includeDatabase": false }'
```

### With VS Code

1. Open Command Palette (`Ctrl+Shift+P`)
2. Run "Dev Containers: Add Dev Container Configuration Files..."
3. Select "Show All Definitions"
4. Search for your template

## Publishing

To publish these templates to GitHub Container Registry:

1. Build and push the template:
```bash
devcontainer templates publish --registry ghcr.io --namespace yourusername/your-repo .
```

## Testing

Run tests for all templates:
```bash
devcontainer templates test --template-id my-template .
```