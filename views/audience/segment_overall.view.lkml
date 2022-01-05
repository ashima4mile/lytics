view: segment_overall {
  derived_table: {
    sql: SELECT
             a.id,
             a.segment_name AS segment_name_1,
             b.segment_name AS segment_name_2
             FROM
             ( SELECT
                seg.id,
                def.name AS segment_name
              FROM `lytics-334500.audience.user_segments_all` seg
              INNER JOIN `lytics-334500.audience_def.lytics_4011_audience_definition_export` def
              ON seg.value = def.slug
              WHERE value <> 'all' AND def.name IS NOT NULL
              GROUP BY 1,2) a
              INNER JOIN
              (SELECT
                seg.id,
                def.name AS segment_name
              FROM `lytics-334500.audience.user_segments_all` seg
              INNER JOIN `lytics-334500.audience_def.lytics_4011_audience_definition_export` def
              ON seg.value = def.slug
              WHERE value <> 'all' AND def.name IS NOT NULL
              GROUP BY 1,2) b
              ON a.id = b.id
              WHERE a.segment_name <> b.segment_name
 ;;
  }

  measure: user_count {
    type: count_distinct
    sql: ${id} ;;
    }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: segment_name_1 {
    type: string
    sql: ${TABLE}.segment_name_1 ;;
  }

  dimension: segment_name_2 {
    type: string
    sql: ${TABLE}.segment_name_2 ;;
  }


}
