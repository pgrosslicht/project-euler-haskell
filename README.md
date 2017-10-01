# ProjectEuler [![Build Status](https://img.shields.io/travis/pgrosslicht/project-euler-haskell.svg)](https://travis-ci.org/pgrosslicht/project-euler-haskell)

Here are my ProjectEuler problem solutions written in Haskell. Bear in mind that I'm currently a Haskell novice, so the solutions might not be according to best practices. Pull requests for existing solutions are very welcome.

Travis CI automatically builds and checks the solutions. To manually execute the complete test suite use 
```bash
stack test
```

To calculate the solution for a specific problem, use: 
```bash
stack exec ProjectEuler -- $PROBLEM_NUMBER
```