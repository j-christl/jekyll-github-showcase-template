# -- Variables section --
# You have to set the following variable accordingly:
USERNAME="yoshc"
# -- End of Variables section --
# -- (do not edit below here) --

URL1="https://api.github.com/users/$USERNAME"
URL2="$URL1/repos"

echo "Fetching github_profile.json from $URL1"
curl $URL1 > ./_data/fetch/github_profile.json
echo "Fetching github_repos.json from $URL2"
curl $URL2 > ./_data/fetch/github_repos.json
