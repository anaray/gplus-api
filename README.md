gplus-api
=========

Ruby API to access the GPlus resources (People, Activity, Events etc)

Note: Work in progress 

Usage:

```ruby
gplus = Feed::GPlus.new
gplus.connect( {:key => 'google api_key'} )
response = gplus.get_person("Marques Brownlee")
