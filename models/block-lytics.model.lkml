# Define the database connection to be used for this model.
connection: "4mile_lytics"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup:lytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lytics_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Block-lytics"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: users {

  join: user_segments {
    relationship: one_to_many
    type: left_outer
    sql_on: ${users.id}=${user_segments.id} ;;
    fields: []
  }

  join: audience_definition {
    relationship: many_to_one
    type: left_outer
    sql_on:${user_segments.segment_slug} = ${audience_definition.slug} ;;
  }

  join: shopify_products {
    view_label: "Shopify Orders"
    type: left_outer
    relationship: one_to_many
    sql_on: ${users.email} = ${shopify_products.email} ;;
  }


}
