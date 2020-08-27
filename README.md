# exec-javascript-diagnostic

This Action can run JavaScrupt diagnostic tool(stylelint, ESLint, etc.).

This Action runs tools with the version specified in package.lock.<br>

# Usage

You need to specify package_name and target_path(wildcard characters are available).<br>

```yaml
name: stylelint

on:
  pull_request:
    branches:
    - master

jobs:
  execute:

    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2.3.2
      - uses: steiley/exec-javascript-diagnostic@master
        with:
          package_name: stylelint
          target_path: "app/assets/**/*.sass"
```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
