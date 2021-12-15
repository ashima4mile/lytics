# The name of this view in Looker is "Events Shopify Users"
view: events_shopify_users {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lytics-334500.activity.events_shopify_users`
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
  # This dimension will be called "Accepts Marketing" in Explore.

  dimension: accepts_marketing {
    type: string
    sql: ${TABLE}.accepts_marketing ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: default_address_address1 {
    type: string
    sql: ${TABLE}.default_address_address1 ;;
  }

  dimension: default_address_address2 {
    type: string
    sql: ${TABLE}.default_address_address2 ;;
  }

  dimension: default_address_city {
    type: string
    sql: ${TABLE}.default_address_city ;;
  }

  dimension: default_address_country {
    type: string
    sql: ${TABLE}.default_address_country ;;
  }

  dimension: default_address_country_code {
    type: string
    sql: ${TABLE}.default_address_country_code ;;
  }

  dimension: default_address_default {
    type: string
    sql: ${TABLE}.default_address_default ;;
  }

  dimension: default_address_first_name {
    type: string
    sql: ${TABLE}.default_address_first_name ;;
  }

  dimension: default_address_id {
    type: string
    sql: ${TABLE}.default_address_id ;;
  }

  dimension: default_address_last_name {
    type: string
    sql: ${TABLE}.default_address_last_name ;;
  }

  dimension: default_address_name {
    type: string
    sql: ${TABLE}.default_address_name ;;
  }

  dimension: default_address_phone {
    type: string
    sql: ${TABLE}.default_address_phone ;;
  }

  dimension: default_address_province {
    type: string
    sql: ${TABLE}.default_address_province ;;
  }

  dimension: default_address_province_code {
    type: string
    sql: ${TABLE}.default_address_province_code ;;
  }

  dimension: default_address_zip {
    type: string
    sql: ${TABLE}.default_address_zip ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_order_name {
    type: string
    sql: ${TABLE}.last_order_name ;;
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

  dimension: orders_count {
    type: string
    sql: ${TABLE}.orders_count ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: tax_exempt {
    type: string
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: total_spent {
    type: string
    sql: ${TABLE}.total_spent ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: verified_email {
    type: string
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_order_name,
      first_name,
      last_name,
      default_address_first_name,
      default_address_last_name,
      default_address_name
    ]
  }
}
