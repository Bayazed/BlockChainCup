package demo.controllers;

import demo.models.Skill;
import demo.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class MainController {
    public static final Skill[] SKILLS = new Skill[] {
            new Skill(1, "Java"),
            new Skill(2, "C++"),
            new Skill(3, "Python"),
            new Skill(4, "PHP"),
            new Skill(5, "JavaScript"),
    };

    public ArrayList<User> users = new ArrayList<>();

    public User currentUser = null;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getMainPage() {
        return "index";
    }


    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegisterPage() {
        return "register";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage() {
        return "login";
    }


    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public String getUser(@PathVariable("id") int id, Model model) {
        if (users.get(id).equals(currentUser)) {
            return "redirect:/profile";
        }
        User user = users.get(id);
        ArrayList<Skill> accessSkills = new ArrayList<>();

        model.addAttribute("login", user.getLogin());
        model.addAttribute("alpha", user.getAlpha());
        model.addAttribute("beta_a", user.getBeta_a());
        model.addAttribute("beta_b", user.getBeta_b());
        model.addAttribute("beta_c", user.getBeta_c());
        model.addAttribute("beta_d", user.getBeta_d());

        for (Skill skill: SKILLS) {
            boolean flag = true;
            for(Skill userSkill: user.getSkills().keySet()) {
                if (skill.getId() == userSkill.getId()) {
                    flag = false;
                }
            }
            if (flag) {
                accessSkills.add(skill);
            }
        }
        model.addAttribute("skills", accessSkills.toArray());
        model.addAttribute("userSkills", user.getSkills());
        return "user";
    }

    @RequestMapping(value = "/result", method = RequestMethod.POST)
    public String getResult(@RequestParam(name = "login") String login,
                            @RequestParam(name = "password") String password,
                            @RequestParam(name = "type") String type) {
        User newUser = new User(users.size(), login, password, null);
        if (type.equals("0") && !users.contains(newUser)) {
            users.add(newUser);
            currentUser = newUser;
            return "redirect:/profile";
        } else if (type.equals("1") && users.contains(newUser)) {
            currentUser = newUser;
            return "redirect:/profile";
        } else if (type.equals("0")) {
            return "redirect:/register";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String getProfile(Model model) {
        ArrayList<Skill> accessSkills = new ArrayList<>();

        model.addAttribute("login", currentUser.getLogin());
        model.addAttribute("alpha", currentUser.getAlpha());
        model.addAttribute("beta_a", currentUser.getBeta_a());
        model.addAttribute("beta_b", currentUser.getBeta_b());
        model.addAttribute("beta_c", currentUser.getBeta_c());
        model.addAttribute("beta_d", currentUser.getBeta_d());

        for (Skill skill: SKILLS) {
            boolean flag = true;
            for(Skill userSkill: currentUser.getSkills().keySet()) {
                if (skill.getId() == userSkill.getId()) {
                    flag = false;
                }
            }
            if (flag) {
                accessSkills.add(skill);
            }
        }
        model.addAttribute("skills", accessSkills.toArray());
        model.addAttribute("userSkills", currentUser.getSkills());
        return "profile";
    }

    @RequestMapping(value = "/add_skill", method = RequestMethod.POST)
    public String addSkill(HttpServletRequest request) {
        for (String nameSkill: request.getParameterMap().keySet()) {
            for (Skill skill: SKILLS) {
                if (nameSkill.equals(skill.getName())) {
                    currentUser.getSkills().put(skill, 60);
                }
            }
        }
        return "redirect:/profile";
    }
}
