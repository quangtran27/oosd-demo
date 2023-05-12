package com.onlinestorewepr.util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailUtil {
  /**
  * A utility class for sending e-mail messages
  */
  public static void sendEmail(String to, String subject, String message, String username, String password) throws MessagingException {
    System.out.println("Preparing for sending email");
    Properties properties = new Properties();
    properties.put("mail.smtp.host", "smtp.gmail.com");
    properties.put("mail.smtp.port", "587");
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true"); // TLS
    properties.put("mail.smtp.ssl.trust", "*");

    // creates a new session with an authenticator
    Authenticator auth = new Authenticator() {
      public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
      }
    };

    Session session = Session.getInstance(properties, auth);

    // Creates a new e-mail message
    Message msg = new MimeMessage(session);
    msg.setFrom(new InternetAddress(username));
    msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
    msg.setSubject(subject);
    msg.setText(message);

    Transport.send(msg);

    System.out.println("Sent");
  }
}
