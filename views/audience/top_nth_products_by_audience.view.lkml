view: top_nth_products_by_audience
{
  derived_table: {
    sql: WITH shopify_products AS (SELECT
      order_id,
      email,
      SPLIT(product_names, ',')[OFFSET(numbers.num)] AS products
      FROM lytics-334500.activity.events_shopify_orders
      JOIN (SELECT n AS num FROM UNNEST(GENERATE_ARRAY(0,200,1)) n) as numbers
      ON numbers.num <=array_length(regexp_extract_all(product_names, r','))
      GROUP BY 1,2,3
       ),
   rank_audience AS (SELECT
       audience_definition.name AS aud_def_name,
       rank() over (order by count(distinct shopify_products.email) desc) AS rank_segment
       FROM lytics-334500.audience.user_all
     AS users
LEFT JOIN lytics-334500.audience.user_segments_all AS user_segments ON users.id=user_segments.id
LEFT JOIN lytics-334500.audience_def.lytics_4011_audience_definition_export
     AS audience_definition ON user_segments.value = audience_definition.slug
LEFT JOIN shopify_products ON users.email = shopify_products.email
WHERE audience_definition.name is not null and audience_definition.name <>'All'
GROUP BY 1)
,
   rank_products AS (SELECT
       audience_definition.name AS aud_def_prod_name,
       shopify_products.products  AS shopify_products_products_rank,
       rank() over (partition by audience_definition.name order by count(distinct shopify_products.email) desc) as rank_sales
       FROM lytics-334500.audience.user_all
     AS users
LEFT JOIN lytics-334500.audience.user_segments_all AS user_segments ON users.id=user_segments.id
LEFT JOIN lytics-334500.audience_def.lytics_4011_audience_definition_export
     AS audience_definition ON user_segments.value = audience_definition.slug
LEFT JOIN shopify_products ON users.email = shopify_products.email
WHERE audience_definition.name is not null and audience_definition.name <>'All'
GROUP BY 1,2),
orders_placed AS
(
SELECT
    audience_definition.name  AS audience_definition_segment,
    shopify_products.products  AS shopify_products_products,

    COUNT(DISTINCT shopify_products.email ) AS shopify_products_number_of_customers
FROM lytics-334500.audience.user_all
     AS users
LEFT JOIN lytics-334500.audience.user_segments_all AS user_segments ON users.id=user_segments.id
LEFT JOIN lytics-334500.audience_def.lytics_4011_audience_definition_export
     AS audience_definition ON user_segments.value = audience_definition.slug
LEFT JOIN shopify_products ON users.email = shopify_products.email
WHERE audience_definition.name is not null and audience_definition.name <>'All'
GROUP BY 1,2
)
SELECT
    a.audience_definition_segment,
    a.shopify_products_products,
    b.rank_segment,
    c.rank_sales,
    a.shopify_products_number_of_customers
FROM orders_placed a

LEFT JOIN rank_audience b ON aud_def_name = audience_definition_segment
LEFT JOIN rank_products c ON aud_def_prod_name =  audience_definition_segment AND shopify_products_products_rank = shopify_products_products

GROUP BY
    1,
    2,
    3,
    4,
    5
 ;;
  }



  dimension: audience_definition_segment {
    type: string
    sql: ${TABLE}.audience_definition_segment ;;
  }

  dimension: shopify_products_products {
    type: string
    sql: ${TABLE}.shopify_products_products ;;
  }

  dimension: rank_segment {
    type: number
    sql: ${TABLE}.rank_segment ;;
  }

  dimension: rank_sales {
    type: number
    sql: ${TABLE}.rank_sales ;;
  }

  dimension: shopify_products_number_of_customers {
    type: number
    sql: ${TABLE}.shopify_products_number_of_customers ;;
    hidden: yes
  }
  measure: number_of_Customers {
    type: sum
    sql: ${shopify_products_number_of_customers} ;;
  }

  set: detail {
    fields: [audience_definition_segment, shopify_products_products, rank_segment, rank_sales, shopify_products_number_of_customers]
  }
}
