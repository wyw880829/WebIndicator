# WebIndicator
网页加载指示器
## 使用方法

##将YWProgress的.h和.m文件拖到项目中
  
       // 1.懒加载创建指示器view
       - (YWProgress *)proV
       {
          if (_proV == nil) {
            _proV = [[YWProgress alloc] initWithFrame:CGRectMake(0, 100, SCREENWIDTH,     2)];
          [self.view addSubview:_proV];
          }
          return _proV;
       }
       // 2.
       // 开始动画
		- (IBAction)start:(id)sender {
    
    	[self.proV startAnimotion];
		}
		// 关闭动画
		- (IBAction)stop:(id)sender {
    	  [self.proV stopAnimotion];
		}

## 展示
![示例图片](https://git.oschina.net/Style_wyw/Style_ywImages/raw/master/images/indicator.gif?dir=0&filepath=images%2Findicator.gif&oid=474162241b5dba9b6dc552f5bab2046d77e8c69f&sha=6f44239605741e66d4cc87553afef0afd94bc567)