package application.model.viewmodel.common;

public class ChartDataVM {

    private String label;
    private Long value;

    public ChartDataVM() {
    }

    public ChartDataVM(String label, Long value) {
        this.label = label;
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Long getValue() {
        return value;
    }

    public void setValue(Long value) {
        this.value = value;
    }
}
