# with 안에서 다양한 임시 변수 이용하는 실습
content = "Now is the time"

lp = with {:ok, file} = File.open("passwd.txt"),
          content     = IO.read(file, :all),
          :ok         = File.close(file),
          [_, uid, gid] = Regex.run(~r/^_lp:.*?:(\d+):(\d+)/m, content)
     do
       "Group: #{gid}, User: #{uid}"
     end

IO.puts lp
IO.puts content
