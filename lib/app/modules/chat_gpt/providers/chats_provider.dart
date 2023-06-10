import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../models/chat_model.dart';
import '../services/api_service.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];
  List<ChatModel> get getChatList {
    return chatList;
  }

  List<String> result = [
    "Bạn có thể đặt đồ ăn trực tuyến ngay trên trang app chúng tôi. Hãy khám phá menu đa dạng và đặt món ăn yêu thích của bạn chỉ trong vài bước đơn giản.",
    "Trải nghiệm dịch vụ đặt đồ ăn thuận tiện và nhanh chóng từ trang app của chúng tôi. Bạn có thể chọn từ hàng trăm món ăn và nhận giao hàng tận nơi hoặc tự đến lấy tại cửa hàng.",
    "Đặt đồ ăn ngay từ trang app của chúng tôi để tiết kiệm thời gian và tránh xếp hàng. Chỉ cần lướt qua menu, chọn món ưa thích và thanh toán trực tuyến, bạn sẽ có món ăn ngon tới tận tay trong thời gian ngắn.",
    "Hãy khám phá trang app đặt đồ ăn của chúng tôi để tận hưởng trải nghiệm đặt hàng dễ dàng và tiện lợi. Bạn có thể tùy chỉnh món ăn theo ý thích, thêm ghi chú và chọn phương thức thanh toán phù hợp.",
    "Trang app đặt đồ ăn của chúng tôi mang đến cho bạn sự thuận tiện và linh hoạt khi đặt hàng. Tìm kiếm các nhà hàng và quán ăn gần bạn, xem thực đơn và đặt món ngon ngay bây giờ với vài cú nhấp chuột.",
    "Với trang app đặt đồ ăn của chúng tôi, bạn sẽ không còn phải mất thời gian đến nhà hàng để đặt món. Chỉ cần ngồi tại nhà và đặt đồ ăn yêu thích của bạn trực tuyến, và chúng sẽ được giao tận nơi.",
    "Không cần phải gọi điện hay đến trực tiếp, bạn có thể đặt đồ ăn từ trang app của chúng tôi. Xem thực đơn, lựa chọn món ăn và đặt hàng dễ dàng chỉ trong vài phút.",
    "Trang app đặt đồ ăn của chúng tôi luôn cập nhật các món mới và ưu đãi hấp dẫn. Hãy đặt ngay để thưởng thức những món ngon và tiết kiệm hơn.",
    "Với trang app đặt đồ ăn, bạn có thể đặt món bất kỳ khi nào bạn muốn. Dù bạn đang ở nhà, văn phòng hay bất kỳ đâu, chỉ cần truy cập và đặt món ngon như ý.",
    "Hãy truy cập trang app của chúng tôi để tìm kiếm các nhà hàng và quán ăn phục vụ đồ ăn ngon. Đặt món ăn trực tuyến và chờ nhận giao hàng tận nơi trong thời gian ngắn.",
    "Dễ dàng tìm kiếm và đặt đồ ăn từ trang app của chúng tôi. Hệ thống đơn giản và tiện lợi giúp bạn có được món ăn yêu thích trong thời gian nhanh nhất.",
    "Trang app đặt đồ ăn của chúng tôi giúp bạn tiết kiệm thời gian và công sức khi đặt hàng. Tham khảo thực đơn, chọn món và thanh toán trực tuyến chỉ trong vài bước đơn giản.",
    "Đặt đồ ăn từ trang app của chúng tôi là cách tiện lợi và an toàn nhất. Bạn có thể xem các đánh giá của khách hàng trước đó và lựa chọn những món ăn phù hợp với khẩu vị của mình.",
    "Không cần phải gọi điện hay đến cửa hàng, chỉ cần truy cập trang app và đặt đồ ăn từ danh sách món phong phú. Bạn có thể xem thông tin chi tiết và lựa chọn món ngon theo ý thích.",
    "Với trang app đặt đồ ăn của chúng tôi, bạn có thể dễ dàng tìm kiếm các món ăn đặc trưng và đặt hàng ngay từ điện thoại di động của bạn. Đã đến lúc trải nghiệm thực đơn đa dạng và thuận tiện.",
    "Đặt đồ ăn trực tuyến từ trang app của chúng tôi để nhận được ưu đãi đặc biệt và giảm giá. Chúng tôi luôn cập nhật các chương trình khuyến mãi hấp dẫn để mang lại trải nghiệm tốt nhất cho bạn.",
    "Tận hưởng tiện ích của việc đặt đồ ăn từ trang app của chúng tôi. Bạn có thể đặt hàng từ bất kỳ đâu, bất kỳ lúc nào, và nhận món ngon đến tận cửa nhà một cách nhanh chóng.",
    "Đặt đồ ăn trực tuyến là cách thông minh và hiện đại để tiết kiệm thời gian. Trang app của chúng tôi đảm bảo món ăn sẽ được chuẩn bị và giao đến bạn trong thời gian ngắn nhất.",
    "Trang app đặt đồ ăn của chúng tôi có giao diện thân thiện và dễ sử dụng. Hãy truy cập để khám phá các món ăn hấp dẫn và đặt hàng ngay lập tức để thưởng thức.",
    "Với trang app đặt đồ ăn của chúng tôi, bạn có thể thoải mái lựa chọn và đặt món ăn theo sở thích cá nhân. Chúng tôi cam kết mang đến cho bạn trải nghiệm đặt hàng tuyệt vời và món ăn ngon nhất.",
  ];
  void addUserMessage({required String msg}) {
    chatList.add(ChatModel(msg: msg, chatIndex: 0));
    notifyListeners();
  }

  Future<void> sendMessageAndGetAnswers(
      {required String msg, required String chosenModelId}) async {
    Random random = Random();
    int randomNumber = random.nextInt(20);
    print(result[randomNumber]);
    chatList.add(ChatModel(msg: result[randomNumber], chatIndex: 1));
    // if (chosenModelId.toLowerCase().startsWith("gpt")) {
    //   chatList.addAll(((await ApiService.sendMessageGPT(
    //     message: msg,
    //     modelId: chosenModelId,
    //   )) as Iterable<ChatModel>));
    // } else {
    //   chatList.addAll((await ApiService.sendMessage(
    //     message: msg,
    //     modelId: chosenModelId,
    //   )) as Iterable<ChatModel>);
    // }
    notifyListeners();
  }
}
