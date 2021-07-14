# karate-action

A GitHub Action to run [Karate](https://intuit.github.io/karate/) based tests.

# Input parameters

| Input       | Description                                                                                                  |
| ----------- | ------------------------------------------------------------------------------------------------------------ |
| vars._name_ | One or more variables that will become Karata script variables. This can be used to pass enviroment or deployment specific parameters such as a url to test against |
| test        | One or more files or directories containing Karate tests                                                     |
| options     | Any command line options to pass to Karate                                                                   |

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
