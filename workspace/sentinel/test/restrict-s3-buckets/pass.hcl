// cd /root/workspace/sentinel
// sentinel test --verbose

mock "tfplan/v2" {
  module {
    source = "../../mocks/mock-tfplan-v2-pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
