require_relative "../lib/world_counter"

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

describe "the world_counter method" do
  it "given a string and a dictionnary, should return an Hash with the each word present in the dictionnay 
  and the string, and the number of the occurence of each word " do
    expect(world_counter("go",dictionnary)).to eq({"go"=>1})
    expect(world_counter("going",dictionnary)).to eq({"go"=>1,"going"=>1,"i"=>1})
    expect(world_counter("below",dictionnary)).to eq({"below"=>1, "low"=>1})
    expect(world_counter("Howdy partner, sit down! How's it going?",dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end

 
end