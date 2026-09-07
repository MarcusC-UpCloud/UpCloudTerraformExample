data "upcloud_zone" "test" {
  name = "fi-hel1"
}

output "test_zone_id" {
  value = data.upcloud_zone.test.id
}