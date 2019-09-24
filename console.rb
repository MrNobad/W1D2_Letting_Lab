require('pry')
require_relative('models/property')

property1 = Property.new({
  'address' => 'Edinburgh Castle, Edinburgh, EH1',
  'no_of_rooms' => 4,
  'value' => '£10,000',
  'build' => 'Detached'
  })

  property1.save()

  property2 = Property.new({
    'address' => 'CodeClan, Castle Terrace, EH2',
    'no_of_rooms' => 3,
    'value' => '£5,000',
    'build' => 'Flat'
    })
    property2.save()

    properties = Property.all()

    binding.pry
    nil
