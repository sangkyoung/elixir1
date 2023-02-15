result = with [a , 1] <- ["apple",1],
          #[a , 1] <- ["apple", "b", 1], => ["apple", "b", 1]
          [_, _, gid] <- ["abc","d","egg"]
          #[_, _, gid] <- ["abc","egg"] => ["abc","egg"]
     do
       "Group: #{a}, User: #{gid}"
     end

IO.puts inspect(result)
