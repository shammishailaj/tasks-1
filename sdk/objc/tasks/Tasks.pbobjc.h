// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tasks.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum Priority

/** Priority is an enum used to describe task priority levels */
typedef GPB_ENUM(Priority) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Priority_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Priority_Low = 0,
  Priority_Medium = 1,
  Priority_High = 2,
};

GPBEnumDescriptor *Priority_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Priority_IsValidValue(int32_t value);

#pragma mark - TasksRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface TasksRoot : GPBRootObject
@end

#pragma mark - IDRequest

typedef GPB_ENUM(IDRequest_FieldNumber) {
  IDRequest_FieldNumber_Id_p = 1,
};

/**
 * IDRequest is a message used for identifying a task
 **/
@interface IDRequest : GPBMessage

/** id is the id of the task to retrieve */
@property(nonatomic, readwrite) int64_t id_p;

@end

#pragma mark - Task

typedef GPB_ENUM(Task_FieldNumber) {
  Task_FieldNumber_Id_p = 1,
  Task_FieldNumber_Title = 2,
  Task_FieldNumber_Category = 3,
  Task_FieldNumber_Priority = 4,
  Task_FieldNumber_Content = 5,
  Task_FieldNumber_DueDate = 6,
};

/**
 * Task is a generic task message
 **/
@interface Task : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite, copy, null_resettable) NSString *category;

@property(nonatomic, readwrite) Priority priority;

@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

@property(nonatomic, readwrite, copy, null_resettable) NSString *dueDate;

@end

/**
 * Fetches the raw value of a @c Task's @c priority property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Task_Priority_RawValue(Task *message);
/**
 * Sets the raw value of an @c Task's @c priority property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTask_Priority_RawValue(Task *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
