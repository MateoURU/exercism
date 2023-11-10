class ResistorColorDuo
    def self.value(array)
        values = {
            black: "0",
            brown: "1",
            red: "2",
            orange: "3",
            yellow: "4",
            green: "5",
            blue: "6",
            violet: "7",
            grey: "8",
            white: "9"
        }
        color1 = values[array[0].to_sym]
        color2 = values[array[1].to_sym]
        return (color1+color2).to_i
    end
  end
