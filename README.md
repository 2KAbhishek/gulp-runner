
# gulp-runner

![Size](https://img.shields.io/github/repo-size/2kabhishek/gulp-runner?style=plastic&color=0f0&label=Size)
![Updated](https://img.shields.io/github/last-commit/2kabhishek/gulp-runner?style=plastic&color=f00&label=Updated)
![Stars](https://img.shields.io/github/stars/2kabhishek/gulp-runner?style=plastic&color=ffc801&label=Stars)
![Forks](https://img.shields.io/github/forks/2kabhishek/gulp-runner?style=plastic&color=003cff&label=Forks)
![Watchers](https://img.shields.io/github/watchers/2kabhishek/gulp-runner?style=plastic&color=ff5500&label=Watchers)
![Contributors](https://img.shields.io/github/contributors/2kabhishek/gulp-runner?style=plastic&color=f0f&label=Contributors)
![License](https://img.shields.io/github/license/2kabhishek/gulp-runner?style=plastic&color=555&label=License)

Gulp Runner

This github action will run default tasks mentioned in a gulp file and then commit the changes.

## Customization

In the `.github/workflows/gulp-runner.yml` file `paths` and commit messages can be customized.
Add a secret named `REPO_GITHUB_TOKEN` to your repo for pushing updated changes.
