i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


def my_array_finding_method(source, thing_to_find)
  source.select { |word| word.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
  source.keep_if {|a,b| b == thing_to_find} .keys
end


def my_array_modification_method!(source, thing_to_modify)
  source.map! {|elem| elem.is_a?(Integer) ? elem + thing_to_modify : elem }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |pet, age| source[pet] = age + thing_to_modify }
end


def my_array_sorting_method(source)
  source.sort_by{ |x| x.to_s }
end

def my_hash_sorting_method(source)
  source.to_a.sort_by{ |key, value| value }
end


def my_array_deletion_method!(source, thing_to_delete)
  source.reject! {|user_string| user_string.to_s.index(thing_to_delete) != nil}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! {|key| key == thing_to_delete }
end


def my_array_splitting_method(source)
  source.partition { |x| x.is_a? Integer }
end

def my_hash_splitting_method(source, age)
  source.partition {|pet, a| a < age}
end