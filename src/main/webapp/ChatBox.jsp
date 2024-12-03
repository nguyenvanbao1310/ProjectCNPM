<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>ChatBox</title>
    <script>
        async function loadChatHistory() { //sau khi load thì gọi hàm render
            const sender = document.getElementById("sender").value;
            const receiver = document.getElementById("receiver").value;

            try {
                const response = await fetch(
                    "ChatBoxController?action=loadChatHistory&sender=" 
                    + encodeURIComponent(sender) 
                    + "&receiver=" + encodeURIComponent(receiver) //gửi yêu cầu đến controller để lấy lịch sử chat
                );
                if (response.ok) { //kiểm tra nếu có tin nhắn thì render
                    const messages = await response.json();
                    //console.log("Messages:", messages); 
                    renderChat(messages);
                } else {
                    console.error("Failed to load chat history.");
                }
            } catch (error) {
                console.error("Error loading chat history:", error);
            }
        }

        function renderChat(messages) { //Hiển thị lịch sử chat
            const chatHistory = document.getElementById("chatHistory");
            const sender = document.getElementById("sender").value;

            chatHistory.innerHTML = ""; 

            messages.forEach(msg => {
                console.log("Rendering message:", msg);
                
                const messageDiv = document.createElement("div");
                messageDiv.style.margin = "10px 0";

                if (msg.sender === sender) { //nếu là tin nhắn có sender trùng với sender hiện tại 
                    console.log("Right-align message from sender: " + msg.message); //hiển thị tin nhắn bên phải
                    messageDiv.style.textAlign = "right";
                    messageDiv.innerHTML = "<span style='background-color: #DCF8C6; color: black; padding: 10px; border-radius: 10px;'>" + msg.message + "</span>";
                } else {
                    console.log(`Left-align message from receiver: ` + msg.sender);
                    messageDiv.style.textAlign = "left"; //hiển thị tin nhắn người kia bên trái
                    messageDiv.innerHTML = "<span style='background-color: #FFF; color: black; padding: 10px; border-radius: 10px;'>" + msg.message+ "</span>";
                }
                chatHistory.appendChild(messageDiv);
            });

            chatHistory.scrollTop = chatHistory.scrollHeight;
        }

        async function sendMessage() { //event xảy ra khi nhập tin nhắn và click btnGui
            const sender = document.getElementById("sender").value;
            const receiver = document.getElementById("receiver").value;
            const message = document.getElementById("message").value.trim();

            if (!message) {
                alert("Message cannot be empty!");
                return;
            }

            try {
                const response = await fetch("ChatBoxController?action=sendMessage", { //lại gửi yêu cầu đến controller
                    method: "POST",
                    headers: { "Content-Type": "application/x-www-form-urlencoded" },
                    body: "sender=" + encodeURIComponent(sender) +
                          "&receiver=" + encodeURIComponent(receiver) +
                          "&message=" + encodeURIComponent(message)
                });

                if (response.ok) {
                    document.getElementById("message").value = ""; 
                    loadChatHistory(); //sau khi kiểm tra file json có dữ liệu trả về thì yêu cầu load lịch sửa chat
                } else {
                    const errorText = await response.text();
                    alert(`Error sending message: ${errorText}`);
                }
            } catch (error) {
                console.error("Error sending message:", error);
                alert("Failed to send message. Please try again.");
            }
        }

        window.onload = loadChatHistory; //Khi load tính năng ChatBox, hệ thống sẽ yêu cầu phương thức load tin nhắn đầu tiên
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        #chatHistory {
            border: 1px solid #ccc;
            padding: 10px;
            height: 300px;
            overflow-y: auto;
            background-color: #f5f5f5;
        }
        
        span {
            font-size: 14px;
            line-height: 1.5;
            word-wrap: break-word;
            color: blue;
        }
        
        #message {
            width: calc(100% - 80px);
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 60px;
            height: 40px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    
    <div id="chat-recipient" style="border: 1px solid #ccc; padding: 10px; margin-bottom: 10px;">
        <strong>Đang trò chuyện với:</strong> 
        <span id="chatting-with"></span>
    </div>

    <!-- Sender and Receiver IDs -->
    <input type="hidden" id="sender" value="0938072908">
    <input type="hidden" id="receiver" value="0392406660"> <!-- Giả định đây là id của 2 người sử dụng tính năng ChatBox -->
    <div id="chatHistory">Loading chat history...</div>

    <input type="text" id="message" placeholder="Enter message">
    <button onclick="sendMessage()">Send</button>
    
         
     <script>
        const sender = document.getElementById('sender').value;
        const receiver = document.getElementById('receiver').value;

        document.getElementById('chatting-with').textContent = receiver;
    </script>
    
</body>
</html>
