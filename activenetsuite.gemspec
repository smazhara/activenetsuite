# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "activenetsuite"
  s.version = "0.1.0.20140205110835"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stan Mazhara"]
  s.date = "2014-02-05"
  s.description = "Netsuite Object Mapper."
  s.email = ["akmegran@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = [".rspec", ".ruby-version", "CHANGELOG", "Gemfile", "Gemfile.lock", "History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "activenetsuite.gemspec", "lib/activenetsuite.rb", "lib/activenetsuite/accounting/account.rb", "lib/activenetsuite/accounting/non_inventory_sale_item.rb", "lib/activenetsuite/core/custom_field_list.rb", "lib/activenetsuite/core/custom_field_ref.rb", "lib/activenetsuite/core/deleted_record.rb", "lib/activenetsuite/core/get_deleted_result.rb", "lib/activenetsuite/core/record.rb", "lib/activenetsuite/core/record_ref.rb", "lib/activenetsuite/core/search_record.rb", "lib/activenetsuite/core/search_result.rb", "lib/activenetsuite/core/status.rb", "lib/activenetsuite/helpers/client.rb", "lib/activenetsuite/helpers/error.rb", "lib/activenetsuite/helpers/method_inflector.rb", "lib/activenetsuite/helpers/response_methods.rb", "lib/activenetsuite/helpers/search_response_methods.rb", "lib/activenetsuite/messages/add_response.rb", "lib/activenetsuite/messages/delete_list_response.rb", "lib/activenetsuite/messages/delete_response.rb", "lib/activenetsuite/messages/get_deleted_response.rb", "lib/activenetsuite/messages/get_deleted_result.rb", "lib/activenetsuite/messages/get_response.rb", "lib/activenetsuite/messages/read_response.rb", "lib/activenetsuite/messages/search_more_with_id_response.rb", "lib/activenetsuite/messages/search_response.rb", "lib/activenetsuite/messages/update_response.rb", "lib/activenetsuite/messages/write_response.rb", "lib/activenetsuite/relationships/partner.rb", "lib/activenetsuite/relationships/vendor.rb", "lib/activenetsuite/sales/cash_refund.rb", "lib/activenetsuite/sales/cash_sale.rb", "lib/activenetsuite/soap/NetSuiteServiceClient.rb", "lib/activenetsuite/soap/default.rb", "lib/activenetsuite/soap/defaultDriver.rb", "lib/activenetsuite/soap/defaultMappingRegistry.rb", "lib/activenetsuite/version.rb", "spec/lib/activenetsuite/accounting/non_inventory_sale_item_spec.rb", "spec/lib/activenetsuite/core/record_ref_spec.rb", "spec/lib/activenetsuite/core/record_spec.rb", "spec/lib/activenetsuite/core/search_record_spec.rb", "spec/lib/activenetsuite/core/search_result_spec.rb", "spec/lib/activenetsuite/helpers/client_spec.rb", "spec/lib/activenetsuite/helpers/method_inflector_spec.rb", "spec/lib/activenetsuite/helpers/search_response_methods_spec.rb", "spec/lib/activenetsuite/messages/search_response_spec.rb", "spec/lib/activenetsuite/relationships/partner_spec.rb", "spec/lib/activenetsuite/relationships/vendor_spec.rb", "spec/lib/activenetsuite/sales/cash_refund_spec.rb", "spec/lib/activenetsuite/sales/cash_sale_spec.rb", "spec/spec_helper.rb", ".gemtest"]
  s.homepage = "https://github.com/smazhara/activenetsuite"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "activenetsuite"
  s.rubygems_version = "2.0.3"
  s.summary = "Netsuite Object Mapper."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.8"])
    else
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.8"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.8"])
  end
end
