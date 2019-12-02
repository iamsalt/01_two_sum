# Runtime: 260 ms, faster than 37.45% of Ruby online submissions for Two Sum.
# Memory Usage: 9.5 MB, less than 100.00% of Ruby online submissions for Two Sum.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index do |num, idx|
       next unless partner_idx = nums.index(target - num) 
       return [idx, partner_idx]  if partner_idx != idx 
    end
end
