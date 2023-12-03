class Raindrops
    def self.convert(input)
        data = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}
        result = ''
        data.each do |numb,str|
            if input % numb == 0
                result << str
            end
        end
        return result.empty? ? input.to_s : result
    end
end

#input % numb == 0 ?  : puts "This no #{str}" 