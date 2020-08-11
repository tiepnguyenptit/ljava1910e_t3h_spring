package application.model.viewmodel.common;

public class ChartDataVM {

    private String label;
    private String value;

    public ChartDataVM() {
    }

    public ChartDataVM(String label, Long value) {
        this.label = label;
        this.value = value.toString();
    }

    public ChartDataVM(Integer label, Double value) {
        this.label = "Tháng " + label.toString();
        this.value = value.toString();
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
    
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
