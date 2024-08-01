Task for us: 
1.Send a POST request

public ResultItem sendItem(Item item)

2.You should send one object and receive a different object with different data

3.Test it out POSTMAN

For example:
//Send name -> Oskars
//Return OskarssraksO


*RESULT*

```
java 
@PostMapping("/item")
    public ResultItem sendItem(@RequestBody Item item){ // username + password
        String originalName = item.getName();
        String resultName = originalName + new StringBuilder(originalName).reverse().toString();
        return new ResultItem(resultName);

    }
```
