class Isogram
    # @characters_to_be_removed = [" ","-"]
    
    def self.isogram?(input)
        # is_isogram = true

        # i = input
        #     .chars()
        #     .map{ |i| i.downcase }
        #     .difference(@characters_to_be_removed)

        # is_isogram = i.any? { |item| i.count(item) > 1 } ? false : true

        #comí del tupper, no era necesario pasarlo a array

        characters = input.downcase.scan(/\w/)
        characters.uniq == characters
    end
end
