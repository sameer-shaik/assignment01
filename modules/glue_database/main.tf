resource "aws_glue_catalog_database" "lakeformation_db" {
    name = var.database_name
}