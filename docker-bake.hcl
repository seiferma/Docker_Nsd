variable "VERSION" {
  default = "4.9.1-r0"
}

group "default" {
  targets = ["default"]
}

target "default" {
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/nsd:${VERSION}", "quay.io/seiferma/nsd:latest"]
  args = {
    VERSION = "${VERSION}"
  }
}
