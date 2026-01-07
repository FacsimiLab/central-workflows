# CHANGELOG


## v0.1.0 (2026-01-07)

### Bug Fixes

- Add github ssh host keys
  ([`6bf8cf6`](https://github.com/FacsimiLab/central-workflows/commit/6bf8cf6d04a7415c15e20ddbde0086ff0c74f40d))

- Apply similar changes for root options to release.yml (renamed from cd.yml)
  ([`d2ed924`](https://github.com/FacsimiLab/central-workflows/commit/d2ed924c99120baeb7e836228c5ca9fe5e26c0ef))

- Break root options output to a separate step
  ([`8494c33`](https://github.com/FacsimiLab/central-workflows/commit/8494c3328f236a728d68100b2636f3af41214799))

- Changelog generation on worktree
  ([`2f36728`](https://github.com/FacsimiLab/central-workflows/commit/2f367282146f94c506b2489ec1b086c6f2ed780c))

- Close quote
  ([`cee08e0`](https://github.com/FacsimiLab/central-workflows/commit/cee08e018c6e1fe713a83895e226944f7fb7cb28))

- Comment line; cleanup after git push
  ([`0e5f0d3`](https://github.com/FacsimiLab/central-workflows/commit/0e5f0d3e94eac6c8e288a9d439d156c7dad5f604))

- Consolidate Python Semantic Release steps
  ([`ee463d8`](https://github.com/FacsimiLab/central-workflows/commit/ee463d8a7fb2d4e8198569b051803fb606bf345f))

Removed separate semantic release steps for main and non-main branches, consolidating them into a
  single step.

- Convert from HTTPS to SSH git remote url
  ([`4363e55`](https://github.com/FacsimiLab/central-workflows/commit/4363e550d291e1b803ddcd0a56ab10db589e9009))

- Convert from HTTPS to SSH git remote url
  ([`8a99d1d`](https://github.com/FacsimiLab/central-workflows/commit/8a99d1d52e9deb0e3d0a66b15995cc5373502274))

- Force push
  ([`b2f65a4`](https://github.com/FacsimiLab/central-workflows/commit/b2f65a454013cffff3ba4f940ab484df994ddbe8))

- Get the sha, not the branch name, for the latest commit
  ([`3f4d151`](https://github.com/FacsimiLab/central-workflows/commit/3f4d1515d38705a519e0b7596e7725226197bf4e))

- Have workflows checkout central-workflows repo's scripts directory
  ([`d69e102`](https://github.com/FacsimiLab/central-workflows/commit/d69e102ed80d1d8fff5805e6a27faad614378640))

- If an SSH key is not provided, skip SSH setup steps
  ([`c25f085`](https://github.com/FacsimiLab/central-workflows/commit/c25f08525e586d93caabc8c6724a684f506eb1ea))

- Init a changelog if it doesn't exist
  ([`48eb668`](https://github.com/FacsimiLab/central-workflows/commit/48eb668b7657d2bbed13010999565bfc79f2d43d))

- Log_file env variable
  ([`a4e7965`](https://github.com/FacsimiLab/central-workflows/commit/a4e7965b3ae58bc00a765c946c4d4849c016f883))

- Move the reusable workflows inside of the github workflows folder, as it throws an error on GitHub
  otherwise
  ([`a04102a`](https://github.com/FacsimiLab/central-workflows/commit/a04102a47047cb64cd00b3cb30f49271dfe17be8))

- Only attempt a merge to main from the release branch
  ([`bb3f1e8`](https://github.com/FacsimiLab/central-workflows/commit/bb3f1e81e51d01e869917f5f66ef6afe1a60fcbc))

- Outputs to GitHub step summary in quarto-render.sh
  ([`4958327`](https://github.com/FacsimiLab/central-workflows/commit/49583277596c02afda14115b8baef44d2fcf3e82))

- Path for setup-venv.sh
  ([`7514360`](https://github.com/FacsimiLab/central-workflows/commit/75143609509be38256f5f29927660bcbf00b7699))

- Paths to scripts
  ([`552249e`](https://github.com/FacsimiLab/central-workflows/commit/552249e1c9bb96f458cb84f9c86f8be50bfc5a8e))

- Quote
  ([`438dff4`](https://github.com/FacsimiLab/central-workflows/commit/438dff4a247c81634d550e9c25620a60d17d2a11))

- Quotes
  ([`a418114`](https://github.com/FacsimiLab/central-workflows/commit/a4181147fa5e8dbaba295e6424b7be77ce1543f5))

- Rebase the gh-pages branch before committing and pushing
  ([`1604f9e`](https://github.com/FacsimiLab/central-workflows/commit/1604f9e8bf27c240b047847085e8538fca776475))

- Reference to correct ci/cd workflow files
  ([`13520a8`](https://github.com/FacsimiLab/central-workflows/commit/13520a83a2f06d85b02b875bfe2b6723af1a2b2f))

- Release.yml is updated with the code from ci.yml
  ([`efbadbf`](https://github.com/FacsimiLab/central-workflows/commit/efbadbf33a0e6f42f6cc3870d215b620f5b38da1))

- Remove commitlint
  ([`42dd4b2`](https://github.com/FacsimiLab/central-workflows/commit/42dd4b2a76465557c17ddbebea22fdee0288891c))

- Remove log gitignore file and add global gitignore; remove log file creation from script
  ([`7d48426`](https://github.com/FacsimiLab/central-workflows/commit/7d48426368c08b09d7abb8384924ab918c3a6ebd))

- Remove pages permission
  ([`82ce732`](https://github.com/FacsimiLab/central-workflows/commit/82ce73245bece82670756198b68a133d30181fa2))

- Remove quotes from the root_options input in reusable workflows
  ([`6a018ed`](https://github.com/FacsimiLab/central-workflows/commit/6a018ed4d920f99d67eabeeeac015dd65e6fc5aa))

- Remove the "update-main" job from release, as this should be moved into a separate workflow WIP
  ([`0ad9df5`](https://github.com/FacsimiLab/central-workflows/commit/0ad9df57a6a304e1b3e108550c80db5de25095a6))

- Remove workflow summary
  ([`2019368`](https://github.com/FacsimiLab/central-workflows/commit/2019368d50547eb220d6e62652fbf2abf76636b0))

- Script path
  ([`52f75d6`](https://github.com/FacsimiLab/central-workflows/commit/52f75d6fecad166bce50f3445dba4f28541cf776))

- Secrets name change in self workflows
  ([`615aaea`](https://github.com/FacsimiLab/central-workflows/commit/615aaeac48e01a5d039f9968fa439504767ac3b2))

- Setup of python matrix versions and workflow call inputs
  ([`68737bc`](https://github.com/FacsimiLab/central-workflows/commit/68737bc20ebb20e6e2a96cb85607beabd74cb356))

- Show the line which failed
  ([`3f3aae9`](https://github.com/FacsimiLab/central-workflows/commit/3f3aae9d95977cdadc463f6aabea6334f6a015eb))

- Spelling
  ([`c042084`](https://github.com/FacsimiLab/central-workflows/commit/c042084c19a21c0fe2d24ce88966cbcb1037d967))

- Split updating the main branch into a separate job, since the docker container does not have
  access to the repo url
  ([`a2fd6bb`](https://github.com/FacsimiLab/central-workflows/commit/a2fd6bb7b3b203475bece9537115825ead5bb76b))

- Ssh agent
  ([`ac893a5`](https://github.com/FacsimiLab/central-workflows/commit/ac893a5c6696df527159e20952efe88781716591))

- Update secret variable names and also bump actions/checkout to v5
  ([`7b4e985`](https://github.com/FacsimiLab/central-workflows/commit/7b4e985039997b3934ad5b9b020e9febc86a4af9))

- Updating main branch logic
  ([`e08a771`](https://github.com/FacsimiLab/central-workflows/commit/e08a771f31b32a07dbdc154fbb9aac8659a9cdbd))

- Use actions checkout@v6.0.1
  ([`892dc9d`](https://github.com/FacsimiLab/central-workflows/commit/892dc9df1ca11c1068056a1912a5e8e0bda17c5e))

- Use https not ssh for the remote
  ([`00b1b35`](https://github.com/FacsimiLab/central-workflows/commit/00b1b351f1288591ef93c9807690956900587aa4))

- Use hypthens rather than underscores
  ([`e438f8a`](https://github.com/FacsimiLab/central-workflows/commit/e438f8afe5ed1414653e99d06f9dacb9f45ac553))

- Use the origin branch
  ([`43b5e7b`](https://github.com/FacsimiLab/central-workflows/commit/43b5e7b1d7258afac564be0e4c9429557dc2a999))

- Use the SSH key validation pattern found in ci.yml
  ([`f46fe17`](https://github.com/FacsimiLab/central-workflows/commit/f46fe17159825f56b855c6d816afb049a89f12d5))

- Use token for push
  ([`0b7ccdc`](https://github.com/FacsimiLab/central-workflows/commit/0b7ccdc29ec3dbdc6aad61950d82d08bcaae560b))

- Workflow output and commit message improvements
  ([`a78755a`](https://github.com/FacsimiLab/central-workflows/commit/a78755a0e6e6ef6f73a92ebbace4a042d8773e05))

- Workflow summary
  ([`0075c3d`](https://github.com/FacsimiLab/central-workflows/commit/0075c3d8e6425215e2ce53c57afb40f1d6fbbbc0))

- Workflows must be defined at the top level of the .github/workflows/ directory
  ([`796aa7d`](https://github.com/FacsimiLab/central-workflows/commit/796aa7d0a81a99086c46bcccfcf7bf502c693d56))

### Chores

- Move scripts respective subdirectories
  ([`6fa1e74`](https://github.com/FacsimiLab/central-workflows/commit/6fa1e74242815554d6ed235f501d0e9e7a643ca4))

- Move the reusable workflows outside of the .github directory. This one should only be used for
  'self' actions, meaning acting on facsimilab/central-workflows itself. They can also serve as a
  reference and as a test.
  ([`26167e4`](https://github.com/FacsimiLab/central-workflows/commit/26167e4587731345a4c262a0843162b4805a5bbc))

- Rename self to demo
  ([`78e23e4`](https://github.com/FacsimiLab/central-workflows/commit/78e23e46d015a0202792feba72035824179a74ab))

### Code Style

- Specify nature of changelog creation
  ([`71d8d1f`](https://github.com/FacsimiLab/central-workflows/commit/71d8d1fcb9b7a2ed8ca6e704b20792aa575a3bce))

- Split into two steps
  ([`c939d2a`](https://github.com/FacsimiLab/central-workflows/commit/c939d2adbe93892fb51b8d2f86bbf739b621ff6b))

### Continuous Integration

- Add additional conditions to psr branching
  ([`b793045`](https://github.com/FacsimiLab/central-workflows/commit/b79304575b6f3d5aef92cd95f9a3c2a6d62c9480))

- Add git config from inputs and an included path
  ([`c4c780f`](https://github.com/FacsimiLab/central-workflows/commit/c4c780f27f880e61ab3a4a30c0c4359e3cc6b534))

- Add LOG_FILE env variable and include log in summary
  ([`182f0e1`](https://github.com/FacsimiLab/central-workflows/commit/182f0e1cba58ed4693269dc021b008779de4500c))

- Add logger file to github step summary
  ([`4448d19`](https://github.com/FacsimiLab/central-workflows/commit/4448d19a460762e297128ae2e06a24ba47c0d2e9))

- Fix do not append but overwrite
  ([`ca358f2`](https://github.com/FacsimiLab/central-workflows/commit/ca358f2c19efa863ddf90efd894a01c15170b701))

- Remove token requirement
  ([`4d7cde9`](https://github.com/FacsimiLab/central-workflows/commit/4d7cde9aa6e2424b8a52d4154a2f0a3af20234b2))

- Update to use the new log-worktree script
  ([`baab084`](https://github.com/FacsimiLab/central-workflows/commit/baab0845efe8224f95331a9cc5a959365c772cdd))

### Documentation

- Add demo ci/cd badges
  ([`b6a03b9`](https://github.com/FacsimiLab/central-workflows/commit/b6a03b9276b083272ace8f86f2d86301e7ca931f))

- Add note on changelog location
  ([`c90be37`](https://github.com/FacsimiLab/central-workflows/commit/c90be37e2aa1df2b4fcaab33a48f389d478b36d6))

- Add note on changelog location
  ([`bf471cd`](https://github.com/FacsimiLab/central-workflows/commit/bf471cddb8f850a38c379a90ae74bfe5707e029a))

- Init changelog
  ([`0721f3e`](https://github.com/FacsimiLab/central-workflows/commit/0721f3e20abd7f87498ea0313cb97ed81e3bebc2))

- Update license
  ([`9636ac2`](https://github.com/FacsimiLab/central-workflows/commit/9636ac2f3bdeb11068664f476204fe6790d0a247))

### Features

- Add a build parameter
  ([`95413ca`](https://github.com/FacsimiLab/central-workflows/commit/95413ca3913cbe91e6023ecb852ffda467ae56e0))

- Add a build parameter to cd
  ([`88c6aa4`](https://github.com/FacsimiLab/central-workflows/commit/88c6aa4743e04ce6c25778188d06157cc4939504))

- Add additional inputs to cd
  ([`6293c32`](https://github.com/FacsimiLab/central-workflows/commit/6293c32efa8a3428cdbd3ab58ea6902344669fd8))

- Add additional inputs to the workflow
  ([`1af49c8`](https://github.com/FacsimiLab/central-workflows/commit/1af49c814ccb12962c72af68ce0d499256992b0a))

- Add bash-logger.sh from pranavmishra90/dotfiles
  ([`e55c30c`](https://github.com/FacsimiLab/central-workflows/commit/e55c30ca00cdc82ff6c71e9893400cdae30ad35b))

- Add ci and cd workflows
  ([`a1af311`](https://github.com/FacsimiLab/central-workflows/commit/a1af31129138ac246c6547db421b6d8e8d7f04d5))

- Add GitHub Actions extension recommendation
  ([`16e40f8`](https://github.com/FacsimiLab/central-workflows/commit/16e40f842331bc5a6638d6d204ece8b857a30ec0))

- Add GitHub Actions workflow for Python tests
  ([`37e9961`](https://github.com/FacsimiLab/central-workflows/commit/37e9961be7f12f7a6b72548542d990dd4761f6b9))

- Add GitHub Actions workflow for Python tests
  ([`836364b`](https://github.com/FacsimiLab/central-workflows/commit/836364bcba92c674d1d7df8590621cbbde245092))

- Add pyproject.toml for ci/cd
  ([`575db56`](https://github.com/FacsimiLab/central-workflows/commit/575db5688f83e3993e11d5b33985dd56bd8705a1))

- Add quarto render workflow
  ([`25e60f2`](https://github.com/FacsimiLab/central-workflows/commit/25e60f2257f5883bc722e58df2d8228e687327e8))

- Add README for Central Workflows
  ([`67c1cd5`](https://github.com/FacsimiLab/central-workflows/commit/67c1cd5ffeddf07d988fdda7eb819023b71fc075))

- Add script to create a git worktree for the log branch, init it if it doesnt exist, and copy the
  change log there
  ([`488da25`](https://github.com/FacsimiLab/central-workflows/commit/488da252d6cbfe7715864e4e0fcdf580d100e6d6))

- Add the bash logger functionality
  ([`2da4bef`](https://github.com/FacsimiLab/central-workflows/commit/2da4bef84a17644173d4702ff8adc839664185bb))

- Add workflows for this repository as a test
  ([`364d83f`](https://github.com/FacsimiLab/central-workflows/commit/364d83fba6132482414d30bc8f340de26b0c92fc))

- Attempt to use a render.py file if it exists within the repo; else use the quarto-render.sh from
  the central-workflows
  ([`e9a87cb`](https://github.com/FacsimiLab/central-workflows/commit/e9a87cbc897f32f8c7be2faf4d68177106237454))

- Bump actions/checkout v5 to v6
  ([`4b7410a`](https://github.com/FacsimiLab/central-workflows/commit/4b7410a14b49d751af8da329269dce079282260f))

- Check for PSR config file (pyproject.toml or releaserc.toml) and use it if found
  ([`8a663b1`](https://github.com/FacsimiLab/central-workflows/commit/8a663b1488a24e8a80d3411408f267581582f9da))

- Cleanup the temp directories for quarto before rendering, ensuring a clean build
  ([`f7b11ba`](https://github.com/FacsimiLab/central-workflows/commit/f7b11ba1b241e80d8f538a978a0467347ad8a1e3))

- Include the readme and changelog in gh-pages site
  ([`19ec46d`](https://github.com/FacsimiLab/central-workflows/commit/19ec46daabb4823fff217923228b3f454d16ac1c))

- List and delete pre-release tags
  ([`a840d64`](https://github.com/FacsimiLab/central-workflows/commit/a840d647986e2129f21ce88f7272ccfaf6fc7175))

- Pass in the ${{ inputs['quarto-output-dir'] }} to specify which directory should be used for
  gh-pages
  ([`a5db1e8`](https://github.com/FacsimiLab/central-workflows/commit/a5db1e8df7ff45f3823ef58b61eec75fea3c0300))

- Test for the presence of SSH keys before setting up SSH agent
  ([`966c368`](https://github.com/FacsimiLab/central-workflows/commit/966c3685ad8318284a1cd5ded8d438d80d305424))

- Update ci/cd including quarto render with called scripts
  ([`bbc59e9`](https://github.com/FacsimiLab/central-workflows/commit/bbc59e919274f9d55bba73cee791e2704b28cb4a))

- Wip test manual way of setting up ssh-agent with graceful handling of missing keys
  ([`5a283bd`](https://github.com/FacsimiLab/central-workflows/commit/5a283bd86c0fd4417fac0500fd82a03d263a704c))

### Refactoring

- Rename jobs
  ([`0072e17`](https://github.com/FacsimiLab/central-workflows/commit/0072e17ddab374c13112e1447aa928d6a2b0874a))
