# The name of this view in Looker is "Events Default"
view: events_default {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lytics-334500.activity.events_default`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Ca" in Explore.

  dimension: _ca {
    type: string
    sql: ${TABLE}._ca ;;
  }

  dimension: _cc {
    type: string
    sql: ${TABLE}._cc ;;
  }

  dimension: _device {
    type: string
    sql: ${TABLE}._device ;;
  }

  dimension: _e {
    type: string
    sql: ${TABLE}._e ;;
  }

  dimension: _getid {
    type: string
    sql: ${TABLE}._getid ;;
  }

  dimension: _l3uid {
    type: string
    sql: ${TABLE}._l3uid ;;
  }

  dimension: _mob {
    type: string
    sql: ${TABLE}._mob ;;
  }

  dimension: _nmob {
    type: string
    sql: ${TABLE}._nmob ;;
  }

  dimension: _sesstart {
    type: string
    sql: ${TABLE}._sesstart ;;
  }

  dimension: _sz {
    type: string
    sql: ${TABLE}._sz ;;
  }

  dimension: _tz {
    type: string
    sql: ${TABLE}._tz ;;
  }

  dimension: _uabot {
    type: string
    sql: ${TABLE}._uabot ;;
  }

  dimension: _uam {
    type: string
    sql: ${TABLE}._uam ;;
  }

  dimension: _uamob {
    type: string
    sql: ${TABLE}._uamob ;;
  }

  dimension: _uan {
    type: string
    sql: ${TABLE}._uan ;;
  }

  dimension: _uaver {
    type: string
    sql: ${TABLE}._uaver ;;
  }

  dimension: _uid {
    type: string
    sql: ${TABLE}._uid ;;
  }

  dimension: _uida {
    type: string
    sql: ${TABLE}._uida ;;
  }

  dimension: _ul {
    type: string
    sql: ${TABLE}._ul ;;
  }

  dimension: _v {
    type: string
    sql: ${TABLE}._v ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: gtm_start {
    type: string
    sql: ${TABLE}.gtm_start ;;
  }

  dimension: gtm_uniqueeventid {
    type: string
    sql: ${TABLE}.gtm_uniqueeventid ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: when {
    type: string
    sql: ${TABLE}.`when` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
