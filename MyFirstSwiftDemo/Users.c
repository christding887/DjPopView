//
//  Users.c
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/31.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

#include "Users.h"
static int sData = 10;

void* GenerateData(void)
{
    return &sData;
}


void UseData(const int *pData)
{
    printf("The data is: %d\n", *pData);
}

const void* _Nullable GenerateData2(void)
{
    return &sData;
}

void UseData2(int *pData)
{
    if(pData != NULL)
    printf("The data is: %d\n", pData[0]);
}
