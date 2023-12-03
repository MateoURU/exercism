class Series
    def initialize(serie)
        @serie = serie
    end
    def slices(n)
        raise ArgumentError if n > @serie.length

        @serie
            .split('')
            .each_cons(n)
            .to_a
            .map { |i| i.join }
    end
end