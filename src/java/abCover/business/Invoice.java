
package abCover.business;
public class Invoice {
    private String user_email;
    private String chair_type;
    private int chair_amount;
    private String table_type;
    private int table_amount;
    private String plate_type;
    private int plate_amount;
    private String napkin_type;
    private int napkin_amount;
    private String utensil_type;
    private int utensil_amount;
    private double price;
    
    public Invoice(String user_email, String chair_type, int chair_amount, 
            String table_type, int table_amount, String plate_type, 
            int plate_amount, String napkin_type, int napkin_amount,
            String utensil_type, int utensil_amount,double price){
        this.user_email= user_email;
        this.chair_type = chair_type;
        this.chair_amount = chair_amount;
        this.table_type = table_type;
        this.table_amount = table_amount;
        this.plate_type = plate_type;
        this.plate_amount = plate_amount;
        this.napkin_type = napkin_type;
        this.napkin_amount = napkin_amount;
        this.utensil_type = utensil_type;
        this.utensil_amount = utensil_amount;
        this.price = price;
    }
    public String getUserEmail(){return user_email;}
    public String getChairType(){return chair_type;}
    public int getChairAmount(){return chair_amount;}
    public String getTableType(){return table_type;}
    public int getTableAmount(){return table_amount;}
    public String getPlateType(){return plate_type;}
    public int getPlateAmount(){return plate_amount;}
    public String getNapkinType(){return napkin_type;}
    public int getNapkinAmount(){return napkin_amount;}
    public String getUtensilType(){return utensil_type;}
    public int getUtensilAmount(){return utensil_amount;}
    public Double getPrice(){return price;}
}
