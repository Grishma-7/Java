package model;

public class Category {
    private int category_Id;
    private String category_Name;
    private String category_Image; // Add this to hold image file name/path

    // Constructor
    public Category(int category_Id, String category_Name, String category_Image) {
        this.category_Id = category_Id;
        this.category_Name = category_Name;
        this.category_Image = category_Image;
    }

    // Getters and Setters
    public int getCategory_Id() {
        return category_Id;
    }

    public void setCategory_Id(int category_Id) {
        this.category_Id = category_Id;
    }

    public String getCategory_Name() {
        return category_Name;
    }

    public void setCategory_Name(String category_Name) {
        this.category_Name = category_Name;
    }

    public String getCategory_Image() {
        return category_Image;
    }

    public void setCategory_Image(String category_Image) {
        this.category_Image = category_Image;
    }
}
