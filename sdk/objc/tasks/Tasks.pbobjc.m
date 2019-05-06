// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tasks.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "Tasks.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - TasksRoot

@implementation TasksRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - TasksRoot_FileDescriptor

static GPBFileDescriptor *TasksRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tasks"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum Priority

GPBEnumDescriptor *Priority_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Low\000Medium\000High\000";
    static const int32_t values[] = {
        Priority_Low,
        Priority_Medium,
        Priority_High,
    };
    static const char *extraTextFormatInfo = "\003\000\003\000\001\006\000\002\004\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Priority)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Priority_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Priority_IsValidValue(int32_t value__) {
  switch (value__) {
    case Priority_Low:
    case Priority_Medium:
    case Priority_High:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - IDRequest

@implementation IDRequest

@dynamic id_p;

typedef struct IDRequest__storage_ {
  uint32_t _has_storage_[1];
  int64_t id_p;
} IDRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = IDRequest_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(IDRequest__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[IDRequest class]
                                     rootClass:[TasksRoot class]
                                          file:TasksRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(IDRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Task

@implementation Task

@dynamic id_p;
@dynamic title;
@dynamic category;
@dynamic priority;
@dynamic content;
@dynamic dueDate;

typedef struct Task__storage_ {
  uint32_t _has_storage_[1];
  Priority priority;
  NSString *title;
  NSString *category;
  NSString *content;
  NSString *dueDate;
  int64_t id_p;
} Task__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Task_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Task__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "title",
        .dataTypeSpecific.className = NULL,
        .number = Task_FieldNumber_Title,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Task__storage_, title),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "category",
        .dataTypeSpecific.className = NULL,
        .number = Task_FieldNumber_Category,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Task__storage_, category),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "priority",
        .dataTypeSpecific.enumDescFunc = Priority_EnumDescriptor,
        .number = Task_FieldNumber_Priority,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Task__storage_, priority),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "content",
        .dataTypeSpecific.className = NULL,
        .number = Task_FieldNumber_Content,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Task__storage_, content),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "dueDate",
        .dataTypeSpecific.className = NULL,
        .number = Task_FieldNumber_DueDate,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Task__storage_, dueDate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Task class]
                                     rootClass:[TasksRoot class]
                                          file:TasksRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Task__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Task_Priority_RawValue(Task *message) {
  GPBDescriptor *descriptor = [Task descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Task_FieldNumber_Priority];
  return GPBGetMessageInt32Field(message, field);
}

void SetTask_Priority_RawValue(Task *message, int32_t value) {
  GPBDescriptor *descriptor = [Task descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Task_FieldNumber_Priority];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)