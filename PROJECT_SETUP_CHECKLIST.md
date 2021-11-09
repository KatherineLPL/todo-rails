# Project Setup Checklist
Checklist for setting up the Github repository, Heroku, and other integrations when starting a new project.

This checklist assumes that the new repo was created using `rails_template`.

## GitHub
- [ ] Create a new repo in GitHub under the LaunchPad organization (do not initialize with a README)
- [ ] Add the repo as origin (following [GitHub's instructions](https://help.github.com/en/articles/adding-a-remote)) and push the initial commit from the template

### Security
- [ ] Enable security alerts by following the link to "Settings" and checking the boxes for "Allow GitHub to perform read-only analysis of this repository" and "Security alerts"

### Settings

#### Options
  - [ ] Default to squash and merge behavior: Uncheck "allow merge commits" and "allow rebase merging"
  - [ ] Check "automatically delete head branches"

#### Branches
  - [ ] Set up `main`, `staging`, and `dev` branches
  - [ ] Set default branch to `dev`
  - [ ] Protect `main`, `staging`, and `dev` branches:
    - [ ] Require pull request reviews before merging
    - [ ] Require status checks to pass before merging

#### Collaborators
  - [ ] Grant the `LPL` team write access to the repository

## Integrations

### Sentry
  - [ ] Create new `Rails` project (add to LaunchPad Lab team)
  - [ ] Add Sentry DSN to `application.yml` as `SENTRY_URL`
    - [ ] If this file doesn't exist, follow [these instructions](https://github.com/LaunchPadLab/opensesame#opensesame)

### Travis
  - [ ] Confirm that repo has been added to [Travis CI](https://travis-ci.com/)
  - [ ] Add any required env vars to travis (as defined in `figaro.rb` initializer)

## Heroku

### Create New
  - [ ] Create pipeline
  - [ ] Add `<APP_NAME>-api-dev` app to pipeline in `development` stage (creating this stage requires an [extra step](https://devcenter.heroku.com/articles/pipelines#i-don-t-see-a-development-stage-how-do-i-add-a-development-app))
    - [ ] Set to automatically deploy on push to `dev` branch
  - [ ] Add `<APP_NAME>-api-staging` environment app to pipeline
    - [ ] Set `staging` to automatically deploy on push to `staging`
  - [ ] Add `<APP_NAME>-api-production` environment app to pipeline `production` stage
  - [ ] Enable Review Apps for pipeline. Choose to inherit configs from `staging` app and select to create for PRs, and destroy stale review apps after 5 days.
  - [ ] Optional: Add remotes to local (`git remote add dev <https:…>`)

### Add-ons
  - [ ] Add [New Relic](https://elements.heroku.com/addons/newrelic) add-on to production app
  - [ ] Add [Papertrail](https://elements.heroku.com/addons/papertrail) add-on to production app

### Access
  - [ ] Add admins and collaborators to Heroku pipeline as needed

### Settings
  - [ ] Add config vars from `application.yml` to the respective environment app (`figaro` provides [built-in functionality](https://github.com/laserlemon/figaro#heroku) for this)
