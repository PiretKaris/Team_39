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


Classes: 


```
java
package com.datorium.Datorium.API;


public class ResultItem {
    private String resultName;

    public ResultItem() {}

    public ResultItem(String resultName) {
        this.resultName = resultName;
    }

    public String getResultName() {
        return resultName;
    }

    public void setResultName(String resultName) {
       this.resultName = resultName;
    }
}

```


```
package com.datorium.Datorium.API;



public class Item {
    private String name;

    public Item() {}

    public Item(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
```




