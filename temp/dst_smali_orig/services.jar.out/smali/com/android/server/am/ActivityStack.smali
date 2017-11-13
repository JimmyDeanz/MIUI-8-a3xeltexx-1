.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$1;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field static final SUPPORT_MULTIPLE_PAUSING_ACTIVITIES:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SCREENSHOTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final VALIDATE_TOKENS:Z

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field public aBoostParamVal:[I

.field public aBoostTimeOut:I

.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mConfigWillChange:Z

.field private mConfigurationHandled:Z

.field mCurrentUser:I

.field mDisplayId:I

.field mDragAndDropMode:Z

.field mFeatureMultiwindowRecentUI:Z

.field private mForcedFullscreen:Z

.field mFullscreen:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field mIgnoreAdjustLayer:Z

.field public mIsAnimationBoostEnabled:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field mNeedUpdateFocusWhileRemovingStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mOverrideConfig:Landroid/content/res/Configuration;

.field final mPausingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedIdleActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mStackType:I

.field mStackZone:I

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mTwiceResumeTop:Z

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mVRStack:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;II)V
    .locals 6
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;
    .param p3, "stackType"    # I
    .param p4, "zone"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    iput v2, p0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedIdleActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIgnoreAdjustLayer:Z

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mNeedUpdateFocusWhileRemovingStack:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mFeatureMultiwindowRecentUI:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mConfigurationHandled:Z

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->aBoostParamVal:[I

    :cond_0
    iput p3, p0, Lcom/android/server/am/ActivityStack;->mStackType:I

    iput p4, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFeatureMultiwindowRecentUI:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mVRStack:Z

    return-void
.end method

.method private adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z
    .locals 6
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move-object v1, p1

    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adjustFocusToNextVisibleStack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "myReason":Ljava/lang/String;
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v3

    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "myReason":Ljava/lang/String;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adjustFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "myReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eq v1, p1, :cond_4

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->isAllActivitiesFinishing(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eq v2, v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->isTopTaskExcludeFinishingTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v4, :cond_3

    invoke-direct {p0, v7, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_2

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .restart local v3    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private adjustHiddenTaskToBottomLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "adjustToBottom":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    const/4 v0, 0x1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    return v0
.end method

.method private clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_0

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private completePauseLocked(Z)V
    .locals 1
    .param p1, "resumeNext"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "resumeNext"    # Z
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_2

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :cond_1
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5, p2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    iget-wide v6, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v6

    iget-wide v8, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v6, v8

    .local v2, "diff":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    :try_start_0
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    .local v1, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v2    # "diff":J
    :cond_5
    iput-wide v10, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    return-void

    :cond_7
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_8
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_9

    const-string v6, "pause-config"

    invoke-virtual {p0, p2, v9, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_c

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto/16 :goto_0

    :cond_d
    const/4 p2, 0x0

    goto/16 :goto_0

    .restart local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_e
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_f

    if-eqz p2, :cond_3

    if-eq v4, p2, :cond_3

    :cond_f
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5, v8, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_1

    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :goto_1
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessRecord;->setKeepAlive(Z)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_5
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_1
.end method

.method private forceResumeTopActivityInnerLocked(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .local v2, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DSS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isn\'t topRunningActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->forceCallResumeActivity(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "numTasks":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, v5, :cond_0

    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v3

    .restart local v0    # "i":I
    .restart local v2    # "numTasks":I
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, p0, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isStackVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v2

    .restart local v0    # "i":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "arrangeReturnTo"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "arrangeReturnTo"    # Z
    .param p4, "showForAllUsers"    # Z

    .prologue
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v2    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    .local v4, "skip":Z
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    .local v0, "fromHome":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v7, p1, :cond_3

    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, "taskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_2
    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "skip":Z
    .end local v5    # "taskNdx":I
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "taskNdx":I
    if-eqz p2, :cond_4

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_5

    :cond_4
    if-nez p2, :cond_c

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_c

    :cond_5
    const/4 v3, 0x1

    .local v3, "notShownWhenLocked":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v3, :cond_6

    if-nez p4, :cond_8

    :cond_6
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .local v6, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_6

    .end local v6    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    :cond_8
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    return-void

    .end local v3    # "notShownWhenLocked":Z
    .restart local v0    # "fromHome":Z
    .restart local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "skip":Z
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_0

    :cond_a
    const/4 v7, 0x0

    goto :goto_0

    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "skip":Z
    .end local v5    # "taskNdx":I
    :cond_b
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1

    .restart local v5    # "taskNdx":I
    :cond_c
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isAllActivitiesFinishing(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "rootActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    const-string v2, "All activities are finishing of the task"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    .end local v0    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return v1
.end method

.method private isTopTaskExcludeFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "t":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is topTask exclude finishing tasks."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .end local v0    # "t":Lcom/android/server/am/TaskRecord;
    :cond_0
    return v2

    .restart local v0    # "t":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 9
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .local v1, "strData":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "nfc://secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "nfc://secure:it should not be shown "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_1
    return-void

    .end local v1    # "strData":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "strData":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    const/4 v2, 0x0

    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_0
    if-eqz p3, :cond_2

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    new-instance v6, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v6, "config":Landroid/content/res/Configuration;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/DssHelper;->getScalingFactorAdss(Ljava/lang/String;)F

    move-result v10

    .local v10, "dssScale":F
    invoke-static {v6, v10}, Lcom/android/server/am/ActivityManagerService;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .end local v10    # "dssScale":F
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_3

    const/4 v5, 0x1

    :goto_1
    new-instance v7, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v7, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    move v4, p2

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz p3, :cond_4

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    :goto_3
    const/4 v0, 0x1

    return v0

    .end local v6    # "config":Landroid/content/res/Configuration;
    :cond_2
    const/16 v0, 0x7544

    goto/16 :goto_0

    .restart local v6    # "config":Landroid/content/res/Configuration;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 23
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    const/4 v14, -0x1

    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .local v22, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v15

    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "i":I
    :goto_0
    if-le v12, v15, :cond_0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .local v10, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    .local v9, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    if-gez v14, :cond_2

    move v14, v12

    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "finishOnTaskLaunch":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .restart local v9    # "allowTaskReparenting":Z
    :cond_5
    if-eqz p3, :cond_2

    if-eqz v9, :cond_2

    if-eqz v21, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p4, :cond_6

    if-eqz v10, :cond_9

    :cond_6
    if-ltz v14, :cond_7

    move/from16 v17, v14

    .local v17, "start":I
    :goto_4
    move/from16 v16, v17

    .local v16, "srcPos":I
    :goto_5
    move/from16 v0, v16

    if-lt v0, v12, :cond_d

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_8

    :goto_6
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_7
    move/from16 v17, v12

    goto :goto_4

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "move-affinity"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_6

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_9
    if-gez p5, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    :cond_a
    if-ltz v14, :cond_b

    move/from16 v17, v14

    .restart local v17    # "start":I
    :goto_7
    move/from16 v16, v17

    .restart local v16    # "srcPos":I
    :goto_8
    move/from16 v0, v16

    if-lt v0, v12, :cond_c

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_b
    move/from16 v17, v12

    goto :goto_7

    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .local v19, "targetNdx":I
    if-lez v19, :cond_d

    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "replace"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d
    const/4 v14, -0x1

    goto/16 :goto_3
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 48
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v0

    .local v37, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v37, :cond_1

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v47, v0

    .local v47, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    .local v40, "prevTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    if-nez v32, :cond_9

    const-string v41, "noMoreActivities"

    .local v41, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v44

    .local v44, "stack":Lcom/android/server/am/ActivityStack;
    const-string v4, "noMoreActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v4

    goto :goto_0

    .end local v40    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v41    # "reason":Ljava/lang/String;
    .end local v44    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/16 v40, 0x0

    goto :goto_1

    .restart local v40    # "prevTask":Lcom/android/server/am/TaskRecord;
    .restart local v41    # "reason":Ljava/lang/String;
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    if-eqz v40, :cond_6

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const/16 v43, 0x1

    .local v43, "returnTaskType":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v5, "noMoreActivities"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v43    # "returnTaskType":I
    :cond_7
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v43

    goto :goto_2

    .restart local v43    # "returnTaskType":I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v41    # "reason":Ljava/lang/String;
    .end local v43    # "returnTaskType":I
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v4, v0, :cond_b

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(I)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v34, v0

    .local v34, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v40, :cond_c

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_c

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    :cond_c
    :goto_3
    const/16 v30, 0x0

    .local v30, "needsResume":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_15

    const/16 v30, 0x1

    :goto_4
    sget-boolean v4, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needsResume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / mChangedFocusedStackWhileSleeping=true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v4, v0, :cond_16

    if-nez v30, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v30    # "needsResume":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    move-object/from16 v0, v40

    if-eq v0, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v46, v4, 0x1

    .local v46, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto/16 :goto_3

    .end local v46    # "taskNdx":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v40, :cond_12

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    const/16 v43, 0x1

    .restart local v43    # "returnTaskType":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v5, "prevFinished"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v43    # "returnTaskType":I
    :cond_13
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v43

    goto :goto_5

    .restart local v43    # "returnTaskType":I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    if-nez v4, :cond_c

    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v43    # "returnTaskType":I
    .restart local v30    # "needsResume":Z
    :cond_15
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_17

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping resume of top activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is stopped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v45

    .local v45, "targetDisplayId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_1c

    const/16 v25, 0x1

    .local v25, "dontWaitForPause":Z
    :goto_6
    if-nez p1, :cond_19

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_19

    const/16 v25, 0x0

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    move/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v38

    .local v38, "pausing":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v25

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v4

    or-int v38, v38, v4

    :cond_1a
    if-eqz v38, :cond_1d

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    :cond_1b
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v25    # "dontWaitForPause":Z
    .end local v38    # "pausing":Z
    :cond_1c
    const/16 v25, 0x0

    goto :goto_6

    .restart local v25    # "dontWaitForPause":Z
    .restart local v38    # "pausing":Z
    :cond_1d
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "resume-no-history"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1e
    if-eqz p1, :cond_1f

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    if-eqz v32, :cond_2a

    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .local v22, "callingId":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9
    const/16 v21, 0x1

    .local v21, "anim":Z
    if-eqz p1, :cond_33

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    :goto_b
    const/16 v42, 0x0

    .local v42, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v21, :cond_36

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v36

    .local v36, "opts":Landroid/app/ActivityOptions;
    if-eqz v36, :cond_20

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v42

    :cond_20
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .end local v36    # "opts":Landroid/app/ActivityOptions;
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v28

    .local v28, "lastStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_45

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_45

    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v28, :cond_37

    const/16 v27, 0x0

    .local v27, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_d
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v29, v0

    .local v29, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    sget v4, Lcom/android/server/am/ActivityManagerService;->mSupportAggrKill:I

    if-lez v4, :cond_23

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_23

    const-string v4, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeTopActivityLocked() Aggressive kill try = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v6, "camera-start"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_23
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v39, v0

    .local v39, "prevOrientation":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    const/16 v35, 0x1

    .local v35, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_e
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v24

    .local v24, "config":Landroid/content/res/Configuration;
    if-eqz v24, :cond_24

    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v4

    if-nez v4, :cond_39

    const/16 v35, 0x1

    .end local v24    # "config":Landroid/content/res/Configuration;
    :cond_25
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v31, v0

    .local v31, "newOrientation":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    if-eqz v4, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_26

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleMinimizeAllPenWindow()V

    :cond_26
    if-eqz v35, :cond_3b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v33

    .local v33, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_27
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v4, :cond_28

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as resumed: lastState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastResumed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextNext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v21    # "anim":Z
    .end local v22    # "callingId":J
    .end local v27    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v29    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v31    # "newOrientation":I
    .end local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v35    # "notUpdated":Z
    .end local v39    # "prevOrientation":I
    .end local v42    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    :cond_2a
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    goto/16 :goto_8

    .restart local v22    # "callingId":J
    :catch_0
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_9

    :catch_1
    move-exception v26

    .local v26, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed trying to unstop package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_9

    .end local v26    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v21    # "anim":Z
    :cond_2b
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_2c

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_2d

    const/4 v4, 0x7

    :goto_10
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_a

    :cond_2d
    const/16 v4, 0x9

    goto :goto_10

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_2f
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_30

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_31

    const/4 v4, 0x6

    :goto_11
    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_31
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_32

    const/16 v4, 0x10

    goto :goto_11

    :cond_32
    const/16 v4, 0x8

    goto :goto_11

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_34
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_b

    .restart local v42    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_36
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_c

    .restart local v28    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_37
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v27, v0

    goto/16 :goto_d

    .restart local v27    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v35    # "notUpdated":Z
    .restart local v39    # "prevOrientation":I
    :cond_38
    const/4 v4, 0x0

    goto/16 :goto_e

    .restart local v24    # "config":Landroid/content/res/Configuration;
    :cond_39
    const/16 v35, 0x0

    goto/16 :goto_f

    .end local v24    # "config":Landroid/content/res/Configuration;
    .restart local v31    # "newOrientation":I
    .restart local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_3a
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_3b
    :try_start_2
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .local v20, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v20, :cond_3c

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "N":I
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_3c

    if-lez v19, :cond_3c

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .end local v19    # "N":I
    :cond_3c
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_3d

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    :cond_3d
    const/16 v4, 0x7537

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward(I)Z

    move-result v7

    move-object/from16 v0, v42

    invoke-interface {v4, v5, v6, v7, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .end local v20    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v27    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v31    # "newOrientation":I
    .end local v35    # "notUpdated":Z
    .end local v39    # "prevOrientation":I
    :goto_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eqz v32, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3e
    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v27    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v31    # "newOrientation":I
    .restart local v35    # "notUpdated":Z
    .restart local v39    # "prevOrientation":I
    :catch_2
    move-exception v26

    .local v26, "e":Ljava/lang/Exception;
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz v28, :cond_3f

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_3f
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restarting because process died: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_41

    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :cond_40
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_41
    if-eqz v28, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/16 v16, 0x0

    .local v16, "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    :cond_42
    new-instance v16, Lcom/android/server/wm/CustomStartingWindowData;

    .end local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    .restart local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v32

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v32

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_44

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v18, v0

    :goto_14
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    goto/16 :goto_13

    :cond_44
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    goto :goto_14

    .end local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v20    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_3
    move-exception v26

    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown during resume of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "resume-exception"

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v20    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v27    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v31    # "newOrientation":I
    .end local v35    # "notUpdated":Z
    .end local v39    # "prevOrientation":I
    :cond_45
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_46

    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_12

    :cond_46
    const/16 v16, 0x0

    .restart local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    :cond_47
    new-instance v16, Lcom/android/server/wm/CustomStartingWindowData;

    .end local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    .restart local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v32

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v32

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_49

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v18, v0

    :goto_16
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    goto/16 :goto_15

    :cond_49
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    goto :goto_16
.end method

.method private setVisible(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "containerNdx":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v1, v0, :cond_1

    const/16 v2, 0x753c

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v3, v6

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    goto :goto_1

    :cond_2
    const-string v1, "(none)"

    goto :goto_0
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x68

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_2
    if-eqz p2, :cond_3

    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_6

    const-string v0, "stop-config"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZZ)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z
    .param p4, "restoreFromRecent"    # Z

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZZI)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z
    .param p4, "restoreFromRecent"    # Z
    .param p5, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    and-int/lit16 v3, p5, 0x400

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    :goto_0
    if-nez p3, :cond_1

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method arrangeTaskToReturnToForTopTask(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "taskNdx":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v0    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    const-string v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    return-void
.end method

.method cancelInitializingActivities()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .local v0, "aboveTop":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V

    return-void
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z
    .param p4, "skipClearFocusActivity"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    if-nez p4, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    :cond_2
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz p3, :cond_3

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_5
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    :cond_8
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_0

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "close-sys"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .prologue
    const/4 v7, 0x0

    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v6, p2, Landroid/content/pm/ActivityInfo;->flags:I

    move-object v1, p0

    move-object v2, v0

    move v3, p6

    move v4, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .local v2, "activityRemoved":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_0

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_6
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7542

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p3, v7, v8

    const/4 v8, 0x5

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v3, 0x0

    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    .local v1, "hadApp":Z
    :goto_0
    if-eqz v1, :cond_6

    if-eqz p2, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v5, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_1
    const/4 v4, 0x0

    .local v4, "skipDestroy":Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :goto_2
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    .end local v1    # "hadApp":Z
    :cond_4
    move v1, v5

    goto/16 :goto_0

    .restart local v1    # "hadApp":Z
    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .end local v4    # "skipDestroy":Z
    :cond_6
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hadNoApp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .local v12, "printed":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Hist"

    const/4 v5, 0x1

    if-nez p3, :cond_1

    const/4 v6, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    if-eqz v12, :cond_0

    const/16 p7, 0x0

    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "targetTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V

    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V
    .locals 24
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "targetTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "visible"    # Z
    .param p5, "currentObscuredScreenZone"    # I

    .prologue
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .local v19, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v19, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    const/4 v3, 0x1

    .local v3, "aboveTop":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    if-nez v21, :cond_5

    const/4 v13, 0x1

    .local v13, "noStackActivityResumed":Z
    :goto_1
    if-nez p4, :cond_6

    const/4 v7, 0x1

    .local v7, "behindFullscreen":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v16, v21, -0x1

    .local v16, "startNdx":I
    const/4 v9, 0x0

    .local v9, "endNdx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isStackVisibleLocked()Z

    move-result v21

    if-nez v21, :cond_7

    const/4 v7, 0x1

    :goto_3
    move/from16 v14, p5

    .local v14, "obscuredScreenZone":I
    const/16 v20, 0x0

    .local v20, "visibleInTask":Z
    const/4 v6, 0x0

    .local v6, "activityScreenZone":I
    const/4 v11, 0x0

    .local v11, "isDisplayFullscreen":Z
    const/4 v10, 0x0

    .local v10, "hasDimTargetInTask":Z
    move/from16 v18, v16

    .local v18, "taskNdx":I
    :goto_4
    move/from16 v0, v18

    if-lt v0, v9, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskRecord;

    .local v17, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .local v5, "activityNdx":I
    :goto_5
    if-ltz v5, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_8

    :cond_4
    :goto_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    .end local v6    # "activityScreenZone":I
    .end local v7    # "behindFullscreen":Z
    .end local v9    # "endNdx":I
    .end local v10    # "hasDimTargetInTask":Z
    .end local v11    # "isDisplayFullscreen":Z
    .end local v13    # "noStackActivityResumed":Z
    .end local v14    # "obscuredScreenZone":I
    .end local v16    # "startNdx":I
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    .end local v18    # "taskNdx":I
    .end local v20    # "visibleInTask":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .restart local v13    # "noStackActivityResumed":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "behindFullscreen":Z
    .restart local v9    # "endNdx":I
    .restart local v16    # "startNdx":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "activityNdx":I
    .restart local v6    # "activityScreenZone":I
    .restart local v10    # "hasDimTargetInTask":Z
    .restart local v11    # "isDisplayFullscreen":Z
    .restart local v14    # "obscuredScreenZone":I
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v18    # "taskNdx":I
    .restart local v20    # "visibleInTask":Z
    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .local v15, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    if-eqz v3, :cond_9

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_4

    :cond_9
    const/4 v3, 0x0

    if-eqz v7, :cond_a

    if-nez v20, :cond_a

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    :cond_a
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_b

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    :cond_b
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    if-nez v21, :cond_14

    :cond_c
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_e

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v21

    if-nez v21, :cond_d

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v21

    if-nez v21, :cond_e

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_e

    :cond_d
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_e
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v21, v0

    if-nez v21, :cond_f

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    :cond_f
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_10
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_12

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v21

    if-nez v21, :cond_11

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v21

    if-nez v21, :cond_12

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v15, v13, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    :cond_12
    :goto_7
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v21, v0

    or-int p2, p2, v21

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    .local v12, "isMinimized":Z
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v21, v0

    if-eqz v21, :cond_18

    const/4 v7, 0x1

    goto/16 :goto_6

    .end local v12    # "isMinimized":Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_7

    :cond_14
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :try_start_0
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_15
    :goto_8
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    const/4 v13, 0x0

    goto :goto_7

    :cond_16
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_12

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v21, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making visibile: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "isMinimized":Z
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v21

    if-nez v21, :cond_4

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v21

    if-eqz v21, :cond_4

    const/4 v7, 0x1

    goto/16 :goto_6

    .end local v12    # "isMinimized":Z
    :cond_19
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    sget-object v21, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v21, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making hidden: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v15, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .end local v15    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_4

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "activityNdx":I
    .restart local v15    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    :catch_2
    move-exception v21

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    :goto_0
    return v19

    :cond_0
    sget-boolean v19, Lcom/android/server/am/ActivityManagerService;->DEBUG_DUALSCREEN:Z

    if-eqz v19, :cond_1

    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ensuring correct configuration: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v17

    .local v17, "topTask":Lcom/android/server/am/TaskRecord;
    const/16 v18, 0x0

    .local v18, "typeCascade":Z
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    :cond_2
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v19

    if-nez v19, :cond_7

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .local v6, "mConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    :cond_5
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    :cond_6
    const/16 v19, 0x1

    goto/16 :goto_0

    .end local v6    # "mConfig":Landroid/content/res/Configuration;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    .local v14, "prevFullscreen":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->forceStackToFullscreen(IZ)Landroid/content/res/Configuration;

    move-result-object v10

    .local v10, "newOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    goto/16 :goto_1

    .end local v10    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_8
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    const/16 v19, 0x1

    goto :goto_2

    :cond_9
    const/16 v19, 0x0

    goto :goto_2

    .restart local v10    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_a
    const/16 v19, 0x0

    goto :goto_3

    .end local v10    # "newOverrideConfig":Landroid/content/res/Configuration;
    .end local v14    # "prevFullscreen":Z
    .restart local v6    # "mConfig":Landroid/content/res/Configuration;
    :cond_b
    const/4 v7, 0x0

    .local v7, "nDisplayId":I
    const/4 v13, -0x1

    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .local v8, "newConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .end local v8    # "newConfig":Landroid/content/res/Configuration;
    .local v9, "newConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/DssHelper;->getScalingFactorAdss(Ljava/lang/String;)F

    move-result v5

    .local v5, "dssScale":F
    invoke-static {v9, v5}, Lcom/android/server/am/ActivityManagerService;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    move-object v8, v9

    .end local v5    # "dssScale":F
    .end local v9    # "newConfig":Landroid/content/res/Configuration;
    .restart local v8    # "newConfig":Landroid/content/res/Configuration;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v8, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .local v11, "oldConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    .local v12, "oldStackOverride":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v16

    .local v16, "stackChanges":I
    if-nez v16, :cond_12

    iget v0, v12, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    :cond_f
    iget v0, v12, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    iget v0, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    :cond_10
    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    :cond_11
    iget v0, v12, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    :cond_12
    const/4 v15, 0x0

    .local v15, "scheduleStackChangesWithoutRelaunch":Z
    if-eqz v15, :cond_13

    invoke-virtual {v11, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .local v4, "changes":I
    :goto_4
    if-nez v4, :cond_14

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    if-nez v15, :cond_14

    const/16 v19, 0x1

    goto/16 :goto_0

    .end local v4    # "changes":I
    :cond_13
    invoke-virtual {v11, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v19

    or-int v4, v19, v16

    goto :goto_4

    .restart local v4    # "changes":I
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-nez v19, :cond_16

    :cond_15
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_16
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mConfigurationHandled:Z

    move-object/from16 v0, p1

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v8, v0, v3, v1}, Landroid/app/MiuiThemeHelper;->canKeepActivityAlive(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v8

    if-eqz v8, :cond_miui_f

    const/4 v8, 0x1

    return v8

    :cond_miui_f
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v19

    xor-int/lit8 v19, v19, -0x1

    and-int v19, v19, v4

    if-nez v19, :cond_17

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v19, v0

    or-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mConfigurationHandled:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-nez v19, :cond_19

    :cond_18
    const/16 v19, 0x1

    const-string v20, "config"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    :goto_5
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_5

    :cond_1b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_5

    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface/range {v19 .. v21}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1d
    :goto_6
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    const/16 v19, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v19

    goto :goto_6
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v3, 0x1

    .local v3, "notCurrentUserTask":Z
    :goto_1
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "notCurrentUserTask":Z
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_1

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v7, :cond_1

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_3
    return-object v4

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "notCurrentUserTask":Z
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method findActivityLockedByName(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v13, 0x0

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    iget-object v7, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_0

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .local v8, "stackNdx":I
    iget-object v11, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .local v10, "taskNdx":I
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .local v2, "activityNdx":I
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "numStacks":I
    :goto_1
    if-ge v8, v5, :cond_0

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .local v3, "historyStack":Lcom/android/server/am/ActivityStack;
    iget-object v11, v3, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "numTasks":I
    :goto_2
    if-ge v10, v6, :cond_5

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "numActivities":I
    :goto_3
    if-ge v2, v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_3

    iget-boolean v12, v3, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v12, :cond_2

    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_2

    move-object v1, v13

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object v13, v1

    goto :goto_0

    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v4    # "numActivities":I
    :cond_5
    const/4 v10, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .locals 21
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "findReverse"    # Z

    .prologue
    const/4 v12, 0x0

    .local v12, "rTaskNdx":I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .local v6, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "cls":Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    .end local v3    # "cls":Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .local v18, "userId":I
    const/4 v5, 0x0

    .local v5, "findAr":Lcom/android/server/am/ActivityRecord;
    const/4 v10, 0x0

    .local v10, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    .local v9, "isFront":Z
    if-eqz v7, :cond_2

    const/16 v19, 0x1

    :goto_0
    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    and-int v8, v19, v20

    .local v8, "isDocument":Z
    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .local v4, "documentData":Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v17, v19, -0x1

    .local v17, "taskNdx":I
    :goto_2
    if-gez v17, :cond_4

    const/4 v11, 0x0

    :cond_1
    :goto_3
    return-object v11

    .end local v4    # "documentData":Landroid/net/Uri;
    .end local v8    # "isDocument":Z
    .end local v17    # "taskNdx":I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .restart local v8    # "isDocument":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "documentData":Landroid/net/Uri;
    .restart local v17    # "taskNdx":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    :cond_5
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    :cond_6
    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_5

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    iget v0, v11, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .local v15, "taskIntent":Landroid/content/Intent;
    iget-object v2, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .local v2, "affinityIntent":Landroid/content/Intent;
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_7

    const/16 v16, 0x1

    .local v16, "taskIsDocument":Z
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .local v14, "taskDocumentData":Landroid/net/Uri;
    :goto_4
    if-nez v8, :cond_9

    if-nez v16, :cond_9

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_3

    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIsDocument":Z
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v16, 0x1

    .restart local v16    # "taskIsDocument":Z
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .restart local v14    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIsDocument":Z
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "taskIsDocument":Z
    const/4 v14, 0x0

    .restart local v14    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_a

    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    :cond_a
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_5

    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    goto/16 :goto_3
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_1
    return v5

    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v1, :cond_2

    const-string v0, "ActivityManager"

    const-string v2, "this activity should not finish, because LockTaskMode is set"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_0

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate finish request for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v8, :cond_1

    const-string v8, "removeTask"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "clear-task-index"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    invoke-virtual {v8, p1}, Lcom/android/server/am/VirtualScreenPolicy;->relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v7, "task":Lcom/android/server/am/TaskRecord;
    const/16 v8, 0x7531

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object p4, v9, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .local v4, "index":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .local v5, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x80000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v5    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    .local v3, "forceToAnimation":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    const-string v8, "finishActivity"

    invoke-direct {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "clear"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .local v6, "root":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v6    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_4
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DualScreenTransition] Finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mResumedActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v8, p1, :cond_6

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v8, v9, :cond_9

    const/4 v8, 0x1

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_6
    if-gtz v4, :cond_a

    const/4 v2, 0x1

    .local v2, "endTask":Z
    :goto_1
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_7

    if-eqz v2, :cond_7

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DualScreenTransition] Finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isFinishWithCoupledTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isFinishWithCoupledTask()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " coupledTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_b

    const/16 v8, 0x9

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_c

    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, v7, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v8, :cond_9

    :cond_8
    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .end local v2    # "endTask":Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "endTask":Z
    :cond_b
    const/4 v8, 0x7

    goto :goto_2

    :cond_c
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    goto :goto_3

    .end local v2    # "endTask":Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    return-void
.end method

.method finishAllActivities()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "taskNdx":I
    :goto_0
    if-ltz v10, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "numActivities":I
    const/4 v7, 0x0

    .local v7, "activityNdx":I
    :goto_1
    if-ge v7, v9, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_0

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "force-stop"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    .end local v9    # "numActivities":I
    :cond_3
    return v5
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    return-object p1

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_0

    :cond_4
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_6

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_6
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .local v2, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p2, :cond_8

    if-ne p2, v6, :cond_7

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_8

    :cond_7
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_8

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_c

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    const-string v4, "finish-imm"

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_9
    const/4 v1, 0x0

    .local v1, "ensureActivitiesVisibilityNeeded":Z
    if-nez v0, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_b

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_b
    if-eqz v0, :cond_2

    move-object p1, v3

    goto/16 :goto_1

    .end local v0    # "activityRemoved":Z
    .end local v1    # "ensureActivitiesVisibilityNeeded":Z
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_e

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_d

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_6

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_6

    :cond_1
    const/4 v13, 0x1

    .local v13, "sameComponent":Z
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_2

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_5

    :cond_2
    if-nez v13, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_5

    :cond_3
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_5

    :cond_4
    if-nez p3, :cond_8

    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_7

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v13    # "sameComponent":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .restart local v13    # "sameComponent":Z
    :cond_7
    const/4 v1, 0x1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    .end local v13    # "sameComponent":Z
    :goto_4
    return v1

    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v8    # "activityNdx":I
    .restart local v12    # "numActivities":I
    .restart local v13    # "sameComponent":Z
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v10, :cond_9

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :cond_a
    const/4 v9, 0x1

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Force finishing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_c

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    :cond_b
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_c
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "force-stop"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "sameComponent":Z
    :cond_d
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_e
    move v1, v9

    goto :goto_4
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_2

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x0

    const-string v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_4

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "activityNdx":I
    move-object v0, p0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_5

    :cond_1
    :goto_0
    if-ltz v6, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_4

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_4

    :cond_3
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_4
    return-void

    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    if-ltz v6, :cond_0

    goto :goto_0
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 11
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const-string v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_3
    return-void
.end method

.method final forceResumeTopActivityLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->forceResumeTopActivityInnerLocked(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .local v6, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const-string v9, "all"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_0
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .end local v7    # "taskNdx":I
    :cond_0
    const-string v9, "top"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .local v8, "top":I
    if-ltz v8, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "listTop":I
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    .end local v8    # "top":I
    :cond_1
    return-object v0

    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .local v4, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .restart local v7    # "taskNdx":I
    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .local v5, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .local v8, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "globalLength":I
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tr":Lcom/android/server/am/TaskRecord;
    check-cast v8, Lcom/android/server/am/TaskRecord;

    .restart local v8    # "tr":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget v9, v9, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v10, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v9, v10, :cond_0

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x1000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "item":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/android/server/am/TaskRecord;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "i":I
    .end local v6    # "j":I
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method getGlobalTaskHistoryLocked()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStackId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZI)V
    .locals 18
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    move-object/from16 v0, p0

    if-ne v15, v0, :cond_1

    const/4 v6, 0x1

    .local v6, "focusedStack":Z
    :goto_0
    const/4 v14, 0x1

    .local v14, "topTask":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v11, v15, -0x1

    .local v11, "taskNdx":I
    :goto_1
    if-ltz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .local v10, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-nez v15, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .end local v6    # "focusedStack":Z
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "taskNdx":I
    .end local v14    # "topTask":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "focusedStack":Z
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "taskNdx":I
    .restart local v14    # "topTask":Z
    :cond_2
    const/4 v9, 0x0

    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v13, 0x0

    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    .local v7, "numActivities":I
    const/4 v8, 0x0

    .local v8, "numRunning":I
    iget-object v2, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_3

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v15

    if-nez v15, :cond_3

    iget v15, v10, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_0

    :cond_3
    const/4 v4, 0x0

    .local v4, "checkFlags":Z
    and-int/lit8 v15, p4, 0x4

    if-eqz v15, :cond_4

    iget-boolean v15, v10, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v15, :cond_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .local v3, "activityNdx":I
    :goto_3
    if-ltz v3, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .local v12, "tmp":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v15, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_6
    move-object v9, v12

    if-eqz v13, :cond_7

    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v16, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    :cond_7
    move-object v13, v9

    const/4 v8, 0x0

    move v7, v8

    :cond_8
    add-int/lit8 v7, v7, 0x1

    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_5

    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v12    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_9
    new-instance v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .local v5, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v15, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-wide v0, v10, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    if-eqz v6, :cond_a

    if-eqz v14, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    const/4 v14, 0x0

    :cond_a
    iget-wide v0, v10, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v15, :cond_b

    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    :cond_b
    iput v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    iput v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "checkFlags":Z
    .end local v5    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "numActivities":I
    .end local v8    # "numRunning":I
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_c
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getZone()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    return v0
.end method

.method goToSleep()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v3, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.user_handle"

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Force finishing activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v4, v9, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .end local v3    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllHidden()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isAllHidden(Z)Z

    move-result v0

    return v0
.end method

.method public isAllHidden(Z)Z
    .locals 5
    .param p1, "isFinishing"    # Z

    .prologue
    const/4 v3, 0x0

    .local v3, "visible":Z
    const/4 v0, 0x0

    .local v0, "hasHidden":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    :goto_0
    return v4

    :cond_3
    if-nez v3, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFixedOrientationDeclared(I)Z
    .locals 2
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isFloatingStack()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceHideCascade()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isForceHideCascade()Z

    move-result v0

    return v0
.end method

.method final isHomeStack()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p1, v1

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v1, p0, :cond_0

    const-string v1, "ActivityManager"

    const-string v2, "Illegal state! task does not point to stack it is in."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method final isMultiWindowStack()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isNormalAppStack()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isSplitStack()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackZone:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackVisibleLocked()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v10, v4, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v10, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .local v6, "taskNdx":I
    :goto_2
    if-ltz v6, :cond_3

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "activityNdx":I
    :goto_3
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v10, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v10, :cond_5

    iget-boolean v10, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v10, :cond_5

    iget-boolean v10, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    if-nez v10, :cond_5

    iget-boolean v10, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_7
    move v8, v9

    goto :goto_0
.end method

.method final isVRStack()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 4
    .param p1, "homeStackTaskType"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void

    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final moveTaskToBackLocked(ILjava/lang/String;)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final moveTaskToBackLocked(ILjava/lang/String;Z)Z
    .locals 21
    .param p1, "taskId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "forceToBottom"    # Z

    .prologue
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v16

    .local v16, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v16, :cond_0

    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "moveTaskToBack: bad taskId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "moveTaskToBack: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .local v8, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v8, :cond_2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    :cond_2
    if-eqz v8, :cond_3

    const/4 v7, 0x1

    .local v7, "moveOK":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    if-nez v7, :cond_3

    const/16 v17, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_1

    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v7    # "moveOK":Z
    .end local v8    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v12, 0x0

    .local v12, "prevIsHome":Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v4, 0x1

    .local v4, "canGoHome":Z
    :goto_2
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .local v9, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v9, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v9    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "lastIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "numTasks":I
    add-int/lit8 v14, v10, -0x1

    .local v14, "taskNdx":I
    :goto_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v14, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .local v13, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v17

    if-eqz v17, :cond_b

    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(IZ)V

    move v11, v10

    .local v11, "numTasksHiddenExclude":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    :goto_5
    if-nez v12, :cond_8

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_6

    if-nez v4, :cond_8

    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v10, v0, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v11, v0, :cond_7

    if-eqz p3, :cond_f

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    const/16 v17, 0x0

    goto/16 :goto_0

    .end local v4    # "canGoHome":Z
    .end local v6    # "lastIndex":I
    .end local v10    # "numTasks":I
    .end local v11    # "numTasksHiddenExclude":I
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskNdx":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .restart local v4    # "canGoHome":Z
    .restart local v9    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_3

    .end local v9    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "lastIndex":I
    .restart local v10    # "numTasks":I
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "taskNdx":I
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_4

    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "numTasksHiddenExclude":I
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v15

    .local v15, "taskToReturnTo":I
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "moveTaskToBack"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v17

    goto/16 :goto_0

    .end local v15    # "taskToReturnTo":I
    :cond_f
    if-eqz p2, :cond_10

    const-string v17, "moveOppositeTaskToBack_schIdle"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_11
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;)V
    .locals 8
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "flags"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;Z)V

    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;Z)V
    .locals 15
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "flags"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "isDoResume"    # Z

    .prologue
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "numTasks":I
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, "index":I
    if-eqz v6, :cond_0

    if-gez v5, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const/16 v11, 0xa

    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v0}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_3
    const/4 v8, 0x0

    .local v8, "showForAllUsers":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v12, v8}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    const/4 v3, 0x0

    .local v3, "forceUpdate":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p6

    invoke-virtual {v11, v7, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    if-eqz v7, :cond_5

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v9, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v9, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11, v12, v9}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .end local v9    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6
    if-eqz p7, :cond_7

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_7
    const/16 v11, 0x7532

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_0

    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_8
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v11

    if-nez v11, :cond_9

    const/16 v11, 0x12c

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_2

    :cond_9
    const/16 v11, 0xa

    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v0}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 7
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;)V

    return-void
.end method

.method final moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method final moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    .local v0, "homeStack":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "lastFocusStack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    check-cast v1, Lcom/android/server/am/ActivityStack;

    .restart local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    iget v5, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v3, v4, p1, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .end local v0    # "homeStack":Z
    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 42
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .local v24, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    .local v40, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v40, :cond_1

    :cond_0
    const/16 v30, 0x0

    :goto_0
    return v30

    :cond_1
    add-int/lit8 v29, v40, -0x1

    .local v29, "finishTo":I
    if-gez v29, :cond_3

    const/16 v33, 0x0

    .local v33, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_1
    const/16 v30, 0x0

    .local v30, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    .local v26, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_2

    if-eqz v26, :cond_2

    move/from16 v31, v29

    .local v31, "i":I
    :goto_2
    if-ltz v31, :cond_2

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .local v37, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v29, v31

    move-object/from16 v33, v37

    const/16 v30, 0x1

    .end local v31    # "i":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v25, v0

    .local v25, "controller":Landroid/app/IActivityController;
    if-eqz v25, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v32, :cond_5

    const/16 v39, 0x1

    .local v39, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v39

    :goto_3
    if-nez v39, :cond_5

    const/16 v30, 0x0

    goto :goto_0

    .end local v25    # "controller":Landroid/app/IActivityController;
    .end local v26    # "dest":Landroid/content/ComponentName;
    .end local v30    # "foundParentInTask":Z
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "resumeOK":Z
    :cond_3
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v33, v2

    goto :goto_1

    .restart local v26    # "dest":Landroid/content/ComponentName;
    .restart local v30    # "foundParentInTask":Z
    .restart local v31    # "i":I
    .restart local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v31, v31, -0x1

    goto :goto_2

    .end local v31    # "i":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "controller":Landroid/app/IActivityController;
    .restart local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "resumeOK":Z
    :catch_0
    move-exception v28

    .local v28, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_3

    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .local v34, "origId":J
    move/from16 v31, v40

    .restart local v31    # "i":I
    :goto_4
    move/from16 v0, v31

    move/from16 v1, v29

    if-le v0, v1, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/16 p3, 0x0

    const/16 p4, 0x0

    add-int/lit8 v31, v31, -0x1

    goto :goto_4

    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v33, :cond_8

    if-eqz v30, :cond_8

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v36, v0

    .local v36, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v27

    .local v27, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v36

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v36

    if-eq v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x4000000

    and-int v2, v2, v27

    if-eqz v2, :cond_9

    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .end local v27    # "destIntentFlags":I
    .end local v36    # "parentLaunchMode":I
    :cond_8
    :goto_5
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .restart local v27    # "destIntentFlags":I
    .restart local v36    # "parentLaunchMode":I
    :cond_9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v33

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, v33

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v33

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v15, -0x1

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v38

    .local v38, "res":I
    if-nez v38, :cond_a

    const/16 v30, 0x1

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :goto_6
    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v11, "navigate-top"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_5

    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "res":I
    :cond_a
    const/16 v30, 0x0

    goto :goto_6

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :catch_1
    move-exception v28

    .restart local v28    # "e":Landroid/os/RemoteException;
    const/16 v30, 0x0

    goto :goto_6
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    .restart local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "focus"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    return-void
.end method

.method notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "focus"    # Z
    .param p4, "keepInputMethod"    # Z

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_3

    :cond_2
    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v3, :cond_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .restart local v0    # "N":I
    .restart local v1    # "cr":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "i":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "allInTask"    # Z

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/am/MultiWindowPolicy;->applyMetaDataMultiWindowOptions(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    .local v12, "minimizedActivity":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/high16 v19, 0x20000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_8

    const/4 v11, 0x0

    .local v11, "minimizableFromFull":Z
    :goto_1
    if-eqz v12, :cond_3

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    :cond_3
    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "origId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "tmp":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v13    # "tmp":Landroid/graphics/Bitmap;
    .end local v16    # "origId":J
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    packed-switch p2, :pswitch_data_0

    :cond_6
    :pswitch_0
    if-eqz p3, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "N":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "i":I
    :goto_2
    if-ltz v9, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .local v7, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .end local v6    # "N":I
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "i":I
    .end local v11    # "minimizableFromFull":Z
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_1

    .restart local v11    # "minimizableFromFull":Z
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v18

    if-nez v18, :cond_9

    if-eqz v11, :cond_c

    :cond_9
    :goto_4
    if-eqz v11, :cond_e

    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/am/MultiWindowPolicy;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_0

    :cond_c
    :pswitch_2
    if-eqz v12, :cond_6

    goto :goto_4

    :cond_d
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v18

    goto :goto_4

    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x400

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/4 v8, 0x1

    .local v8, "displayChanged":Z
    :goto_5
    if-eqz v8, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v10

    .local v10, "isFirstLaunch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "orgId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    if-nez v10, :cond_12

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6    # "N":I
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_7
    if-ltz v9, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    if-eq v0, v7, :cond_10

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    :cond_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .end local v6    # "N":I
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "displayChanged":Z
    .end local v9    # "i":I
    .end local v10    # "isFirstLaunch":Z
    .end local v14    # "orgId":J
    :cond_11
    const/4 v8, 0x0

    goto :goto_5

    .restart local v8    # "displayChanged":Z
    .restart local v10    # "isFirstLaunch":Z
    .restart local v14    # "orgId":J
    :cond_12
    const/16 v18, 0x0

    goto :goto_6

    .restart local v6    # "N":I
    .restart local v9    # "i":I
    :cond_13
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v10    # "isFirstLaunch":Z
    .end local v14    # "orgId":J
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6    # "N":I
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_8
    if-ltz v9, :cond_16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_15

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    :cond_15
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_0

    .end local v8    # "displayChanged":Z
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v18

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method numActivities()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method numTasks()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_3

    :cond_2
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "minimize-finish"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "N":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .local v7, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .locals 9
    .param p1, "movedTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-eqz p3, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_4

    iget-object v2, p2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2

    if-eq v2, v3, :cond_2

    invoke-virtual {p2, v7, v7, v7, v7}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    :cond_2
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne p2, v4, :cond_4

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v4, :cond_3

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postProcessAfterMovingTaskLocked: Setting mResumedActivity of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v3, p2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v7, v8, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZZ)Z

    .end local v3    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :cond_5
    return-void
.end method

.method prepareDisplayTransitions(IZILcom/android/server/am/ActivityRecord;)V
    .locals 19
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "targetDisplayId"    # I
    .param p4, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v8

    .local v8, "currObscuredScreenZone":I
    const/4 v13, 0x0

    .local v13, "isObscuredFullScreenZone":Z
    const/4 v10, 0x0

    .local v10, "enterTransition":Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .local v16, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "activityNdx":I
    :goto_2
    if-ltz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v17

    if-eqz v17, :cond_0

    iget-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p4

    if-eq v0, v14, :cond_0

    iget-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    .end local v11    # "i":I
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :pswitch_1
    const/4 v10, 0x1

    goto :goto_0

    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "activityNdx":I
    .restart local v11    # "i":I
    .restart local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-nez v13, :cond_2

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v17

    or-int v8, v8, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    const/4 v8, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_3

    :cond_2
    iget-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :cond_3
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v17

    or-int v8, v8, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    .end local v8    # "currObscuredScreenZone":I
    .end local v10    # "enterTransition":Z
    .end local v13    # "isObscuredFullScreenZone":Z
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_4
    return-void

    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "activityNdx":I
    .restart local v8    # "currObscuredScreenZone":I
    .restart local v10    # "enterTransition":Z
    .restart local v13    # "isObscuredFullScreenZone":Z
    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .end local v4    # "N":I
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    .end local v8    # "currObscuredScreenZone":I
    .end local v10    # "enterTransition":Z
    .end local v11    # "i":I
    .end local v13    # "isObscuredFullScreenZone":Z
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4    # "N":I
    const/4 v7, 0x0

    .local v7, "currDisplayObscureZone":I
    add-int/lit8 v11, v4, -0x1

    .restart local v11    # "i":I
    :goto_4
    if-ltz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->getObscuredScreenIds(Lcom/android/server/am/ActivityRecord;)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, "taskDisplayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, "displayId":I
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v17

    or-int v7, v7, v17

    move/from16 v0, p3

    if-eq v9, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v7, v0, :cond_7

    .end local v9    # "displayId":I
    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_0
.end method

.method releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v4, 0x6b

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseBackgroundResources: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no longer running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v5, 0x0

    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    if-lez v4, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v2, v9, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-lez v3, :cond_1

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    return v5
.end method

.method removeCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .locals 6
    .param p1, "finishingTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCoupledTask() finishingTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isFinishWithCoupledTask()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/RecentTasks;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .local v0, "childCoupledTask":Lcom/android/server/am/TaskRecord;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .end local v0    # "childCoupledTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .local v1, "coupledTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->arrangeTaskToReturnToForTopTask(Lcom/android/server/am/TaskRecord;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked()V

    .end local v1    # "coupledTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, p1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p1, v5}, Lcom/android/server/am/TaskRecord;->setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/am/RecentTasks;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p1, v5}, Lcom/android/server/am/TaskRecord;->setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_2
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 18
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v13, "mLRUActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v13, "mStoppingActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "mGoingToSleepActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v13, "mWaitingVisibleActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v13, "mFinishingActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "hasVisibleActivities":Z
    const/4 v10, 0x0

    .local v10, "skipClearFocusActivity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    .local v5, "i":I
    const/4 v7, -0x1

    .local v7, "keepTaskId":I
    const/4 v6, 0x0

    .local v6, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .local v11, "taskNdx":I
    :goto_0
    if-ltz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    iget-object v2, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_e

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v5, v5, -0x1

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    if-ne v12, v0, :cond_4

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_0

    const/4 v4, 0x1

    :cond_0
    :try_start_0
    const-string v12, ""

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v12, v12, Lcom/android/server/am/ActivityManagerService;->DEBUG_OPTION:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    const/16 v14, 0x80

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v15, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    invoke-interface {v12, v13, v14, v15}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v12, v12, Lcom/android/server/am/ActivityManagerService;->mWillStartLauncher:Z

    if-eqz v12, :cond_5

    if-eqz v6, :cond_5

    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_5

    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "com.samsung.android.keepAlive"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v8, v12, :cond_5

    const/4 v9, 0x0

    .local v9, "remove":Z
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/server/am/ActivityManagerService;->mWillStartLauncher:Z

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Do not remove activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " keepAlive"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v9, :cond_c

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_3

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Force removing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": app died, no saved state"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v12, :cond_2

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    :cond_2
    const/16 v12, 0x7531

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "proc died without state saved"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v13, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    const-string v12, "appDied"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_3
    :goto_4
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13, v10}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V

    if-eqz v9, :cond_4

    const-string v12, "appDied"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .end local v9    # "remove":Z
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_5
    const/4 v12, -0x1

    if-eq v7, v12, :cond_6

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v12, v7, :cond_6

    const/4 v9, 0x0

    .restart local v9    # "remove":Z
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Do not remove activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " keepTaskId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v9    # "remove":Z
    :cond_6
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v12, :cond_7

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v12, :cond_8

    :cond_7
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_9

    :cond_8
    const/4 v9, 0x1

    .restart local v9    # "remove":Z
    goto/16 :goto_3

    .end local v9    # "remove":Z
    :cond_9
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v12, :cond_a

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_a

    iget-wide v12, v8, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    sub-long v14, v14, v16

    cmp-long v12, v12, v14

    if-lez v12, :cond_a

    const/4 v9, 0x1

    .restart local v9    # "remove":Z
    goto/16 :goto_3

    .end local v9    # "remove":Z
    :cond_a
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v9, 0x1

    .restart local v9    # "remove":Z
    goto/16 :goto_3

    .end local v9    # "remove":Z
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "remove":Z
    goto/16 :goto_3

    :cond_c
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    iput-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v12, :cond_d

    const/4 v12, 0x0

    iput-object v12, v8, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v8, v12, :cond_3

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    goto/16 :goto_4

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "remove":Z
    :cond_e
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v12, v12, Lcom/android/server/am/ActivityManagerService;->mWillStartLauncher:Z

    if-eqz v12, :cond_10

    const/4 v4, 0x0

    .end local v4    # "hasVisibleActivities":Z
    :cond_10
    return v4

    .restart local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "activityNdx":I
    .restart local v4    # "hasVisibleActivities":Z
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v12

    goto/16 :goto_2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z
    .param p4, "exchange"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z
    .param p4, "exchange"    # Z
    .param p5, "updateFocus"    # Z
    .param p6, "displayChange"    # Z

    .prologue
    if-eqz p3, :cond_0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v10, 0x0

    move/from16 v0, p6

    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/wm/WindowManagerService;->removeTask(IZZ)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_1

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_1

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "taskNdx":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .local v7, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-eqz v8, :cond_2

    if-ge v6, v7, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    if-eqz p3, :cond_5

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_7

    const/4 v1, 0x1

    .local v1, "isVoiceSession":Z
    :goto_0
    if-eqz v1, :cond_3

    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v8, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .end local v1    # "isVoiceSession":Z
    :cond_5
    if-nez p4, :cond_6

    if-eqz p5, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    :goto_2
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v4, 0x1

    .local v4, "notHomeStack":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " leftTaskHistoryEmpty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "myReason":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v8, :cond_9

    const/4 v8, 0x0

    invoke-direct {p0, v8, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v8, v4, v2, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V

    .end local v2    # "myReason":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->adjustHiddenTaskToBottomLocked()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    goto :goto_2

    .end local v4    # "notHomeStack":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    .restart local v1    # "isVoiceSession":Z
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected removeTimeoutsForActivitiesLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 28
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    const/16 v27, 0x0

    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v20, -0x1

    .local v20, "replyChainEnd":I
    const/4 v12, 0x1

    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v21

    .local v21, "rootActivityNdx":I
    add-int/lit8 v17, v19, -0x1

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    .local v24, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .end local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v27

    .restart local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_3

    const/4 v15, 0x1

    .local v15, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .local v13, "clearWhenTaskReset":Z
    :goto_3
    if-nez v15, :cond_6

    if-nez v13, :cond_6

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    if-gez v20, :cond_2

    move/from16 v20, v17

    :cond_2
    :goto_4
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v15    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .restart local v15    # "finishOnTaskLaunch":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .restart local v10    # "allowTaskReparenting":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .restart local v13    # "clearWhenTaskReset":Z
    :cond_6
    if-nez v15, :cond_d

    if-nez v13, :cond_d

    if-eqz v10, :cond_d

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v11, v2

    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    :goto_5
    if-eqz v11, :cond_8

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .local v25, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_6
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    .local v26, "targetTaskId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    move/from16 v18, v12

    .local v18, "noOptions":Z
    if-gez v20, :cond_9

    move/from16 v23, v17

    .local v23, "start":I
    :goto_7
    move/from16 v22, v23

    .local v22, "srcPos":I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_a

    :goto_9
    add-int/lit8 v22, v22, -0x1

    goto :goto_8

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .restart local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v25

    .restart local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_6

    .restart local v18    # "noOptions":Z
    .restart local v26    # "targetTaskId":I
    :cond_9
    move/from16 v23, v20

    goto :goto_7

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "srcPos":I
    .restart local v23    # "start":I
    :cond_a
    const/4 v12, 0x0

    if-eqz v18, :cond_b

    if-nez v27, :cond_b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    if-eqz v27, :cond_b

    const/16 v18, 0x0

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    goto :goto_9

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    const/16 v20, -0x1

    goto/16 :goto_4

    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_d
    if-nez p2, :cond_e

    if-nez v15, :cond_e

    if-eqz v13, :cond_16

    :cond_e
    if-eqz v13, :cond_10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, "end":I
    :goto_a
    move/from16 v18, v12

    .restart local v18    # "noOptions":Z
    move/from16 v22, v17

    .restart local v22    # "srcPos":I
    :goto_b
    move/from16 v0, v22

    if-gt v0, v14, :cond_f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_12

    :cond_f
    const/16 v20, -0x1

    goto/16 :goto_4

    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_10
    if-gez v20, :cond_11

    move/from16 v14, v17

    .restart local v14    # "end":I
    goto :goto_a

    .end local v14    # "end":I
    :cond_11
    move/from16 v14, v20

    .restart local v14    # "end":I
    goto :goto_a

    .restart local v18    # "noOptions":Z
    .restart local v22    # "srcPos":I
    :cond_12
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_14

    :cond_13
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    :cond_14
    const/4 v12, 0x0

    if-eqz v18, :cond_15

    if-nez v27, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    if-eqz v27, :cond_15

    const/16 v18, 0x0

    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "reset-task"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_16
    const/16 v20, -0x1

    goto/16 :goto_4
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .local v4, "forceReset":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v4    # "forceReset":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    .restart local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2

    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "taskNdx":I
    if-ltz v7, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_4

    if-gez v8, :cond_8

    :cond_4
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    :cond_5
    if-eqz v9, :cond_6

    if-eqz p1, :cond_7

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_6
    :goto_4
    return-object p1

    :cond_7
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_4

    .end local v7    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_8
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_3
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v3, :cond_0

    if-ne v0, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mTwiceResumeTop:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v3, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    .local v2, "w":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v3, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    .local v0, "h":I
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "screenshot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const-string v4, "1"

    const-string v5, "sys.samsung.personalpage.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    goto :goto_0

    .end local v1    # "screenshot":Landroid/graphics/Bitmap;
    :cond_2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid thumbnail dimensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendActivityResultToOpposite(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .local v1, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v1, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_2

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, v1}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sendExpandRequestToActivityLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # I

    .prologue
    return-void
.end method

.method sendShrinkRequestIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    return-void
.end method

.method sendShrinkRequestToActivityLocked(Lcom/android/server/am/ActivityRecord;II)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "reason"    # I

    .prologue
    return-void
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    goto :goto_0
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z
    .param p4, "toTop"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;Z)V
    .locals 49
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z
    .param p4, "toTop"    # Z
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "onlyForOrientation"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v47, v0

    monitor-enter v47

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .local v29, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v29, :cond_0

    monitor-exit v47

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .local v30, "origId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v48

    monitor-enter v48
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->startPendingTraversal()V

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x2000000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v13, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v13, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v13, "diffStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v4, 0x2000000

    const/high16 v6, 0x2000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    invoke-virtual {v13, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/high16 v4, 0x10000000

    const/high16 v6, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    invoke-virtual {v13, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->stopPendingTraversal()V

    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v48
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v47

    goto :goto_0

    .end local v13    # "diffStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v29    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v30    # "origId":J
    :catchall_0
    move-exception v4

    monitor-exit v47
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v29    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v30    # "origId":J
    :cond_1
    const/16 v23, 0x0

    .local v23, "needPauseBackStacks":Z
    const/4 v15, 0x0

    .local v15, "forceUpdateAll":Z
    :try_start_3
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v4, v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-ne v4, v6, :cond_3

    :cond_2
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_3
    const/16 v22, 0x1

    .local v22, "needChangeStack":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v21, 0x1

    .local v21, "minimizedToCascade":Z
    :goto_2
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v15, 0x1

    :cond_4
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v23, 0x1

    :cond_5
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v23, 0x1

    :cond_6
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_7

    const/16 v23, 0x1

    :cond_7
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_8

    const/16 v23, 0x1

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const-string v7, "setMultiWindowStyle"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V

    :cond_9
    const/high16 v4, 0x20000

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v39

    .local v39, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v27, v4, -0x1

    .local v27, "nonFloatingTopTask":I
    :goto_3
    if-ltz v27, :cond_d

    move-object/from16 v0, v39

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v27, v27, -0x1

    goto :goto_3

    .end local v21    # "minimizedToCascade":Z
    .end local v22    # "needChangeStack":Z
    .end local v27    # "nonFloatingTopTask":I
    .end local v39    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_1

    .restart local v22    # "needChangeStack":Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_2

    .restart local v21    # "minimizedToCascade":Z
    .restart local v27    # "nonFloatingTopTask":I
    .restart local v39    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_d
    if-lez v27, :cond_e

    move-object/from16 v0, v39

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v6

    const-string v7, "setMultiWindowStyle"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    .end local v27    # "nonFloatingTopTask":I
    .end local v39    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_e
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/high16 v4, 0x800000

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v4

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v12

    .local v12, "bound":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityStack;

    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v43

    .local v43, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v43, :cond_f

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v44, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v44, "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v36

    .local v36, "stackId":I
    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v36

    invoke-virtual {v4, v0, v12}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_4

    .end local v12    # "bound":Landroid/graphics/Rect;
    .end local v15    # "forceUpdateAll":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v21    # "minimizedToCascade":Z
    .end local v22    # "needChangeStack":Z
    .end local v23    # "needPauseBackStacks":Z
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v36    # "stackId":I
    .end local v43    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v44    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catchall_1
    move-exception v4

    monitor-exit v48
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v15    # "forceUpdateAll":Z
    .restart local v21    # "minimizedToCascade":Z
    .restart local v22    # "needChangeStack":Z
    .restart local v23    # "needPauseBackStacks":Z
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityStack;

    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v43

    .restart local v43    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v43, :cond_11

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v44, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .restart local v44    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v28

    .local v28, "oldBound":Landroid/graphics/Rect;
    if-eqz v28, :cond_11

    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v24, "newBound":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10502e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v4, 0x800000

    const/4 v6, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_5

    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v24    # "newBound":Landroid/graphics/Rect;
    .end local v28    # "oldBound":Landroid/graphics/Rect;
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v43    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v44    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_12
    if-eqz p3, :cond_19

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_14

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v45

    .local v45, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .end local v45    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :goto_6
    if-eqz v22, :cond_2b

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v16, 0x1

    .local v16, "fromCascadeToOthers":Z
    :goto_7
    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    :cond_13
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    .local v34, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v34, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->stopPendingTraversal()V

    monitor-exit v48
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v47
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v16    # "fromCascadeToOthers":Z
    .end local v34    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_14
    :try_start_7
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_15

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_6

    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_17

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x2000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_17

    if-nez v23, :cond_17

    if-nez v15, :cond_17

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    :cond_16
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_6

    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_7

    .restart local v16    # "fromCascadeToOthers":Z
    .restart local v34    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    const/16 v37, 0x0

    .local v37, "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v37

    :goto_8
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v37

    if-eq v0, v4, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2a

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz p3, :cond_2a

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .local v38, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-nez p4, :cond_1e

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v38    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v37

    goto :goto_8

    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v38    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_1e
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v5, v4, :cond_1c

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1f
    const/16 v19, 0x0

    .local v19, "idx":I
    :goto_a
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_22

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v0, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v41, v0

    .local v41, "tid":I
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, v41

    if-eq v0, v4, :cond_21

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v6, v1}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v37

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v4, :cond_20

    const/4 v4, 0x1

    :goto_b
    const/4 v8, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v0, v7, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    :cond_20
    const/4 v4, 0x0

    goto :goto_b

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x1

    move/from16 v0, v41

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    goto :goto_c

    .end local v41    # "tid":I
    :cond_22
    if-eqz p4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v37

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    :cond_23
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/TaskRecord;

    .local v46, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_d

    .end local v46    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .end local v16    # "fromCascadeToOthers":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "idx":I
    .end local v34    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v37    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v38    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_25
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_26

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_26
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_27

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_27
    if-eqz v23, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v26

    .local v26, "nextStackId":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_28
    :goto_f
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .end local v26    # "nextStackId":I
    :cond_29
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->stopPendingTraversal()V

    monitor-exit v48
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v47
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .restart local v16    # "fromCascadeToOthers":Z
    .restart local v34    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v37    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_2a
    :try_start_9
    const-string v4, "setMultiWindowStyle"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v37

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    goto/16 :goto_e

    .end local v16    # "fromCascadeToOthers":Z
    .end local v34    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v37    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_2b
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_25

    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v33

    .local v33, "relativeStackId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v32

    .local v32, "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v6}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .end local v32    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "relativeStackId":I
    :cond_2c
    if-nez p6, :cond_25

    if-eqz v21, :cond_2f

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v4, v6, :cond_2f

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .restart local v38    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .local v20, "indexOfTask":I
    move/from16 v17, v20

    .local v17, "i":I
    :goto_11
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_2d

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/am/TaskRecord;

    .local v40, "tempTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_11

    .end local v40    # "tempTask":Lcom/android/server/am/TaskRecord;
    :cond_2d
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_2e

    const/4 v8, 0x0

    :goto_13
    const-string v9, "setMultiWindowStyle"

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_12

    :cond_2e
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_13

    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "i":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "indexOfTask":I
    .end local v38    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2f
    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v8, 0x0

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_30

    const/4 v10, 0x0

    :goto_14
    const-string v11, "setMultiWindowStyle"

    move-object/from16 v6, p0

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_30
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_14

    .restart local v26    # "nextStackId":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v35

    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_f

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .local v25, "newTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_f

    .end local v25    # "newTop":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "nextStackId":I
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .local v14, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v42

    .local v42, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v42, :cond_29

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_10
.end method

.method setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "srcMultiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "N":I
    move-object/from16 v7, p2

    .local v7, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->hasUnitaryOption()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v7    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .restart local v7    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->removeUnitaryOption()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v6

    .local v6, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    if-eqz v6, :cond_4

    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .local v10, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x200000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    .local v5, "isFullscreenOnly":Z
    if-nez v5, :cond_2

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-boolean v11, v10, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v11, :cond_2

    :cond_1
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_2
    const/16 v11, 0x800

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v5    # "isFullscreenOnly":Z
    .end local v10    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    .local v2, "changeMinimized":Z
    add-int/lit8 v3, v1, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_18

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x20000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto :goto_2

    :cond_7
    const/16 v11, 0x800

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowPolicy;->isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_8

    iget-boolean v11, v9, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v11, :cond_5

    :cond_8
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x200000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x800

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x1000000

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_2

    :cond_9
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x20000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_a
    if-nez v2, :cond_b

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    const/16 v11, 0x800

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    const/4 v12, 0x4

    invoke-virtual {v7, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    xor-int v2, v11, v12

    :cond_b
    const/4 v4, 0x0

    .local v4, "isFixedRatioNotNeeded":Z
    const v11, 0x8000

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v12, 0x8000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v4, 0x1

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    invoke-virtual {v9, v7, v11}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    :goto_3
    if-eqz v4, :cond_d

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v12, 0x8000

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_d
    iget v11, v9, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/am/TaskRecord;->setType(I)V

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_e
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_f
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_10

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x20000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_10
    const/4 v8, 0x1

    .local v8, "notifyReason":I
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_11

    or-int/lit8 v8, v8, 0x40

    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v8}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto/16 :goto_2

    .end local v8    # "notifyReason":I
    :cond_12
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_13

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x20000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_13

    const/4 v11, 0x3

    iput v11, v9, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    const/16 v11, 0x800

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_14

    if-eqz v6, :cond_14

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_14
    if-eqz v6, :cond_15

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x200000

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x1000000

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_15
    :goto_4
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v11, v12, :cond_17

    const/high16 v11, 0x10000000

    invoke-virtual {v7, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x10000000

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    :cond_16
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x1000000

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_4

    :cond_17
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v12, 0x10000000

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    .end local v4    # "isFixedRatioNotNeeded":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    :cond_19
    :goto_5
    return-void

    :cond_1a
    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowManagerService;->assignMultiWindowScale(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_5
.end method

.method setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V

    return-void
.end method

.method setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bound"    # Landroid/graphics/Rect;
    .param p3, "reason"    # I

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    or-int/lit8 v4, p3, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;I)V

    return-void
.end method

.method setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "reason"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V

    goto :goto_0

    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "taskIdx":I
    if-gtz v1, :cond_2

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;Z)V
    .locals 43
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "createdNewTask"    # Z

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v37, v0

    .local v37, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v41, v0

    .local v41, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    :cond_1
    const/16 v40, 0x0

    .local v40, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_9

    const/16 v39, 0x1

    .local v39, "startIt":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v42, v3, -0x1

    .local v42, "taskNdx":I
    :goto_1
    if-ltz v42, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "task":Lcom/android/server/am/TaskRecord;
    check-cast v40, Lcom/android/server/am/TaskRecord;

    .restart local v40    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v42, v42, -0x1

    goto :goto_1

    .end local v39    # "startIt":Z
    .end local v40    # "task":Lcom/android/server/am/TaskRecord;
    .end local v42    # "taskNdx":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .restart local v39    # "startIt":Z
    .restart local v40    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v42    # "taskNdx":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v40

    if-ne v0, v3, :cond_8

    if-nez v39, :cond_9

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v40

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    move/from16 v19, v0

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZIZ)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .end local v39    # "startIt":Z
    .end local v42    # "taskNdx":I
    :cond_5
    :goto_5
    return-void

    .restart local v39    # "startIt":Z
    .restart local v42    # "taskNdx":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v0, v40

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_2

    const/16 v39, 0x0

    goto/16 :goto_2

    .end local v39    # "startIt":Z
    .end local v42    # "taskNdx":I
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v40

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    if-lez v3, :cond_20

    :cond_b
    move/from16 v38, p2

    .local v38, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v36, v0

    .local v36, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v36, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v36, Lcom/android/server/am/ProcessRecord;

    .restart local v36    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_c
    if-eqz v36, :cond_d

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_e

    :cond_d
    const/16 v38, 0x1

    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v40

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_16

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    move/from16 v19, v0

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZIZ)V

    const/16 v33, 0x1

    .local v33, "doShow":Z
    if-eqz p2, :cond_18

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_17

    const/16 v33, 0x1

    :cond_f
    :goto_9
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .end local v33    # "doShow":Z
    .end local v36    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "showStartingIcon":Z
    :cond_10
    :goto_a
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_5

    .restart local v36    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "showStartingIcon":Z
    :cond_11
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x12c

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_6

    :cond_12
    move/from16 v34, p2

    .local v34, "isCreatedNewTask":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v34, :cond_14

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_13

    const/16 v3, 0x10

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v4, v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    const/16 v3, 0x8

    goto :goto_b

    :cond_14
    const/4 v3, 0x6

    goto :goto_b

    .end local v34    # "isCreatedNewTask":Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_8

    .restart local v33    # "doShow":Z
    :cond_17
    const/16 v33, 0x0

    goto :goto_9

    :cond_18
    if-eqz p5, :cond_f

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    const/16 v33, 0x0

    goto/16 :goto_9

    :cond_19
    if-eqz v33, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v35, v0

    .local v35, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v35, :cond_1a

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_1d

    const/16 v35, 0x0

    :cond_1a
    :goto_c
    const/4 v15, 0x0

    .local v15, "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "android.intent.action.DIAL"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    new-instance v15, Lcom/android/server/wm/CustomStartingWindowData;

    .end local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v15, v3, v4, v5}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    .restart local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v35, :cond_1e

    move-object/from16 v0, v35

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v16

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_1f

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v17, v0

    :goto_e
    move/from16 v14, v38

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_a

    .end local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_1d
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1a

    const/16 v35, 0x0

    goto/16 :goto_c

    .restart local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_1e
    const/4 v13, 0x0

    goto :goto_d

    :cond_1f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto :goto_e

    .end local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    .end local v33    # "doShow":Z
    .end local v35    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v36    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "showStartingIcon":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_21

    const/16 v23, 0x1

    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v25, v0

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_22

    const/16 v26, 0x1

    :goto_10
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    move/from16 v32, v0

    invoke-virtual/range {v16 .. v32}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZIZ)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/16 p5, 0x0

    goto/16 :goto_a

    :cond_21
    const/16 v23, 0x0

    goto :goto_f

    :cond_22
    const/16 v26, 0x0

    goto :goto_10
.end method

.method final startPausingLocked(ZZZZ)Z
    .locals 13
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_2

    if-nez p3, :cond_1

    const-string v0, "ActivityManager"

    const-string v2, "Trying to pause when nothing is resumed"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    :cond_3
    sget-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v9, 0x0

    .local v9, "isMinimized":Z
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .local v12, "prevTaskPackageName":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .local v11, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_6

    if-eqz v11, :cond_5

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_5

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v2, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    const-string v0, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v9, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .end local v9    # "isMinimized":Z
    .end local v11    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "prevTaskPackageName":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_b

    const/16 v0, 0x753d

    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_c

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .restart local v9    # "isMinimized":Z
    :cond_a
    const-string v12, ""

    goto/16 :goto_2

    .end local v9    # "isMinimized":Z
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    :cond_c
    if-nez p2, :cond_d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    :cond_d
    if-eqz p4, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .local v10, "msg":Landroid/os/Message;
    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const-string v4, "stop-no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "stopActivityFinished"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    const-string v0, "stopActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ActivityTrigger;->activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v7    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_1

    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    iget v6, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v6, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_5

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "j":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "j":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "j":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v0

    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    return-object v2

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .local v3, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x40000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_2
    return-object v5

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "includeMinimize"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unhandledBackLocked()V
    .locals 9

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "top":I
    if-ltz v8, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityTop":I
    if-lez v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "unhandled-back"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_0
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method updateOverrideConfiguration(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .local v0, "oldConfig":Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .end local p1    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 13
    .param p1, "movedTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v12, 0x65

    if-eq p0, p2, :cond_4

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_1

    iget-object v8, p2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-wide v8, v3, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .local v4, "revisedTimeout":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    :goto_1
    iget-object v8, p2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "revisedTimeout":J
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v4    # "revisedTimeout":J
    :cond_2
    move-wide v4, v6

    goto :goto_1

    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "revisedTimeout":J
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, p1, :cond_4

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    if-nez p2, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    :cond_0
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;I)V

    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;I)V
    .locals 4
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .prologue
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    return-void

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 11

    .prologue
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "numTasks":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    if-ge v7, v4, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_1

    move v6, v5

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_0
    :goto_2
    return v6

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_1
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    move v6, v4

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_3
.end method
