package com.onlinestorewepr.util;

public class MessageUtil {
  private String body;
  private String type;

  public MessageUtil() {
    this.body = "";
    this.type = "";
  }

  public String getBody() {
    return body;
  }

  public void setBody(String message) {
    this.body = message;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }
}
