view: users {

  sql_table_name: @{LYTICS_CONNECTION}.@{LYTICS_AUDIENCE_SCHEMA}.user_all
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }




  dimension_group: _created {
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
    sql: ${TABLE}._created ;;
  }


  dimension: _deleted {
    type: yesno
    sql: ${TABLE}._deleted ;;
  }



  dimension_group: _last_scored {
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
    sql: ${TABLE}._last_scored ;;
  }

  dimension: _max_traversals {
    type: yesno
    sql: ${TABLE}._max_traversals ;;
  }

  dimension_group: _modified {
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
    sql: ${TABLE}._modified ;;
  }

  dimension: _num_aliases {
    type: number
    hidden: yes
    sql: ${TABLE}._num_aliases ;;
  }

  dimension: _num_conflicts {
    type: number
    hidden: yes
    sql: ${TABLE}._num_conflicts ;;
  }

  dimension: _num_days {
    type: number
    hidden: yes
    sql: ${TABLE}._num_days ;;
  }

  dimension: _num_events {
    type: number
    hidden: yes
    sql: ${TABLE}._num_events ;;
  }


  dimension: _num_streams {
    type: number
    hidden: yes
   sql: ${TABLE}._num_streams ;;
  }

  dimension: _uid {
    type: string
    hidden: yes
    sql: ${TABLE}._uid ;;
  }

  dimension: address_1 {
    type: string
    group_label: "Address"
    sql: ${TABLE}.address_1 ;;
  }

  dimension: address_2 {
    type: string
    group_label: "Address"
    sql: ${TABLE}.address_2 ;;
  }

  dimension: age {
    type: number
    group_label: "Personal Details"
    sql: ${TABLE}.age ;;
  }


  dimension: city {
    type: string
    group_label: "Address"
   sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    group_label: "Address"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: cvt_currency {
    type: string
    group_label: "CVT"
   sql: ${TABLE}.cvt_currency ;;
  }

  dimension_group: cvt_first {
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
    sql: ${TABLE}.cvt_first_time ;;
  }

  dimension: cvt_last_campaign {
  group_label: "CVT"
   type: string
    sql: ${TABLE}.cvt_last_campaign ;;
  }

  dimension_group: cvt_last {
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
    sql: ${TABLE}.cvt_last_time ;;
  }

  dimension: cvt_last_variation {
    group_label: "CVT"
    type: string
    sql: ${TABLE}.cvt_last_variation ;;
  }

  dimension: cvt_value {
    group_label: "CVT"
    type: number
    sql: ${TABLE}.cvt_value ;;
  }

  dimension_group: decision_ttl {
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
    sql: ${TABLE}.decision_ttl ;;
  }

  dimension: email {
    group_label: "Personal Details"
   type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    group_label: "Personal Details"
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension_group: firstvisit_ts {
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
    sql: ${TABLE}.firstvisit_ts ;;
  }

  dimension: gender {
    group_label: "Personal Details"
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: is_bot {
    type: string
    sql: ${TABLE}.is_bot ;;
  }

  dimension: is_mobile {
    type: string
    sql: ${TABLE}.is_mobile ;;
  }

  dimension_group: last_active_ts {
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
    sql: ${TABLE}.last_active_ts ;;
  }

  dimension: last_name {
    group_label: "Personal Details"
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension_group: last_purchase_ts {
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
    sql: ${TABLE}.last_purchase_ts ;;
  }

  dimension_group: lastvisit_ts {
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
    sql: ${TABLE}.lastvisit_ts ;;
  }

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

  dimension: name {
    group_label: "Personal Details"
    type: string
    sql: ${TABLE}.name ;;
  }



  dimension: pageviewct {
    type: number
    hidden: yes
    sql: ${TABLE}.pageviewct ;;
  }

  dimension: pf_form_company {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_company ;;
  }

  dimension: pf_form_email {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_email ;;
  }

  dimension: pf_form_message {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_message ;;
  }

  dimension: pf_form_name {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_name ;;
  }

  dimension: pf_form_phone {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_phone ;;
  }

  dimension: pf_form_title {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_title ;;
  }

  dimension: pf_form_username {
    type: string
    hidden: yes
    sql: ${TABLE}.pf_form_username ;;
  }

  dimension: phone {
    type: string
    group_label: "Personal Details"
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    group_label: "Address"
   sql: ${TABLE}.postal_code ;;
  }

  dimension: predicted_ltv_underachievers {
    type: yesno
    sql: ${TABLE}.predicted_ltv_underachievers ;;
  }

  dimension: score_consistency {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_consistency ;;
  }

  dimension: score_frequency {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_frequency ;;
  }

  dimension: score_intensity {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_intensity ;;
  }

  dimension: score_maturity {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_maturity ;;
  }

  dimension: score_momentum {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_momentum ;;
  }

  dimension: score_propensity {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_propensity ;;
  }

  dimension: score_quantity {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_quantity ;;
  }

  dimension: score_recency {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_recency ;;
  }

  dimension: score_volatility {
    type: number
    group_label: "Score Details"
    sql: ${TABLE}.score_volatility ;;
  }

  dimension: shopify_accepts_marketing {
    type: yesno
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_accepts_marketing ;;
  }

  dimension_group: shopify_created_ts {
    type: time

    sql: ${TABLE}.shopify_created_ts ;;
  }

  dimension: shopify_customer_id {
    type: string
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_customer_id ;;
  }

  dimension_group: shopify_first_order_ts {
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
    sql: ${TABLE}.shopify_first_order_ts ;;
  }

  dimension: shopify_last_order_currency {
    type: string
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_last_order_currency ;;
  }

  dimension: shopify_last_order_name {
    type: string
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_last_order_name ;;
  }

  dimension: shopify_last_order_price {
    type: string
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_last_order_price ;;
  }

  dimension: shopify_purchase_ct {
    type: number
    group_label: "Shopify Details"
    hidden: yes
    sql: ${TABLE}.shopify_purchase_ct ;;
  }

  dimension: shopify_tax_exempt {
    type: string
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_tax_exempt ;;
  }

  dimension: shopify_total_spent_dim {
    type: number
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_total_spent ;;
    hidden: yes
  }

  dimension: shopify_updated_ts {
    type: date_time
    group_label: "Shopify Details"
    sql: ${TABLE}.shopify_updated_ts ;;
  }

  dimension: state {
    type: string
    group_label: "Address"
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: timezone {
    type: string
    group_label: "Personal Details"
    sql: ${TABLE}.timezone ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: utm_campaign_last {
    group_label: "UTM Details"
    type: string
    sql: ${TABLE}.utm_campaign_last ;;
  }

  dimension: utm_content_last {
    group_label: "UTM Details"
    type: string
    sql: ${TABLE}.utm_content_last ;;
  }

  dimension: utm_medium_last {
    group_label: "UTM Details"
    type: string
    sql: ${TABLE}.utm_medium_last ;;
  }

  dimension: utm_source_last {
    group_label: "UTM Details"
    type: string
    sql: ${TABLE}.utm_source_last ;;
  }

  dimension: visit_city {
    type: string
    group_label: "Visit Details"
    sql: ${TABLE}.visit_city ;;
  }

  dimension: visit_country {
    group_label: "Visit Details"
    type: string
    sql: ${TABLE}.visit_country ;;
  }

  dimension: visit_region {
    group_label: "Visit Details"
    type: string
    sql: ${TABLE}.visit_region ;;
  }

  dimension: visit_count {
    group_label: "Visit Details"
    type: number
    sql: ${TABLE}.visitct ;;
  }

  dimension: zip {
    type: zipcode
    group_label: "Address"
    sql: ${TABLE}.zip ;;
  }


  measure: shopify_total_spent {
    type: sum
    sql: ${shopify_total_spent_dim} ;;
    value_format_name: usd_0
  }

  measure: customer_count {
    type: count_distinct
    sql: ${id} ;;
  }
  measure: shopify_orders {
    type: sum
    sql: ${shopify_purchase_ct} ;;
  }

  measure: ltv {
    type: number
    sql: ${shopify_total_spent}/nullif(${customer_count},0) ;;
    value_format_name: usd_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      pf_form_username,
      shopify_last_order_name,
      name,
      first_name,
      last_name,
      pf_form_name
    ]
  }
}
