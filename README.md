[![Build
Status](https://travis-ci.org/smazhara/activenetsuite.png?branch=master)](https://travis-ci.org/smazhara/activenetsuite)

ActiveNetsuite
==============

NetSuite Object Mapper.

Description
-----------

ActiveNetsuite to Netsuite is what ActiveRecord to RDMBS - an OO facade.

Installation
------------
    gem install activenetsuite

Usage
-----

```ruby
require 'activenetsuite'

include ActiveNetsuite

# Connect
Record.client = Client.new(
  account_id: <YOUR NETSUITE ACCOUNT ID>,
  email: <YOUR NETSUITE EMAIL>,
  password: <YOUR NETSUITE PASSWORD>
)

# Create Partner
partner = Partner.new
partner.entity_id = 'john_doe'
partner.first_name = 'John'
partner.last_name = 'Doe'
partner.is_person = true
res = partner.add

res.success? # => true
partner.internal_id # => internal_id assigned by NetSuite

# Find it

# By entity_id
partner = Partner.find_by(entity_id: 'john_doe')

# By internal_id
partner = Partner.find_by_internal_id(partner.internal_id)

# All whose last name starts with 'doe'
partners = Partner.where(:last_name, :starts_with, 'doe').to_a


```


License
-------

Released under the [MIT License][mit].

[mit]: http://www.opensource.org/licenses/MIT
