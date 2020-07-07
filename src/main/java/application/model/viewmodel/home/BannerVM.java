package application.model.viewmodel.home;


public class BannerVM {
    private String link;
    private String altText;
    private String imageUrl;

    public BannerVM(String link, String altText, String imageUrl) {
        this.link = link;
        this.altText = altText;
        this.imageUrl = imageUrl;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getAltText() {
        return altText;
    }

    public void setAltText(String altText) {
        this.altText = altText;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
