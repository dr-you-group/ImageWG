#Installation
##install.packages("SqlRender")
##install.packages("remotes")
##remotes::install_github("ohdsi/SqlRender", ref="develop")

#Import
library(SqlRender)
library(dplyr) # for pipeline calculator
source("utils/util.R")

#Folder Setting
common_folder_path <- "C:/ImageWG/inst/ddl/5.4"
# 지원하는 DBMS 리스트
dbms_list <- c(
  "bigquery", "duckdb", "hive", "impala", "netezza",
  "oracle", "pdw", "postgresql", "redshift", "snowflake",
  "spark", "sql_server", "sqlite", "sqlite_extended",
  "synapse"
)
folder_path_list <- setNames(
  lapply(dbms_list, function(db) file.path(common_folder_path, db)),
  dbms_list
)
folder_create(folder_path_list)

sql_server_folder_path <- folder_path_list[['sql_server']]
## Original SQL
sql_server_ddl <- readLines(file.path(sql_server_folder_path, "MICDM_sql_server_5.4_ddl.sql")) %>%
  paste(collapse = "\n") %>%
  render()
sql_server_primary_keys <- readLines(file.path(sql_server_folder_path, "MICDM_sql_server_5.4_primary_keys.sql")) %>%
  paste(collapse = "\n") %>%
  render()
sql_server_constraints <- readLines(file.path(sql_server_folder_path, "MICDM_sql_server_5.4_constraints.sql")) %>%
  paste(collapse = "\n") %>%
  render()
sql_server_indices <- readLines(file.path(sql_server_folder_path, "MICDM_sql_server_5.4_indices.sql")) %>%
  paste(collapse = "\n") %>%
  render()



