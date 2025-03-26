# opellamodules
Modules for Opella test

## Modules
The easiest way to reuse terraform code in different environments are modules. We can reuse them, or even point to a different branch/version of the module if we need a specific/modified version of it for a specific purpose. 
That is why we have declared the basic variables and outputs needed for this test. And the real values will be assigned in the root .tf, where we will be calling via source our modules. 
