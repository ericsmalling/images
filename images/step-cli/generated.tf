# DO NOT EDIT - this file is autogenerated by tfgen

output "summary" {
  value = merge(
    {
      basename(path.module) = {
        "ref"    = module.step-cli.image_ref
        "config" = module.step-cli.config
        "tags"   = ["latest"]
      }
  })
}

