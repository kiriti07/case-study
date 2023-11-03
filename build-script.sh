#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

# Print commands and their arguments as they are executed.
set -x

# Navigate to the directory where the repository code is checked out.
cd /var/lib/jenkins/workspace/website/

# Install Node.js dependencies defined in package.json.
npm install

# If you have tests, you can run them with:
# npm test

# If you need to compile/transpile your JavaScript (using Babel, TypeScript, etc.):
# npm run build

# Or if you're using a tool like webpack to bundle your assets:
# npm run webpack

# For CSS pre-processing with SASS/LESS:
# npm run compile-css

# Any other build steps specific to your project would go here.
