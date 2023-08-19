import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout.dart';

class SnackBarSample extends StatelessWidget {
  const SnackBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    // 스낵바
    final SnackBar snackBar = SnackBar(
      //필수
      content: Text(
        '안녕하세요\n감사해요\n잘 있어요\n다시만나요',
        textAlign: TextAlign.center,
      ),
      action: SnackBarAction(
        label: 'action',
        onPressed: () {},
      ),
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
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      onVisible: () {
        print('스낵바 떴음');
      },
    );

    return DefaultLayout(
      title: 'SnackBar',
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('SnackBar 보이기'),
        ),
      ),
    );
  }
}
