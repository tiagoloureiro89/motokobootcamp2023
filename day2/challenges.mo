import Float "mo:base/Float";

actor Echo {
    // 2.1
    // changed return type from Int to Float
    // as avg of [3, 2] is not 2, but 2.5
    public query func average_array(a : [Int]) : async Float {
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


};