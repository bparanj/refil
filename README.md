# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

convert -version

Version: ImageMagick 6.9.2-4 Q16 x86_64 2015-10-11 http://www.imagemagick.org
Copyright: Copyright (C) 1999-2015 ImageMagick Studio LLC
License: http://www.imagemagick.org/script/license.php
Features: Cipher DPC Modules 
Delegates (built-in): bzlib freetype jng jpeg ltdl lzma png tiff xml zlib

gem "refile", require: "refile/rails"
gem "refile-mini_magick"

bundle


class Product < ApplicationRecord
  attachment :photo
end


rails g migration add_photo_to_products photo_id:string

class AddPhotoToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :photo_id, :string
  end
end

rails db:migrate

Add an attachment field to the product form partial.

<%= form_for @product do |f| %>
  <p>
    <%= f.label :category_id %><br />
    <%= f.collection_select :category_id, Category.all, :id, :name %>
  </p>
  <p>
    <%= f.label :name %><br />
    <%= f.text_field :name %>
  </p>
  <p>
    <%= f.label :price %><br />
    <%= f.text_field :price %>
  </p>
  <p>
    <%= f.label :description %><br />
    <%= f.text_area :description %>
  </p>
  <p>
  	<%= f.attachment_field :photo %>
  </p>
  <p><%= f.submit "Submit" %></p>
<% end %>

Add product_photo_id field to the allowed parameters in the products controller:

def allowed_params
  params.require(:product).permit(:name, :price, :category_id, :description, :photo_id)
end

You will get the error:

NoMethodError (undefined method `attachment' for #<Class:0x007fdacc>):

if you don't add the refile gems.


bundle install results in error:
Bundler could not find compatible versions for gem "rack":

for rails 5.0.

gem 'refile', github: 'refile/refile', require: 'refile/rails'
gem 'refile-mini_magick', github: 'refile/refile-mini_magick'
gem 'sinatra', github: 'sinatra/sinatra', branch: 'master'

bundle

If you have the wrong value for the column name, you will get the error:

Unpermitted parameter: photo

when you upload the image.


Faster Upload by using Refile's JavaScript Library

ActionView::Template::Error (couldn't find file 'refile' with type 'text/css' error if you copy 

//= require refile to css file. Copy it to products.js file.

Now mark the field for direct upload:

<%= form.attachment_field :photo, direct: true %>


