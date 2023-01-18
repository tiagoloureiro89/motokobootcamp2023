1 -
The Controllers only.

2 -
Subnet: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
Nr Nodes: 16

3
- 10 * 1.53 * 1.125 = 17.2125
- (ICP Tokens) * (1.06 + 0.47 : Disolve Bonus) * (Age Bonus)

4 - 
It's missing the import at the top of the file (that is, before actor{}): import Nat "mo:base/Nat";

5 - We can't return "non-stable" data from the canister, so the type of array must change to a "fixed" one. Change [var ]  for let. Right code:
```
let languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (languages);
  };
  ```

  6 - The Array.append can't deal with [var ], only "fixed" array. Correct code should be:
  ```
var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return languages;
  };
  ```
Also it's missing import: import Array "mo:base/Array";