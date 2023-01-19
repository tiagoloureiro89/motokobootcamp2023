import Float "mo:base/Float";
import Iter "mo:base/Iter";
import HashMap "mo:base/HashMap";
import Hash "mo:base/Hash";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";

actor Echo {
    // 2.1
    // changed return type from Int to Float
    // as avg of [3, 2] is not 2, but 2.5
    public query func averageArray(a : [Int]) : async Float {
        if(a.size() == 0){
        return 0.0;
        };

        var sum : Int = 0;
        for(v in a.vals()){
        sum := sum + v;
        };
        return (Float.fromInt(sum) / Float.fromInt(a.size()));
    };

    // 2.2
    public query func count_character(t : Text, c : Char) : async Nat {
      var counter : Nat = 0;
      for(l in t.chars()){
          if(l == c)
              counter += 1;  
      };
      return counter;
    };

    // 2.3
    public query func factorial(n : Nat) : async Nat {
        // dumb way
        var fact : Nat = 1;
        for(i in Iter.range(2, n)){
            fact := fact * i;
        };
        return fact;
    };

    // 2.4
    public query func number_of_words(t : Text) : async Nat {
        if(t.size() == 0)
            return 0;
    
        var nrSpaces : Nat = 1;
        for(c in t.chars()){
        if(c == ' ')
            nrSpaces += 1;
        };
        
        return nrSpaces;
    };

    // 2.5
    public query func find_duplicates(a : [Nat]) : async [Nat] {
        let duplicates : HashMap.HashMap<Nat, Nat> = HashMap.HashMap(32, Nat.equal, Hash.hash);
        let prevNrs : HashMap.HashMap<Nat, Nat> = HashMap.HashMap(32, Nat.equal, Hash.hash);

        for(nr in a.vals()){
            switch(prevNrs.get(nr)){
                case(null) {prevNrs.put(nr, 1);};
                case(_) {duplicates.put(nr, 1);};
            };
        };

        var keys : Iter.Iter<Nat> = duplicates.keys();
        return Iter.toArray(keys);
    };

    // 2.6
    // I didn't have time to finish this challenge
    public query func convert_to_binary(n : Nat) : async Text {
        var n : Nat = 0;
        var binaryString : Text = "";
        let b : Buffer.Buffer<Nat> = {};

        // for every / 10
        // divide & check if it's divisible by 2, check remainder
        // etc...
        //    while(n > 1){
        //        b.put(n % 2);
        //        n := n / 2;
        //    }
        

        for(v in b.vals()){
            binaryString := binaryString # v;
        };
        
        return binaryString;
    }
};