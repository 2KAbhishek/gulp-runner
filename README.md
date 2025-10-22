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

# Gulp Runner

This GitHub Action runs gulp tasks defined in your gulpfile.js.

## Usage

### Basic Usage (Run default task)

```yaml
name: Build

on:
  push:
    branches: [master]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      
      - name: Run Gulp
        uses: 2KAbhishek/gulp-runner@master
      
      - name: Commit changes
        run: |
          git config --local user.name  ${{ github.actor }}
          git add -A
          git commit -m "Update gulp output files" || echo "No changes to commit"
          
      - name: Push changes
        uses: ad-m/github-push-action@master
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```

### Run Specific Task

```yaml
- name: Run Gulp Task
  uses: 2KAbhishek/gulp-runner@master
  with:
    task: 'process-sass'
```

## Requirements

- Your repository must have a `package.json` file with gulp and required dependencies
- Your repository must have a `gulpfile.js` file defining your tasks

## Features

- Automatically installs npm dependencies
- Runs gulp tasks with proper error handling
- Shows detailed output for debugging
- Supports running specific tasks or default task

## Inputs

| Input | Description | Required | Default |
|-------|-------------|----------|---------|
| task | Gulp task to run | No | (runs default task) |

## Example with Multiple Steps

```yaml
steps:
  - uses: actions/checkout@v2
  
  - name: Run Gulp SASS Task
    uses: 2KAbhishek/gulp-runner@master
    with:
      task: 'process-sass'
  
  - name: Commit and Push
    run: |
      git config --local user.name  ${{ github.actor }}
      git config --local user.email "${{ github.actor }}@users.noreply.github.com"
      git add -A
      git commit -m "Build: Update compiled assets" || echo "No changes"
      git push
```

## Troubleshooting

### No output files generated

Make sure:
1. Your `package.json` includes all required gulp dependencies
2. Your `gulpfile.js` has properly defined tasks
3. Check the Action logs for any error messages

### Permission denied when pushing

Add appropriate permissions to your workflow:

```yaml
permissions:
  contents: write
```

Or use a Personal Access Token with repo scope.

