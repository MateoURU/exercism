=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
    def self.compute(strand1, strand2)
        array1 = strand1.split("")
        array2 = strand2.split("")
        i = 0
        c = 0
        while i < array1.length
            array1[i] = array2[i] ? c += 1 : "same"
            i += 1
        end
        return c
    end
end