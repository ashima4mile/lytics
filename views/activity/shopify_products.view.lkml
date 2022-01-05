view: shopify_products {
  derived_table: {
    sql: SELECT
      order_id,
      email,
      SPLIT(product_names, ',')[OFFSET(numbers.num)] AS products
      FROM @{LYTICS_CONNECTION}.@{LYTICS_ACTIVITY_SCHEMA}.events_shopify_orders
      JOIN (SELECT n AS num FROM UNNEST(GENERATE_ARRAY(0,200,1)) n) as numbers
      ON numbers.num <=array_length(regexp_extract_all(product_names, r','))
      GROUP BY 1,2,3
       ;;
  }



  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
    hidden: yes
  }

  dimension: primary_key {
     sql: ${order_id}||${products} ;;
     primary_key: yes
  }
 dimension: email {
   type: string
   sql: ${TABLE}.email ;;
   hidden: yes
 }
  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  measure: number_of_orders  {
    type: count_distinct
    sql: ${order_id} ;;
  }

  measure: number_of_customers  {
    type: count_distinct
    sql: ${email} ;;
  }


  set: detail {
    fields: [order_id, products]
  }
}
