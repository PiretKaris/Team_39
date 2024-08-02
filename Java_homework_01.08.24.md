1.Send a POST request
public ResultItem sendItem(Item item)

2.You should send one object and receive a different object with different data

3.Test it out POSTMAN

For example:
//Send name -> Oskars
//Return OskarssraksO


DatoriumApiApplications.java
```java
public class DatoriumApiApplication {
    
    @PostMapping("/sendItem")
    public ResultItem sendItem(@RequestBody Item item) {
        var resultItem = new ResultItem();
        resultItem.resultName = item.name + "TEAM39";
        return resultItem;
    }
}```

Item.java
```java
package com.datorium.Datorium.API;

public class Item {
    public String name;
}```

ResultItem.java
```java
package com.datorium.Datorium.API;

public class ResultItem {
    public String resultName;
}```

![image](https://github.com/user-attachments/assets/c18784ef-f453-4c51-954f-028467ad88eb)

