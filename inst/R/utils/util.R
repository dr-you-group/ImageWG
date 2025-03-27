#Import
library(SqlRender)
library(dplyr) # for pipeline calculator

# Folder Create
folder_create <- function(folder_path_list) {
  for (folder_path in folder_path_list) { 
    if(!dir.exists(folder_path)) {
      dir.create(folder_path, recursive = TRUE)
      message("Created folder: ", folder_path)
    }
  }
  message("Process Done")
}

translate_sql_list <- function(sql, dbms_list = dbms_list) {
  result_list = list()
  
  for (dbm in dbms_list) {
    #Unify format for SqlRender's translate function
    dbm_for_translate = gsub("_", " ", dbm)
    tryCatch({
      result_list[[dbm]] = translate(sql, targetDialect = dbm_for_translate)
    }, error = function(e) {
      warning("Translation failed for dialect:", dbm)
    })
  }
  
  return(result_list)
}

save_sql_list <- function(dbms_list, folder_path_list, type, sql_list, overwrite=FALSE) {
  for (dbm in dbms_list) {
    folder_path <- folder_path_list[[dbm]]
    file_name <- paste0("MICDM_", dbm, "_5.4_", type, ".sql")
    file_path <- file.path(folder_path, file_name)
    if(!file.exists(file_path) || overwrite) {
      writeLines(sql_list[[dbm]], con = file_path)
      message("Saved to ", file_path)
    }
  }
  message("Process Done")
}
