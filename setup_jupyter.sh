#!/bin/bash

# Install Jupyter Notebook
pip install jupyter

# Install nbextensions
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user

# List of extensions to enable
extensions=(
    "codefolding/main"
    "collapsible_headings/main"
    "scratchpad/main"
    "hinterland/hinterland"
    # Add more extensions here
)

# Enable the extensions
for ext in "${extensions[@]}"; do
    jupyter nbextension enable $ext
done

echo "Jupyter and specified nbextensions installed and enabled."

