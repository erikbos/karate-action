# karate-action

[![api tests](https://github.com/erikbos/karate-action/actions/workflows/apitests.yml/badge.svg)](https://github.com/erikbos/karate-action/actions/workflows/apitests.yml)

A GitHub Action to run [Karate](https://intuit.github.io/karate/) based tests.

# Input parameters

| Input   | Description                                                                           |
| ------- | ------------------------------------------------------------------------------------- |
| url     | URL to pass as script variable, to pass an environment specific url to a feature test |
| test    | One or more files or directories containing Karate tests                              |
| options | Any command line options to pass to Karate                                            |

# Example step

```yaml
steps:
- name: Checkout
    uses: actions/checkout@v2.0.0

- name: API tests
    uses: erikbos/karate-action@main
    with:
      url: https://api.isevenapi.xyz/api/
      tests: |
        example-tests/even-numbers.feature
        example-tests/odd-numbers.feature
```

# Example workflow

See[workflow](.github/workflows/apitests.yml) which configured to run two Karate feature tests from the [example-tests](example-tests) directory.