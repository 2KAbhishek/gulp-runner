<div align = "center">

<h1><a href="https://2kabhishek.github.io/gulp-runner">gulp-runner</a></h1>

<a href="https://github.com/2KAbhishek/gulp-runner/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/gulp-runner?style=flat&color=eee&label="> </a>

<a href="https://github.com/2KAbhishek/gulp-runner/graphs/contributors">
<img alt="People" src="https://img.shields.io/github/contributors/2kabhishek/gulp-runner?style=flat&color=ffaaf2&label=People"> </a>

<a href="https://github.com/2KAbhishek/gulp-runner/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/gulp-runner?style=flat&color=98c379&label=Stars"></a>

<a href="https://github.com/2KAbhishek/gulp-runner/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/gulp-runner?style=flat&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/gulp-runner/watchers">
<img alt="Watches" src="https://img.shields.io/github/watchers/2kabhishek/gulp-runner?style=flat&color=f5d08b&label=Watches"> </a>

<a href="https://github.com/2KAbhishek/gulp-runner/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/2kabhishek/gulp-runner?style=flat&color=e06c75&label="> </a>

</div>

Gulp Runner

This github action will run default tasks mentioned in a gulp file and then commit the changes.

## Requirements

Add a secret named `REPO_GITHUB_TOKEN` to your repo for pushing updated changes.

## Customization

In your repo's `.github/workflows/main.yml` file `paths` can be customized.

### More customizations

For custom commit messgaes, fork the repo, In the `.github/workflows/gulp-runner.yml` commit messages can be customized.

