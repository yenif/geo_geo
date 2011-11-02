Given /^the following entries exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |row|
    row['coordinates'] = eval row['coordinates']
    GeoGeo::Entry.create(row)
  end
end
