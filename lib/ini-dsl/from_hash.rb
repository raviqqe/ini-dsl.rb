module IniFile
  def self.from_hash hash
    hash.map do |section, properties|
      ["[#{section}]",
       *properties.map { |property, value| [property, ' = ', value].join }]
      .join "\n"
    end.join "\n"
  end
end
