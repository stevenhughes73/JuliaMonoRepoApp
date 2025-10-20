# Julia Monorepo App

[![CI](https://github.com/stevenhughes73/JuliaMonoRepoApp/workflows/CI/badge.svg)](https://github.com/stevenhughes73/JuliaMonoRepoApp/actions)
[![codecov](https://codecov.io/gh/stevenhughes73/JuliaMonoRepoApp/branch/main/graph/badge.svg)](https://codecov.io/gh/stevenhughes73/JuliaMonoRepoApp)
[![Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://stevenhughes73.github.io/JuliaMonoRepoApp/)

A Star Wars themed Julia monorepo demonstration.

## Packages

- **TheForce** - Base package with core Force functionality
- **TheEmpire** - Sith lords and TIE fighters  
- **TheResistance** - Jedi and X-wing fighters
- **StarWarsApp** - Main application orchestrating epic battles

## Usage

```julia
using StarWarsApp
result = battle()  # Returns :resistance_wins
```

## Development

This monorepo demonstrates:
- Julia package development in monorepo structure
- Proper dependency management between local packages
- GitHub Actions CI/CD with coverage aggregation
- Reexporting patterns for clean user APIs