#!/bin/bash
set -e
codium --uninstall-extension vladstudio.vlad-studio-tiniri || true
rm vlad-studio-tiniri-*.vsix
vsce package
codium --install-extension vlad-studio-tiniri-*.vsix
