package ilovezc.bean;

public class Book {
    private String id;

    private Integer borrownum;

    private Double borrowtime;

    private String favouritebook;

    private String firstbook;

    private String firstbooktime;

    private String stuid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getBorrownum() {
        return borrownum;
    }

    public void setBorrownum(Integer borrownum) {
        this.borrownum = borrownum;
    }

    public Double getBorrowtime() {
        return borrowtime;
    }

    public void setBorrowtime(Double borrowtime) {
        this.borrowtime = borrowtime;
    }

    public String getFavouritebook() {
        return favouritebook;
    }

    public void setFavouritebook(String favouritebook) {
        this.favouritebook = favouritebook;
    }

    public String getFirstbook() {
        return firstbook;
    }

    public void setFirstbook(String firstbook) {
        this.firstbook = firstbook;
    }

    public String getFirstbooktime() {
        return firstbooktime;
    }

    public void setFirstbooktime(String firstbooktime) {
        this.firstbooktime = firstbooktime;
    }

    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) {
        this.stuid = stuid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", borrownum=").append(borrownum);
        sb.append(", borrowtime=").append(borrowtime);
        sb.append(", favouritebook=").append(favouritebook);
        sb.append(", firstbook=").append(firstbook);
        sb.append(", firstbooktime=").append(firstbooktime);
        sb.append(", stuid=").append(stuid);
        sb.append("]");
        return sb.toString();
    }
}