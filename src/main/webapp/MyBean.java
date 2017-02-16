package main.webapp;

import javax.servlet.http.HttpServletRequest;
import java.util.Vector;

public class MyBean {
    private final Vector<String> v = new Vector<String>();
    private String submit = null;
    private String item = null;

    private void addItem(String name) {
        v.addElement(name);
    }

    private void removeItem(String name) {
        v.removeElement(name);
    }

    public void setItem(String name) {
        item = name;
    }

    public void setSubmit(String s) {
        submit = s;
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
        if (submit == null)
            addItem(item);
        if (submit.equals("add"))
            addItem(item);
        else if (submit.equals("remove"))
            removeItem(item);

        reset();
    }


}
