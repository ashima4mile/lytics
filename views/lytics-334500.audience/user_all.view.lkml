# The name of this view in Looker is "User All"
view: user_all {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lytics-334500.audience.user_all`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Broken Profile Broke Max Size" in Explore.

  dimension: _broken_profile_broke_max_size {
    type: yesno
    sql: ${TABLE}._broken_profile_broke_max_size ;;
  }

  dimension: _broken_profile_max_neighbors {
    type: yesno
    sql: ${TABLE}._broken_profile_max_neighbors ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: _cust_sz {
    type: number
    sql: ${TABLE}._cust_sz ;;
  }

  dimension: _deleted {
    type: yesno
    sql: ${TABLE}._deleted ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: _internal_sz {
    type: number
    sql: ${TABLE}._internal_sz ;;
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
    sql: ${TABLE}._num_aliases ;;
  }

  dimension: _num_conflicts {
    type: number
    sql: ${TABLE}._num_conflicts ;;
  }

  dimension: _num_days {
    type: number
    sql: ${TABLE}._num_days ;;
  }

  dimension: _num_events {
    type: number
    sql: ${TABLE}._num_events ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__num_events {
    type: sum
    sql: ${_num_events} ;;
  }

  measure: average__num_events {
    type: average
    sql: ${_num_events} ;;
  }

  dimension: _num_max_neighbors {
    type: number
    sql: ${TABLE}._num_max_neighbors ;;
  }

  dimension: _num_streams {
    type: number
    sql: ${TABLE}._num_streams ;;
  }

  dimension: _profile_processing_failure {
    type: yesno
    sql: ${TABLE}._profile_processing_failure ;;
  }

  dimension: _rejected {
    type: string
    sql: ${TABLE}._rejected ;;
  }

  dimension: _split {
    type: number
    sql: ${TABLE}._split ;;
  }

  dimension: _split2 {
    type: number
    sql: ${TABLE}._split2 ;;
  }

  dimension: _total_sz {
    type: number
    sql: ${TABLE}._total_sz ;;
  }

  dimension: _uid {
    type: string
    sql: ${TABLE}._uid ;;
  }

  dimension: address_1 {
    type: string
    sql: ${TABLE}.address_1 ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}.address_2 ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: cell {
    type: string
    sql: ${TABLE}.cell ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: cvt_currency {
    type: string
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
    type: string
    sql: ${TABLE}.cvt_last_variation ;;
  }

  dimension: cvt_value {
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
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
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
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: pageviewct {
    type: number
    sql: ${TABLE}.pageviewct ;;
  }

  dimension: pf_form_company {
    type: string
    sql: ${TABLE}.pf_form_company ;;
  }

  dimension: pf_form_email {
    type: string
    sql: ${TABLE}.pf_form_email ;;
  }

  dimension: pf_form_message {
    type: string
    sql: ${TABLE}.pf_form_message ;;
  }

  dimension: pf_form_name {
    type: string
    sql: ${TABLE}.pf_form_name ;;
  }

  dimension: pf_form_phone {
    type: string
    sql: ${TABLE}.pf_form_phone ;;
  }

  dimension: pf_form_title {
    type: string
    sql: ${TABLE}.pf_form_title ;;
  }

  dimension: pf_form_username {
    type: string
    sql: ${TABLE}.pf_form_username ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: predicted_ltv_underachievers {
    type: yesno
    sql: ${TABLE}.predicted_ltv_underachievers ;;
  }

  dimension: score_consistency {
    type: number
    sql: ${TABLE}.score_consistency ;;
  }

  dimension: score_frequency {
    type: number
    sql: ${TABLE}.score_frequency ;;
  }

  dimension: score_intensity {
    type: number
    sql: ${TABLE}.score_intensity ;;
  }

  dimension: score_maturity {
    type: number
    sql: ${TABLE}.score_maturity ;;
  }

  dimension: score_momentum {
    type: number
    sql: ${TABLE}.score_momentum ;;
  }

  dimension: score_propensity {
    type: number
    sql: ${TABLE}.score_propensity ;;
  }

  dimension: score_quantity {
    type: number
    sql: ${TABLE}.score_quantity ;;
  }

  dimension: score_recency {
    type: number
    sql: ${TABLE}.score_recency ;;
  }

  dimension: score_volatility {
    type: number
    sql: ${TABLE}.score_volatility ;;
  }

  dimension: shopify_accepts_marketing {
    type: yesno
    sql: ${TABLE}.shopify_accepts_marketing ;;
  }

  dimension: shopify_created_ts {
    type: string
    sql: ${TABLE}.shopify_created_ts ;;
  }

  dimension: shopify_customer_id {
    type: string
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
    sql: ${TABLE}.shopify_last_order_currency ;;
  }

  dimension: shopify_last_order_name {
    type: string
    sql: ${TABLE}.shopify_last_order_name ;;
  }

  dimension: shopify_last_order_price {
    type: string
    sql: ${TABLE}.shopify_last_order_price ;;
  }

  dimension: shopify_purchase_ct {
    type: number
    sql: ${TABLE}.shopify_purchase_ct ;;
  }

  dimension: shopify_tax_exempt {
    type: string
    sql: ${TABLE}.shopify_tax_exempt ;;
  }

  dimension: shopify_total_spent {
    type: number
    sql: ${TABLE}.shopify_total_spent ;;
  }

  dimension: shopify_updated_ts {
    type: string
    sql: ${TABLE}.shopify_updated_ts ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: timezone {
    type: string
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
    type: string
    sql: ${TABLE}.utm_campaign_last ;;
  }

  dimension: utm_content_last {
    type: string
    sql: ${TABLE}.utm_content_last ;;
  }

  dimension: utm_medium_last {
    type: string
    sql: ${TABLE}.utm_medium_last ;;
  }

  dimension: utm_source_last {
    type: string
    sql: ${TABLE}.utm_source_last ;;
  }

  dimension: visit_city {
    type: string
    sql: ${TABLE}.visit_city ;;
  }

  dimension: visit_country {
    type: string
    sql: ${TABLE}.visit_country ;;
  }

  dimension: visit_region {
    type: string
    sql: ${TABLE}.visit_region ;;
  }

  dimension: visitct {
    type: number
    sql: ${TABLE}.visitct ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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
