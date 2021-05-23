package ilovezc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ForwardController {
    @RequestMapping("/index")
    public String index() {
        return "forward:/index.ftl";
    }
    @RequestMapping("/main")
    public String main() {
        return "main";
    }
    @RequestMapping("/info")
    public String info() {
        return "info";
    }
    @RequestMapping("/updatepass")
    public String updatepass() {
        return "updatepass";
    }
    @RequestMapping("/activity")
    public String activity() {
        return "activity";
    }
}
