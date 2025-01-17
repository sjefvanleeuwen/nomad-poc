job "example" {
  datacenters = ["dc1"]

  group "example-group" {
    count = 1

    task "consumer" {
      driver = "exec"

      config {
        command = "/snap/dotnet-sdk/current/dotnet"
        args    = ["/mnt/c/source/nomad-poc/apis/bin/Debug/net8.0/apis.dll"]
      }

    }
  }
}
