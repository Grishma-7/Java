package model;



public class Product {
    private int productId;
    private String productName;
    private String productDescription;
    private double price;
    private int productStock;
    private String imagePath;
    

    
    
    
	public Product(int productId, String productName, String productDescription, double price, int productStock,
			int categoryId, String imagePath) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.price = price;
		this.productStock = productStock;
		this.imagePath = imagePath;
	}

	//Getter and setter

	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductDescription() {
		return productDescription;
	}


	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public int getProductStock() {
		return productStock;
	}


	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}



	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		// TODO Auto-generated method stub

		this.imagePath = imagePath;
	}





}
