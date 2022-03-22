# Rails Project App - Collectibles Marketplace

**Heroku Deployment Link:** https://collectibles-app.herokuapp.com/

**Github Repo Link:** https://github.com/jamesxu1996/collectibles

# Identification of the problem you are trying to solve by building this particular marketplace app**
The problem being solved is the issue of marketplace apps appealing and providing services to niche markets. There are many marketplace stores online these days and it is difficult sometimes to find exactly what you want when it is a collectible rare item. Collectors are spread far and wide and bringing them together in a single spot makes it easier to find communities to buy/sell items which are not available in the general market to the public. There are antiques, watches, cards and other collectibles which are hard to come by and unless you're 'in the know', it can be a challenge to buy or sell. Collectible app attempts to bridge this gap by offering a marketplace where niche markets can come together and put their goods up for sale.

# Why is it a problem that needs solving?
To allow rare items to be accessible to more people. Some people are scared away or put off by the fact that some hobbies have difficult items to procure (e.g trading card games; there are many rare cards which can be difficult to source or find or even watches that are rare and near impossible to get ahold of). Also, it may offer some people an extra stream of income if it becomes easier to sell their items which normally would be a grand undertaking where a seller would need to reach out and hope a buyer who is aware of their product contacts them directly. By having a niche marketplace available to a community, some buyers may even stumble accross the listing just by being on the collectibles app. Also, recycling is encouraged by exchanging goods through multiple hands. In general, it allows more people to share the joy of whatever they collect with more people.

# Collectibles Marketplace Description**
### Purpose
The purpose of the app is to allow buyers/sellers to buy or sell/exchange their rare items or collectible with one another. This allows people who may be thinking about diving into a hobby to be more open since the items can be purchased via the app.

### Functionality / features
The collectibles app allows users to register and sign in with a unique profile. Users can then buy or sell through listings and allows images to share what they're selling. Users can see what they've purchased through their purchases history. Listings can be viewed without logging in but need to log in to purchase.

### Sitemap
![sitemap](app/assets/images/sitemap_collectibles.png "sitemap")

### Screenshots
Home
![screenshots](app/assets/images/home.png "home")
Listings
![screenshots](app/assets/images/listings.png "listings")
Show Page
![screenshots](app/assets/images/show.png "show")

### Target audience
The target audience for the Collectibles marketplace application are people who do not want to use a general marketplace such as Amazon or eBay and want to facilitate transactions over a more niche marketbase. Anything from rare cards, watches, cameras, antiques; buyers and sellers will be able to transact and discover items that they enjoy collecting rather than a mass-consumer marketplace where there things are sold in large quantities or where rarer objects are not normally posted. This also makes it easier on the buyer to find rare items to buy or the seller to find buyers for their niche items.

### Tech stack (e.g. html, css, deployment platform, etc)
HTML, CSS, Ruby, Ruby on Rails, Javascript, AWS S3(image storage), Heroku(deploying), Stripe (payments)

# User stories for your app
- "As a consumer of collectible goods, I want a platform which allows easy access and purchases/sale of goods according to my hobby so that I may easily find what I am looking for.
- "As a user, I want to sign up and buy/sell my collectible goods to a niche marketplace without much trouble so I can focus on my hobby and not managing my listings/purchases"
- "As a user, I want to create a profile when I access the page for the first time"
- "As a user, I want to login/logout of my account whenever I want to so I can access/leave the marketplace as I wish"
- "As a user, I want to list my items for sale and provide pictures and descriptions to easily identify my listings"
- "As a user, I want to view my purchase history and receipts whenever I want"
- "As a user, I want to add items to favourites so I can keep track of them for later viewing"
- "As a user, I want to be able to use a search to find what I am looking for so I don't need to spend much time scrolling through every item"
- "As a user, I want to have multiple options to pay for an item"
- "As a user, I want to be able to change my mind at the checkout if I have second thoughts"

# Wireframes for your app
Add/Edit
![wireframes](app/assets/images/add_edit_item.png "add_edit_item")
Home
![wireframes](app/assets/images/Home.png "home")
Profile
![wireframes](app/assets/images/profile_screen.png "profile")
Search
![wireframes](app/assets/images/Search_result.png "search")
Register/Login
![wireframes](app/assets/images/register_login.png "register_login")
Show Item
![wireframes](app/assets/images/show_item.png "show")
Stripe Payment
![wireframes](app/assets/images/Stripe_payment.png "stripe")
Success
![wireframes](app/assets/images/successful_thank_you_screen.png "success")

# An ERD for your app
Proposed ERD
![wireframes](app/assets/images/ERD_proposed.png "erd_proposed")
Modified ERD
![wireframes](app/assets/images/ERD_modified.png "erd_modifiedl")
Final ERD
![wireframes](app/assets/images/ERD_final.png "erd_final")

# Explain the different high-level components (abstractions) in your app
The collectible marketplace app is built with the MVC (model views controller) model in mind. These models are inherited from the ActiveRecord class (which is itself inherited from the ApplicationRecord). This allows querying/manipulation of data from our PostreSQL database easier without needing to specifically write complex SQL queries. The ORM handles these queries for us so devlopment of the app is made easier. 

Controllers, as previously mentioned, are inherited from ApplicationController(which is inherited from ActiveController) and thus allows us as developers to define methods, variables (instance variables) to query data from the Models. Basically, this makes CRUD operation implementation easier as it seperates concerns and thus allows us to set actions to complete before/after. 

Views are inherited from ActionView; this allows our application to have more complex front-end pages by letting HTML mix with ruby/other languages e.g javascript. This means logic can be passed on the front end whilst also allowing the power of styling from HTML and CSS (bootstrap). Partials can be utilised within views (files starting with _) to further break down front-end components such as forms, navbars, headers etc. This makes the code more DRY.


# Detail any third party services that your app will use
The app utilised and relies upon stripe to make transactions. Stripe will also issue users a receipt once a purchase is made; this will be implemented using Stripe and webhooks. AWS s3 allows storage of images when users upload them to the collectibles marketplace. Github will be used for version control and project management. Heroku will finally be used to deploy the site when it is ready to be moved to production; in the meantime, incremental pushes from github will be deployed to Heroku during development.


# Describe your projects models in terms of the relationships (active record associations) they have with each other



# Discuss the database relations to be implemented in your application



# Provide your database schema design

```
ActiveRecord::Schema.define(version: 2022_03_21_155345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id"
    t.boolean "sold", default: false
    t.bigint "user_id"
    t.integer "condition"
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "listings_features", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "listing_id"
    t.bigint "feature_id"
    t.index ["feature_id"], name: "index_listings_features_on_feature_id"
    t.index ["listing_id"], name: "index_listings_features_on_listing_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "payment_id"
    t.string "receipt_url"
    t.bigint "listing_id"
    t.bigint "buyer_id", null: false
    t.bigint "seller_id", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["listing_id"], name: "index_orders_on_listing_id"
    t.index ["seller_id"], name: "index_orders_on_seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "users"
  add_foreign_key "listings_features", "features"
  add_foreign_key "listings_features", "listings"
  add_foreign_key "orders", "listings"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "orders", "users", column: "seller_id"
end
```

# Describe the way tasks are allocated and tracked in your project
Tasks for the project were managed and allocated using Trello. The board was set up in 3 sections: To do, In Progress and Completed. As tasks were being completed, they would be placed in the in progess column and when completed would be moved to the completed column. Checklists were used in each card to tick off as the task was being done; this segments the tasks even further and breaks down a large undertaking (creating the collectibles app) into more manageable bite sized pieces. The link to the board is here: https://trello.com/invite/b/ziol20AC/4f1ebe21fde38e42f0cbb336bd684938/t2a2-rails-application

Pictures of the board in progress are shown below:

![trello board](app/assets/images/Trello_1.png "trello board")
![trello board](app/assets/images/Trello_2.png "trello board")
![trello board](app/assets/images/Trello_3.png "trello board")
