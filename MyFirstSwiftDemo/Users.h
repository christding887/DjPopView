//
//  Users.h
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/31.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

#ifndef Users_h
#define Users_h

#include <stdio.h>
extern void* _Nonnull GenerateData(void);
extern void UseData(const int* _Nonnull pData);

extern const void* _Nullable GenerateData2(void);
extern void UseData2(int* _Nullable pData);
#endif /* Users_h */
