view: user_segments {

  sql_table_name: @{LYTICS_CONNECTION}.@{LYTICS_AUDIENCE_SCHEMA}.user_segments_all;;
  drill_fields: [id]

  dimension: id {
    type: number
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: primary_key {
    type: string
    sql: ${id}||${segment_slug} ;;
    primary_key: yes
  }

  dimension: name {
    type: string
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: segment_slug {
    type: string
    sql: ${TABLE}.value ;;
  }


}
