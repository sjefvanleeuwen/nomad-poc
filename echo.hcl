job "example" {
  datacenters = ["dc1"]

  group "example-group" {         # Task Group
    count = 1                     # Number of allocations

    task "test" {                 # Task inside the Task Group
      driver = "exec"

      config {
        command = "echo"
        args    = ["Hello, Nomad!"]
      }
    }
  }
}