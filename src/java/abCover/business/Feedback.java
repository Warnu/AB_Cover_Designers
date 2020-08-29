
package abCover.business;

public class Feedback {
    private String message_topic;
    private String first_name;
    private String last_name;
    private String user_email;
    private String phone_number;
    private String message_comment;
    
    public Feedback(String message_topic,String first_name, String last_name, 
            String user_email, String phone_number, String message_comment){
        this.message_topic = message_topic;
        this.first_name = first_name;
        this.last_name = last_name;
        this.user_email = user_email;
        this.phone_number = phone_number;
        this.message_comment = message_comment;
    }
    public String getMessageTopic(){return message_topic;};
    public String getFirstName(){return first_name;}
    public String getLastName(){return last_name;}
    public String getUserEmail(){return user_email;}
    public String getPhoneNumber(){return phone_number;}
    public String getMessageComment(){return message_comment;}
    
    public void setMessageTopic(String message_topic){this.message_topic=message_topic;}
    public void setFirstName(String first_name){this.first_name = first_name;}
    public void setLastName(String last_name){this.last_name = last_name;}
    public void setUserEmail(String user_email){this.user_email = user_email;}
    public void setPhoneNumber(String phone_number){this.phone_number = phone_number;}
    public void setMessageComment(String message_comment){this.message_comment = message_comment;}
}
