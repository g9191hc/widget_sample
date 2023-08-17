import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout.dart';

class SnackBarSample extends StatelessWidget {
  const SnackBarSample({super.key});

  // 이 위젯은 MaterialApp 위에서 불리고 있으므로, 현재 context에서는 SaffoldMessenger를 찾을 수 없음
  // 따라서 버튼이 눌리는 위치에서의 context를 얻기 위해서, 별도로 Builder로 버튼을 감싸서 구현했음
  @override
  Widget build(BuildContext context) {
    // 스낵바
    final SnackBar snackBar = SnackBar(
      //필수
      content: Text(
        '안녕하세요\n감사해요\n잘 있어요\n다시만나요',
        textAlign: TextAlign.center,
      ),
      action: SnackBarAction(label: 'action', onPressed: () {},),
      //스낵바 width대비 content가 차지하는 width의 비율이 주어진비율보다 크면 action이 content 아래로 이동함(기본값 0.25)
      actionOverflowThreshold: 0.3,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      //띄우기
      // behavior: SnackBarBehavior.floating,
      //behavior가 floating인 상태에서만 사용(안그러면 에러발생하므로 null을 넣어야 함)
      // width: MediaQuery.of(context).size.width-24,
      // 드래그시 사라지게 할 수 있는 방향 설정
      dismissDirection: DismissDirection.horizontal,
      // animation: ,
      backgroundColor: Colors.blueAccent,
      clipBehavior: Clip.none,
      duration: Duration(seconds: 2),
      elevation: 10,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
    onVisible: (){print('스낵바 떴음');},
    );

    return DefaultLayout(
      title: 'SnackBar',
      child: Center(
        // 위에서 언급했듯이, 일반적인 상황에서는 Builder는 필요없음(대부분 MaterialApp 아래에서 위젯이 호출될 것이기 때문)
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('SnackBar 보이기'),
          );
        }),
      ),
    );
  }
}
