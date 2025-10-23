#!/bin/bash

echo "Installing Julia packages for ACE ASE calculator..."

julia -e '
using Pkg

# 1. Activate a new project in the current directory
# This creates Project.toml and Manifest.toml if they don'\''t exist.
Pkg.activate(".")

# 2. Install the packages into this new project
Pkg.add(name="AtomsCalculators", version="0.2.2")
Pkg.add(name="AtomsCalculatorsUtilities", version="0.1.5")
Pkg.add(name="AtomsBase", version="0.4.2")
Pkg.add(name="Unitful", version="1.21.0")
Pkg.add(name="PythonCall", version="0.9.22")
Pkg.add(url="https://github.com/wgst/NQCBase.jl.git")
Pkg.add(name="ACEpotentials", version="0.8.6")

# 3. Optional: Instantiate the project to make sure everything is resolved
Pkg.instantiate()
'

echo "Done"
