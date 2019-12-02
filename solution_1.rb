# Runtime: 36 ms, faster than 79.18% of Ruby online submissions for Two Sum.
# Memory Usage: 9.9 MB, less than 45.45% of Ruby online submissions for Two Sum.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, idx|
    partner_idx = hash[target - num]
    return [idx, partner_idx] if partner_idx != nil && partner_idx != idx
    hash[num] = idx
  end
end
