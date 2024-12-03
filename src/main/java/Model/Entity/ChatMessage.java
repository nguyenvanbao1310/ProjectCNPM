package Model.Entity;

public class ChatMessage {
    private String sender;     // IdNguoiGui
    private String receiver;   // IdNguoiNhan
    private String message;    // NoiDung
    private String timestamp;  // ThoiGian

    // Constructors
    public ChatMessage() {}

    public ChatMessage(String sender, String receiver, String message, String timestamp) {
        this.sender = sender;
        this.receiver = receiver;
        this.message = message;
        this.timestamp = timestamp;
    }

    // Getters and Setters
    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public String toString() {
        return "ChatMessage{" +
               "sender='" + sender + '\'' +
               ", receiver='" + receiver + '\'' +
               ", message='" + message + '\'' +
               ", timestamp='" + timestamp + '\'' +
               '}';
    }
}
