import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
  Story(
    storyTitle:
      'Bạn tỉnh dậy trong một ngôi nhà hoang lúc nửa đêm, chỉ có một chiếc đèn pin le lói. Tiếng kêu lạ vọng từ tầng trên. Bạn sẽ:',
    choice1: 'Leo lên tầng xem chuyện gì đang xảy ra.',
    choice2: 'Bỏ chạy ra cửa chính tìm đường thoát.'
  ),
  Story(
    storyTitle:
      'Khi lên đến tầng hai, bạn nhìn thấy một chiếc bóng di chuyển nhanh. Đột nhiên cửa phòng đóng sầm lại. Bạn sẽ:',
    choice1: 'Đập cửa tìm cách thoát ra.',
    choice2: 'Âm thầm lùi xuống cầu thang tìm lối khác.'
  ),
  Story(
    storyTitle:
      'Bạn tìm thấy một hầm ngầm bí mật phía sau giá sách, có ánh sáng mờ tỏ từ bên trong. Bạn sẽ:',
    choice1: 'Chui vào hầm ngầm khám phá.',
    choice2: 'Quay lại cửa chính, gọi trợ giúp.'
  ),
  Story(
    storyTitle:
      'Bên trong hầm ngầm là một căn phòng chứa đầy búp bê cũ với đôi mắt dán kín. Một giọng thì thầm vang lên: “Giúp tôi…”. Bạn sẽ:',
    choice1: 'Đến gần búp bê, tìm nguồn phát âm thanh.',
    choice2: 'Chạy ra khỏi hầm, đóng sập cửa lại.'
  ),
  Story(
    storyTitle:
      'Bạn phát hiện một chiếc hộp gỗ cũ dưới búp bê. Bên trong có một quyển nhật ký ghi chú về lời nguyền. Bạn sẽ:',
    choice1: 'Đọc to câu thần chú cuối cùng.',
    choice2: 'Ngắt quyển nhật ký và chạy lên lầu tìm ánh sáng ban ngày.'
  ),
  Story(
    storyTitle:
      'Bạn buông cuốn nhật ký, cảm giác chóng mặt kéo tới. Màn hình tối dần… Kết thúc bí ẩn! ',
    choice1: 'Restart',
    choice2: ''
  ),
];


  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {

    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}