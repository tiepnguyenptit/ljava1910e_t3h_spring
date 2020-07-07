package application.model.viewmodel.common;

public class HeaderMenuVM {
    private String name;
    private String link;

    public HeaderMenuVM(String name, String link) {
        this.name = name;
        this.link = link;
    }

    public HeaderMenuVM() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
