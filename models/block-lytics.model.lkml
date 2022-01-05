connection: "4mile_lytics"

include: "/views/**/*.view"

datagroup:lytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lytics_default_datagroup

explore: users {

  join: user_segments {
    relationship: one_to_many
    type: left_outer
    sql_on: ${users.id}=${user_segments.id} ;;
    fields: []
  }

  join: audience_definition {
    relationship: many_to_one
    type: left_outer
    sql_on:${user_segments.segment_slug} = ${audience_definition.slug} ;;
  }

  join: shopify_products {
    view_label: "Shopify Orders"
    type: left_outer
    relationship: one_to_many
    sql_on: ${users.email} = ${shopify_products.email} ;;
  }


}

explore: segment_overall {}
