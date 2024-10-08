// 1.Send a POST request - public ResultItem sendItem(Item item)

// 2.You should send one object and receive a different object with different data

// 3.Test it out POSTMAN

// For example: Send name -> Oskars; Return Oskars

*DatoriumApiApplications.java*
    
package com.datorium.Datorium.API;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;

@SpringBootApplication
@RestController
@CrossOrigin

public class DatoriumApiApplication {
    
    @PostMapping("/sendItem")
    public ResultItem sendItem(@RequestBody Item item) {
        var resultItem = new ResultItem();
        resultItem.resultName = item.name + "TEAM39";
        return resultItem;
    }
}

*Item.java*

package com.datorium.Datorium.API;

public class Item {
    public String name;
}

*ResultItem.java*

package com.datorium.Datorium.API;

public class ResultItem {
    public String resultName;
}

https://github.com/PiretKaris/Team_39/issues/1#issue-2445348294
