Abstraction Certification Provider Base
---------------------------------------
- This repository acts as a clean certification provider starting repository
- It includes all the supporting commands and structure to start certificate abstractions
- It will be updated properly so that the forward merges upgrade the forks/clones properly

Usage (very unpolished; parameters MUST match):

1. gitgetcommitdata.cmd <relative path to repository> 
Example: gitgetcommitdata.cmd ..\absInitializer

2. getsignkeys.cmd
- Use the 8-character ID after the "pub 2048R/" section in following command

3. signXwithKeyY.cmd <commit data file> <key id>
Example: signXwithKeyY.cmd 9c0ed5ea69f901be2f239415a125569365dde59d CBCAA6AC

Result: Signing results are placed in appropriate directories; working files are removed.