class Acronym
    def self.abbreviate(input)
        input
            .split(/ |-/)
            .map{ |i| i
                .chr
                .upcase()
                }
            .join()
    end
end



