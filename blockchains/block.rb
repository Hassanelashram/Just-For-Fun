require 'digest'

class Block
    attr_accessor :previous_hash, :hash
    attr_reader :data, :timestamp
    def initialize(data, previous_hash = "", hash = "")
        @data = data
        @previous_hash = previous_hash
        @hash = generate_hash
        @timestamp = Time.now
    end

    def generate_hash
        Digest::SHA256.hexdigest(@data.to_s + @previous_hash)
    end
end