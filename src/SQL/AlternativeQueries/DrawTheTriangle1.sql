Set @i=21;
SELECT case when @i>=0 then repeat('* ', @i:= @i - 1)
       END FROM information_schema.tables LIMIT 20;