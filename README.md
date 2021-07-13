# karate-action

A GitHub Action to run [Karate](https://intuit.github.io/karate/) based tests.


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

# Input parameters

| Input   | Description                                              |
| ------- | -------------------------------------------------------- |
| url     | Base URL to run tests against.                           |
| test    | One or more files or directories containing Karate tests |
| options | Any command line options to pass to Karate               |
