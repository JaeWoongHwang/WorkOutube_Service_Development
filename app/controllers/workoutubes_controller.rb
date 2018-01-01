class WorkoutubesController < ApplicationController
  def keyboard
    home_keyboard = {
      type: "buttons",
      buttons: ["가슴", "어깨", "등", "팔", "하체"]
      }
    render json: home_keyboard
  end

  def message
    user_message = params[:content]

    return_text = "테스트"
  case n
  when user_message ==  "가슴"
    buttons: ["벤치프레스", "인클라인프레스", "케이블크로스오버"]
      if user_message == "벤치프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "인클라인프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "케이블크로스오버"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      end
  when user_message ==  "어꺠"
    buttons: ["레터럴레이즈", "밀리터리프레스", "업라이트로우"]
      if user_message == "레터럴레이즈"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "밀리터리프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "업라이트로우"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      end
  when user_message ==  "등"
    buttons: ["랫풀다운", "시티드로우", "데드리프트"]
      if user_message == "렛풀다운"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "시티드로우"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "데드리프트"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      end
  when user_message ==  "팔"
    buttons: ["바벨컬", "덤벨컬", "딥스"]
      if user_message == "바벨컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "덤벨컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "딥스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      end
  when user_message == "하체"
    buttons: ["스쿼트", "런지", "레그프레스"]
      if user_message == "스쿼트"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "런지"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "레그프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      end
  else
    return_text = "현재 볼 수 있는 운동 동작은 가슴, 어깨, 등, 팔, 하체 입니다."
  end

    home_keyboard = {
      type: "buttons",
      buttons: ["가슴", "어깨", "등", "팔", "하체"]
    }

    return_message = {
      message: {
          text: user_message,
          message_button: {
            label: user_message + " " + "자세 영상",
            url: return_url
          }
          },
      keyboard: home_keyboard
    }

      render json: return_message
  end
end
