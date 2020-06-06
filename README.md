# jekyll-github-projects-view

jekyll-github-projects-view is a customizable jekyll template that lets you display your GitHub repositories dynamically on your website

![Screenshot](screenshot.png "Example screenshot")

# How to set it up
## Step 1: Clone this repository
```
git clone https://github.com/yoshc/jekyll-github-projects-view.git
```
## Step 2: Set your Github username
Enter your username in ```fetch_github_data.sh```
## Step 3: Setup your CI/CD or load data manually
Your CI (Continuous integration) system or server should execute ```fetch_github_data.sh``` daily to pull new changes from your GitHub repositories.
A good way to do this is to use GitLab CI or GitHub Actions.
Alternatively, you can just pull them yourself and push them to your git repository:
```
chmod +x ./fetch_github_data && sh ./fetch_github_data.sh
git add ./_data/fetch/
git commit -m "Added github data"
git push
```
If you do it that way, you always have to execute it manually once you add a new repository.
### Easy way if you host your page via GitLab Pages:
Just use my .gitlab-ci.yml file and let GitLab CI do the rest.
## Step 4: Customize it how you want
Customize the number of shown repositories in ```_config.yml``` and change the colors how you want them in ```_sass/jekyll-github-projects-view-layout.scss```
