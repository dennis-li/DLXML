//
//  main.m
//  Example
//
//  Created by lixu on 17/1/16.
//  Copyright © 2017年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMLDocument.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //根结点
        XMLNode *root = [[XMLNode alloc] initWithName:@"CategoryList"];
        
        //初始化一个XML文档
        XMLDocument *xmlDocument = [[XMLDocument alloc] initWithVersion:@"1.0" encoding:@"UTF-8" root:root];
        
        //Category结点
        XMLNode *Category = [[XMLNode alloc] initWithName:@"CateGory"];
        
        //根结点添加Category子结点
        [root addChildXMLNode:Category];
        
        //ID属性
        XMLPropertyNode *categoryProperty = [[XMLPropertyNode alloc] init];
        categoryProperty.name = @"ID";
        categoryProperty.value = @"01";
        //Category添加属性
        [Category addXMLProperty:categoryProperty];
        
        //MainCategory结点
        XMLNode *MainCategory = [[XMLNode alloc] initWithName:@"MainCateGory"];
        MainCategory.text = @"XML";
        
        //Description结点
        XMLNode *Description = [[XMLNode alloc] initWithName:@"Description"];
        Description.text = @"This is a list my XML articles.";
        
        //Active结点
        XMLNode *Active = [[XMLNode alloc] initWithName:@"Active"];
        Active.text = @"true";
        
        //Category添加子结点
        [Category addChildXMLNode:MainCategory];
        [Category addChildXMLNode:Description];
        [Category addChildXMLNode:Active];
        
        /*验证读取父结点，并读取属性*/
        /*
         //读取Active结点的父结点
         XMLNode *parentNode = [Active parentXMLNode];
         //读取属性
         XMLPropertyNode *pro = [parentNode readPropertyWithName:@"ID"];
         NSLog(@"%@",pro.value);
         */
        
        /*验证删除子结点*/
        //[Category removeChildXMLNode:Active];
        
        
        NSString *XMLDocumentString = [xmlDocument XMLDocumentString];
        NSLog(@"%@",XMLDocumentString);
        
    }
    return 0;
}
