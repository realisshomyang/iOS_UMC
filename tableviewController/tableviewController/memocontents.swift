//
//  memocontents.swift
//  tableviewController
//
//  Created by 조명근 on 2022/10/15.
//

import Foundation
class MemoContents {
    var contents : String       // 메모내용
    var date : Date             // 메모를 저장한 날짜
    
    init(contents: String) {    // 생성자를 만들어 초기값이 설정 될 수 있도록 한다.
        self.contents = contents
        date = Date()
    }
    
    static var imsiList = [     // 테이블뷰에 보여줄 임시데이터를 보관하는 배열을 만들어준다.
        MemoContents(contents: "1번메모입니다"),
        MemoContents(contents: "2번메모입니다"),
        MemoContents(contents: "3번메모입니다"),
        MemoContents(contents: "4번메모입니다"),
        MemoContents(contents: "5번메모입니다"),
        MemoContents(contents: "6번메모입니다"),
        MemoContents(contents: "7번메모입니다"),
        MemoContents(contents: "8번메모입니다"),
        MemoContents(contents: "9번메모입니다"),
        MemoContents(contents: "10번메모입니다"),
        MemoContents(contents: "11번메모입니다"),
        MemoContents(contents: "12번메모입니다"),
        MemoContents(contents: "13번메모입니다"),
        MemoContents(contents: "14번메모입니다"),
        MemoContents(contents: "15번메모입니다"),
        MemoContents(contents: "16번메모입니다"),
        MemoContents(contents: "17번메모입니다"),
        MemoContents(contents: "18번메모입니다"),
        MemoContents(contents: "19번메모입니다"),
        MemoContents(contents: "20번메모입니다")
    ]
}
