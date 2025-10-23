#!/bin/bash
set -e

echo "Installing Julia packages for ACE ASE calculator..."

julia -e '
using Pkg
Pkg.add(name="AtomsCalculators", version="0.2.2")
Pkg.add(name="AtomsCalculatorsUtilities", version="0.1.5")
Pkg.add(name="AtomsBase", version="0.4.2")
Pkg.add(name="Unitful", version="1.21.0")
Pkg.add(name="PythonCall", version="0.9.22")
Pkg.add(url="https://github.com/wgst/NQCBase.jl.git")
'

echo "Done"
