connection: "bq-rgc-demos"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: config_explore_assistant_01_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: config_explore_assistant_01_default_datagroup

explore: invoices {}

explore: invoices_view {}

