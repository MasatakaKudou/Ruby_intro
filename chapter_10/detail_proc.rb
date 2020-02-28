# &とto_proc
reserve_proc = Proc.new { |s| s.reverse }
p ['Ruby', 'Java', 'Perl'].map(&reserve_proc)

split_proc = :split.to_proc
p split_proc
p split_proc.call('a-b-c-d e')
p split_proc.call('a-b-c-d e', '-')

puts '-----------------------------------'

# Procオブジェクトとクロージャ
def generate_proc(array)
  counter = 0
  Proc.new do
    counter += 10
    array << counter
  end
end
values = []
sample_proc = generate_proc(values)
p values
sample_proc.call
p values
sample_proc.call
p values