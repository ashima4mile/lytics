view: audience_definition {

  sql_table_name: @{LYTICS_CONNECTION}.@{LYTICS_AUDIENCE_DEF_SCHEMA}.lytics_4011_audience_definition_export
    ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
  }




  dimension_group: ly_created_ts {
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
    sql: ${TABLE}.ly_created_ts ;;
  }

  dimension_group: ly_exported_ts {
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
    sql: ${TABLE}.ly_exported_ts ;;
  }

  dimension_group: ly_updated_ts {
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
    sql: ${TABLE}.ly_updated_ts ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.name ;;

  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  measure: count {
    type: count
    drill_fields: [id, segment]
  }
}
