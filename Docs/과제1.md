# 과제 1

### Button 달기

- ios에서는 ScreenBoard라는 곳에서 UI를 관여한다.
- 처음 프로젝트가 시작되면 Main.storyboard와 LaunchScreen.storyboard가 존재함.
  - Main.stroyboard : 주된 페이지의 화면
  - LaunchScreen.storyboard : 처음 앱에 접근 했을 때 나타나는 화면
- 화면 전환 : Storyboard 하단에 View as : 기기명 있는 부분에서 Device별, Orientation 별 view를 확인할 수 있다.
- ios는 Constraint View 가 기본으로 구성되어 있어 기준점을 맞춰주면 정렬이 가능하다.

### Button에 OnClick Action 만들기

- OnClick 할 경우 수행할 수 있는 동작 구성하는 법은 크게 2가지로 나뉜다.
  - View 안에서 동작하는 방법
  - View를 전환하는 방법

1. View 안에서 동작하는 방법

   - View 안에서 동작하게 하려면 ViewController에 Action을 달아준다. 
     (Control + Drag & drop)
   - Drag & drop을 하게 되면 ViewController에 함수가 생기는데 그곳에서 click시 발생하는 로직을 작성하면 된다.

2. View 전환하는 방법

   - Button Click시 화면을 전환하기 위해서는 새로운 ViewController를 만들어준다.
     (storyboard 내에서 홈버튼 -> ViewController 만들기)

   - 첫번째 View 안의 버튼에서 두번째 화면으로 (Control + Drag&drop) 하면 연결됨.

   - 어떤 방식으로 화면을 전환할 것인가에 대해 물어본다.  화면 전환 형식에 맞게 설정.
