import 'package:whatsapp_clone/models/chat_model.dart';

import '../models/chat_message_model.dart';
import '../models/status_model.dart';

List<ChatModel> chats = [
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/39819/woman-girl-eye-models-39819.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Alisha",
    message: "Salamaleikho",
    time: "7:30",
    countMessage: 5,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Yoshua Reggy",
    message: "Are you Working tonigth?",
    time: "13:00",
    countMessage: 0,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Rob Stark",
    message: "Winter is Comming!!!",
    time: "10:00",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Aldebaran de Tauro",
    message: "no pasaran de la primera casa...",
    time: "6:50",
    countMessage: 3,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Milo de Escorpio",
    message:
        "no le hagan caso a aldebaran, le falta un cuerno y esta loco! jajaja",
    time: "7:00",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "A. Fujimori",
    message: "Soy  Inocente!!!",
    time: "9:55",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Mario B.",
    message: "",
    time: "12:00",
    countMessage: 0,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1200",
    username: "Kupa",
    message: "y luego cante: Peaches, peaches...peaches..peacheeesss!!!!",
    time: "15:00",
    countMessage: 15,
    isTyping: false,
  ),
];

List<ChatMessageModel> chatMessageList = [
  ChatMessageModel(
    messageContent: "Hola, esta todo bien por ahi?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "claro, todo esta muy bien",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "has escuchado de pin pon?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "pinpon?",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "si pinpon, es un muñeco, muy guapo y de cartón",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "jajajajajaja",
    messageType: "other",
  )
];

List<StatusModel> statusList = [
  StatusModel(
    avatarUrl: "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1200",
    userName: "Milo de Escorpio",
    time: "Just now",
  ),
  StatusModel(
    avatarUrl:
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200",
    userName: "Yoshua Reggy",
    time: "37 minutes ago",
  ),
  StatusModel(
    avatarUrl:
    "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1200",
    userName: "Mario B.",
    time: "Today, 1:02 AM",
  ),
  StatusModel(
    avatarUrl:
    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1200",
    userName: "Kupa",
    time: "Yesterday, 11:44 PM",
  ),
];
