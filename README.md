# CircleView
*转载请注明出处*

<h3>使用说明</h3>

1. 将文件拖到工程内，引入头文件

  `#import "CircleView.h"`

2. 调用initWithFrame初始化方法

  `CircleView *circle = [[CircleView alloc]initWithFrame:CGRectMake(0, 44, 100, 100)];`

3. 调用方法，通过设置setPaused控制动画：

  `[circle setPaused:NO];`

4. 添加到父视图

  `[self.view addSubview:circle];`

