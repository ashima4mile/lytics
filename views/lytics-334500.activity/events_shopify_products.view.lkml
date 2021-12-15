# The name of this view in Looker is "Events Shopify Products"
view: events_shopify_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lytics-334500.activity.events_shopify_products`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Admin Graphql API ID" in Explore.

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}.admin_graphql_api_id ;;
  }

  dimension: body_html {
    type: string
    sql: ${TABLE}.body_html ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: image_admin_graphql_api_id {
    type: string
    sql: ${TABLE}.image_admin_graphql_api_id ;;
  }

  dimension: image_created_at {
    type: string
    sql: ${TABLE}.image_created_at ;;
  }

  dimension: image_height {
    type: string
    sql: ${TABLE}.image_height ;;
  }

  dimension: image_id {
    type: string
    sql: ${TABLE}.image_id ;;
  }

  dimension: image_position {
    type: string
    sql: ${TABLE}.image_position ;;
  }

  dimension: image_product_id {
    type: string
    sql: ${TABLE}.image_product_id ;;
  }

  dimension: image_src {
    type: string
    sql: ${TABLE}.image_src ;;
  }

  dimension: image_updated_at {
    type: string
    sql: ${TABLE}.image_updated_at ;;
  }

  dimension: image_width {
    type: string
    sql: ${TABLE}.image_width ;;
  }

  dimension: images_0_admin_graphql_api_id {
    type: string
    sql: ${TABLE}.images_0_admin_graphql_api_id ;;
  }

  dimension: images_0_created_at {
    type: string
    sql: ${TABLE}.images_0_created_at ;;
  }

  dimension: images_0_height {
    type: string
    sql: ${TABLE}.images_0_height ;;
  }

  dimension: images_0_id {
    type: string
    sql: ${TABLE}.images_0_id ;;
  }

  dimension: images_0_position {
    type: string
    sql: ${TABLE}.images_0_position ;;
  }

  dimension: images_0_product_id {
    type: string
    sql: ${TABLE}.images_0_product_id ;;
  }

  dimension: images_0_src {
    type: string
    sql: ${TABLE}.images_0_src ;;
  }

  dimension: images_0_updated_at {
    type: string
    sql: ${TABLE}.images_0_updated_at ;;
  }

  dimension: images_0_width {
    type: string
    sql: ${TABLE}.images_0_width ;;
  }

  dimension: images_1_admin_graphql_api_id {
    type: string
    sql: ${TABLE}.images_1_admin_graphql_api_id ;;
  }

  dimension: images_1_created_at {
    type: string
    sql: ${TABLE}.images_1_created_at ;;
  }

  dimension: images_1_height {
    type: string
    sql: ${TABLE}.images_1_height ;;
  }

  dimension: images_1_id {
    type: string
    sql: ${TABLE}.images_1_id ;;
  }

  dimension: images_1_position {
    type: string
    sql: ${TABLE}.images_1_position ;;
  }

  dimension: images_1_product_id {
    type: string
    sql: ${TABLE}.images_1_product_id ;;
  }

  dimension: images_1_src {
    type: string
    sql: ${TABLE}.images_1_src ;;
  }

  dimension: images_1_updated_at {
    type: string
    sql: ${TABLE}.images_1_updated_at ;;
  }

  dimension: images_1_width {
    type: string
    sql: ${TABLE}.images_1_width ;;
  }

  dimension: images_2_admin_graphql_api_id {
    type: string
    sql: ${TABLE}.images_2_admin_graphql_api_id ;;
  }

  dimension: images_2_created_at {
    type: string
    sql: ${TABLE}.images_2_created_at ;;
  }

  dimension: images_2_height {
    type: string
    sql: ${TABLE}.images_2_height ;;
  }

  dimension: images_2_id {
    type: string
    sql: ${TABLE}.images_2_id ;;
  }

  dimension: images_2_position {
    type: string
    sql: ${TABLE}.images_2_position ;;
  }

  dimension: images_2_product_id {
    type: string
    sql: ${TABLE}.images_2_product_id ;;
  }

  dimension: images_2_src {
    type: string
    sql: ${TABLE}.images_2_src ;;
  }

  dimension: images_2_updated_at {
    type: string
    sql: ${TABLE}.images_2_updated_at ;;
  }

  dimension: images_2_width {
    type: string
    sql: ${TABLE}.images_2_width ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ly_event_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ly_event_ts ;;
  }

  dimension_group: ly_receive_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ly_receive_ts ;;
  }

  dimension: options_0_id {
    type: string
    sql: ${TABLE}.options_0_id ;;
  }

  dimension: options_0_name {
    type: string
    sql: ${TABLE}.options_0_name ;;
  }

  dimension: options_0_position {
    type: string
    sql: ${TABLE}.options_0_position ;;
  }

  dimension: options_0_product_id {
    type: string
    sql: ${TABLE}.options_0_product_id ;;
  }

  dimension: options_0_values {
    type: string
    sql: ${TABLE}.options_0_values ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: published_at {
    type: string
    sql: ${TABLE}.published_at ;;
  }

  dimension: published_scope {
    type: string
    sql: ${TABLE}.published_scope ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: template_suffix {
    type: string
    sql: ${TABLE}.template_suffix ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: variants_0_admin_graphql_api_id {
    type: string
    sql: ${TABLE}.variants_0_admin_graphql_api_id ;;
  }

  dimension: variants_0_barcode {
    type: string
    sql: ${TABLE}.variants_0_barcode ;;
  }

  dimension: variants_0_created_at {
    type: string
    sql: ${TABLE}.variants_0_created_at ;;
  }

  dimension: variants_0_fulfillment_service {
    type: string
    sql: ${TABLE}.variants_0_fulfillment_service ;;
  }

  dimension: variants_0_grams {
    type: string
    sql: ${TABLE}.variants_0_grams ;;
  }

  dimension: variants_0_id {
    type: string
    sql: ${TABLE}.variants_0_id ;;
  }

  dimension: variants_0_image_id {
    type: string
    sql: ${TABLE}.variants_0_image_id ;;
  }

  dimension: variants_0_inventory_item_id {
    type: string
    sql: ${TABLE}.variants_0_inventory_item_id ;;
  }

  dimension: variants_0_inventory_management {
    type: string
    sql: ${TABLE}.variants_0_inventory_management ;;
  }

  dimension: variants_0_inventory_policy {
    type: string
    sql: ${TABLE}.variants_0_inventory_policy ;;
  }

  dimension: variants_0_inventory_quantity {
    type: string
    sql: ${TABLE}.variants_0_inventory_quantity ;;
  }

  dimension: variants_0_old_inventory_quantity {
    type: string
    sql: ${TABLE}.variants_0_old_inventory_quantity ;;
  }

  dimension: variants_0_option1 {
    type: string
    sql: ${TABLE}.variants_0_option1 ;;
  }

  dimension: variants_0_position {
    type: string
    sql: ${TABLE}.variants_0_position ;;
  }

  dimension: variants_0_price {
    type: string
    sql: ${TABLE}.variants_0_price ;;
  }

  dimension: variants_0_product_id {
    type: string
    sql: ${TABLE}.variants_0_product_id ;;
  }

  dimension: variants_0_requires_shipping {
    type: string
    sql: ${TABLE}.variants_0_requires_shipping ;;
  }

  dimension: variants_0_sku {
    type: string
    sql: ${TABLE}.variants_0_sku ;;
  }

  dimension: variants_0_taxable {
    type: string
    sql: ${TABLE}.variants_0_taxable ;;
  }

  dimension: variants_0_title {
    type: string
    sql: ${TABLE}.variants_0_title ;;
  }

  dimension: variants_0_updated_at {
    type: string
    sql: ${TABLE}.variants_0_updated_at ;;
  }

  dimension: variants_0_weight {
    type: string
    sql: ${TABLE}.variants_0_weight ;;
  }

  dimension: variants_0_weight_unit {
    type: string
    sql: ${TABLE}.variants_0_weight_unit ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, options_0_name]
  }
}
