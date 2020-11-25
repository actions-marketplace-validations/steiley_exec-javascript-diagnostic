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
      - uses: steiley/exec-javascript-diagnostic@v0.0.2
        with:
          package_name: stylelint
          target_path: "app/assets/**/*.sass"
          # optinal(use this when the package name is different from the executable command name)
          execute_command: stylelint
```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
