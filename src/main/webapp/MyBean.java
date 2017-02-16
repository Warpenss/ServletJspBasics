package main.webapp;

import javax.servlet.http.HttpServletRequest;
import java.util.Vector;

public class MyBean {
    Vector v = new Vector();
    String submit = "";
    String item = "";

    private void addItem(String name) {
        v.addElement(name);
    }

    private void removeItem(String name) {
        v.removeElement(name);
    }

    public void setItem(String name) {
        item = name;
    }

    public void setSubmit(String submit) {
        this.submit = submit;
    }

    public String[] getItem() {
        String[] items = new String[v.size()];
        v.copyInto(items);
        return items;
    }

    private void reset(){
        submit = "";
        item = "";
    }

    public void processRequest (HttpServletRequest request) {
        if (submit.equals(""))
            addItem(item);
        if (submit.equals("add"))
            addItem(item);
        else if (submit.equals("remove"))
            removeItem(item);

        reset();
    }


}
