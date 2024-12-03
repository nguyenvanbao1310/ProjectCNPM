
package util;

import jakarta.mail.*;
import jakarta.mail.internet.*;

import java.util.Properties;
public class EmailSender {
    public static void sendEmail(String to, String subject, String body) {
        
        String host = "smtp.gmail.com";
        final String from = "xxx"; 
        final String password = "xxx";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true"); 

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from)); 
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to)); 
            message.setSubject(subject); 
            message.setText(body); 

            Transport.send(message);
            System.out.println("Email đã được gửi thành công!");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}