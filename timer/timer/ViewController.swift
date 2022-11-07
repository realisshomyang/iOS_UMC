import UIKit
 
class ViewController: UIViewController {
 
    @IBOutlet var IbCurrentTIme: UILabel!//현재시간
    @IBOutlet var IbPickerTime: UILabel! //선택시간
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0 //타이머 간격 값
    var count = 0 //타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수
    var alarmTime: String?
    var mTimer: Timer?
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //타이머 설정
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
 
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
 
    @IBAction func changeDatePicker(_ sender: UIDatePicker) { //데이트피커 액션함수
        let datePickerView = sender
        
        let formatter = DateFormatter()
        // 날짜를 출력하기 위해 클래스 상수 선언
        
        formatter.dateFormat = "yyyy-MM-dd EEE hh:mm"
        //형식 지정해주기 "년-월-일 시:분:초 요일"
        IbPickerTime.text =
            "선택시간: " + formatter.string(from: datePickerView.date)
        
        alarmTime = formatter.string(from: datePickerView.date) //알람이 울리는 시간
        
    
    }
    
    @objc func updateTime() {
       // countTime.text = "count: " + String(count)
       // count = count + 1
        //타이머 처리 확인
        let date = NSDate() //현재시간 가져오기
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd EEE hh:mm"
        IbCurrentTIme.text = "현재시간: " + formatter.string(from: date as Date)
        
        let currentTime = formatter.string(from: date as Date) //현재시간
    
        if(alarmTime == currentTime) {
            view.backgroundColor = UIColor.gray
        } else {
            view.backgroundColor = UIColor.white
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 600){
                self.view.backgroundColor = UIColor.white
            }
        }
        
    }
