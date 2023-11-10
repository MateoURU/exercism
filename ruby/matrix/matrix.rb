class Matrix
    def initialize(matrix)
        @matrix = matrix
        @rows = @matrix
                    .split("\n")
    end
    def column(columnNumber)
        r = 1
        c = []
        while r <= @rows.length
            c << row(r)[columnNumber-1]
            r += 1
        end
        return c
    end
    def row(rowNumber)
        return @rows[rowNumber-1]
                .split(" ")
                .map { |i| i.to_i }
    end
  end