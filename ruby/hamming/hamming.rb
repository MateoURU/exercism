=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
    def self.compute(strand1, strand2)

        raise ArgumentError if strand1.length != strand2.length

        strand1
            .chars #better than split('')
            .zip( strand2.chars )
            .count { |a,b| a!=b }

            # This implementation is ok but not optimal
            # .map
            #     .with_index { | ch , idx | [idx, ch]}
            #     .to_h
            #         .map{ |key , value| strand2.split('')[key] == value }
            #         .count(false)
    end
end