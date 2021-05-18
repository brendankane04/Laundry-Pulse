#!/usr/bin/env python

import socket
import smtplib
import ssl


sender_email = "listbot89@gmail.com"
password = "Pazzword12345!"
users = ["brendankane04@gmail.com"]


# send an email with the string 'message' to every email address in 'receiver_list'
def send_email(receiver_list, message):
    port = 465  # For SSL
    smtp_server = "smtp.gmail.com"

    context = ssl.create_default_context()
    for receiver_email in receiver_list:
        with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
            server.login(sender_email, password)
            server.sendmail(sender_email, receiver_email, message)


TCP_IP = '10.0.0.104'
TCP_PORT = 50
BUFFER_SIZE = 64

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((TCP_IP, TCP_PORT))
s.listen(1)

conn, addr = s.accept()
while 1:
    data = conn.recv(BUFFER_SIZE)
    if not data:
        break
    send_email(["3017850599@vzwpix.com"], "Someone needs to move their laundry.\n\n-Laundrybot")

conn.close()
