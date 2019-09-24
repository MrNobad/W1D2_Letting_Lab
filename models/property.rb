require('pg')

class Property

  attr_accessor :address, :no_of_rooms, :value, :build
  # attr_reader :id

  def initialize( options )
    # @id = options['id'].to_i() if options['id']
    @address = options['address']
    @no_of_rooms = options['no_of_rooms'].to_i()
    @value = options['value']
    @build = options['build']
  end

  def save()
    db = PG.connect({ dbname: 'letting_agent', host: 'localhost' })
    sql =
    "INSERT INTO letting_agent
    (
      address,
      no_of_rooms,
      value,
      build
      ) VALUES ($1, $2, $3, $4) RETURNING *"
      values = [@address, @no_of_rooms, @value, @build]
      db.prepare("save", sql)
      @id = db.exec_prepared("save", values)[0]["id"].to_i
      db.close() # IMPORTANT
    end
  end
