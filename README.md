# karate-action

[![api tests](https://github.com/erikbos/karate-action/actions/workflows/apitests.yml/badge.svg?branch=main)](https://github.com/erikbos/karate-action/actions/workflows/apitests.yml)

A GitHub Action to run [Karate](https://intuit.github.io/karate/) tests.

# Input parameters

| Input   | Description                                                                           |
| ------- | ------------------------------------------------------------------------------------- |
| url     | URL to pass as script variable to a feature test |
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

See [example api test workflow](.github/workflows/apitests.yml) which runs two Karate feature tests from the [example-tests](example-tests) directory.