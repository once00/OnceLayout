# OnceLayout


## 安装
[OncePayManager使用方法](http://onceo.me/)
#### CocoaPods
在 Podfile 中添加 pod 'OnceLayout'。
执行 pod install 或 pod update。
导入 <OnceLayout.h>。

## 手动安装
1.下载 OnceLayout 文件夹内的所有内容。

2.将 OnceLayout 内的OnceLayout源文件添加(拖放)到你的工程。

##使用
```
UIView * view_one=[[UIView alloc]init];
    view_one.backgroundColor=[UIColor redColor];
    [self.view addSubview:view_one];
    view_one.width=50;
    view_one.height=50;
    view_one.once_rightToView(self.view, 10);
    view_one.once_topToView(self.view, 20);
    
    
    UIView * view_two=[[UIView alloc]init];
    view_two.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:view_two];
    view_two.width=200;
    view_two.height=200;
    view_two.once_rightToView(self.view, 100);
    view_two.once_topToView(self.view, 200);
    
    
    UIView * view_three=[[UIView alloc]init];
    view_three.backgroundColor=[UIColor greenColor];
    [view_two addSubview:view_three];
    view_three.width=80;
    view_three.height=80;
    view_three.once_leftToView(view_two, 20);
    view_three.once_topToView(view_two, 30);
    
    UIView * view_four=[[UIView alloc]init];
    view_four.backgroundColor=[UIColor greenColor];
    [self.view addSubview:view_four];
    view_four.width=80;
    view_four.height=80;
    view_four.once_leftToView(view_two, 20);
    view_four.once_topToView(view_two, 30);
    
    
    UIView * view_five=[[UIView alloc]init];
    view_five.backgroundColor=[UIColor greenColor];
    [self.view addSubview:view_five];
    view_five.width=80;
    view_five.height=80;
    view_five.once_topToView(view_two, 20);
    view_five.once_rightToView(self.view, 30);
```

## 系统要求
该项目最低支持 iOS 8.0 和 Xcode 8.0。

## 许可证
OnceLayout 使用 MIT 许可证，详情见 LICENSE 文件。