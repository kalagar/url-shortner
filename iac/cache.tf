resource "aws_elasticache_serverless_cache" "urls_cache" {
  engine = "redis"
  name   = "urls"
  cache_usage_limits {
    data_storage {
      maximum = 1
      unit    = "GB"
    }
    ecpu_per_second {
      maximum = 5000
    }
  }
  description          = "URLs cache"
  major_engine_version = "7"
}
