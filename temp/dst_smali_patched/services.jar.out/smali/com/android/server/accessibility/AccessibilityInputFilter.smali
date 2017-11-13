.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final FLAG_FEATURE_ENABLED_ACCESSIBILITY_S_TALKBACK:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_HWDOUBLETAP_KEY_EVENTS:I = 0x10

.field static final FLAG_FEATURE_MAGNIFIER_WINDOW:I = 0x80

.field static final FLAG_FEATURE_OVERLAY_MAGNIFIER:I = 0x8

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_UNIVERSAL_SWITCH_SCREEN_AS_SWITCH:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VOICE_ASSISTANT_PACKAGE_NAME:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTouchDeviceId:I

.field private mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mFilterKeyEvents:Z

.field private mHoverEventSequenceStarted:Z

.field private mInstalled:Z

.field private mKeyEventSequenceStarted:Z

.field private mMotionEventSequenceStarted:Z

.field private mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

.field private mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

.field private mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

.field private mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    const-string v0, "com.samsung.android.app.talkback"

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->VOICE_ASSISTANT_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.talkback"

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/AccessibilityInputFilter$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    return-void
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    sget-object v1, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batching event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", policyFlags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v1, :cond_1

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_0
.end method

.method private enableFeatures()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "nextEventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/accessibility/OverlayMagnifier;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/OverlayMagnifier;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v1, :cond_7

    new-instance v1, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v2, "FLAG_FEATURE_MAGNIFIER_WINDOW is Enabled!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_4
    :goto_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.talkback"

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v2, "mDoubleTapDetector initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->init(Landroid/content/Context;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_6
    :goto_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/ScreenMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto :goto_3

    :cond_c
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/TouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto :goto_3

    :cond_f
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/TouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto/16 :goto_3

    :cond_10
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto/16 :goto_3

    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto/16 :goto_3
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    sget-object v1, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling batched event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", policyFlags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.talkback"

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->touchKeysDoubleTapEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->readyToPerform(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->onKeyEvent(Landroid/view/KeyEvent;)V

    sget-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "key event is handled by mDoubleTapDetector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->onKeyEvent(Landroid/view/KeyEvent;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    goto :goto_0
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .local v0, "deviceId":I
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    if-gez v1, :cond_4

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    goto :goto_1
.end method

.method private processBatchedEvents(J)V
    .locals 5
    .param p1, "frameNanos"    # J

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    move-object v1, v0

    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :cond_1
    if-nez v0, :cond_2

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    :goto_1
    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_1
.end method

.method private scheduleProcessBatchedEvents()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private touchKeysDoubleTapEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    return-void
.end method

.method disableFeatures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.talkback"

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->resetScreenMagnifierIfRequired()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetScreenMagnifier()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mSamsungMagnifierWindow:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    :cond_7
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/16 v7, 0x4002

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_2

    const/16 v3, 0x101

    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_7

    invoke-virtual {p1, v7}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v4, "onInputEvent coming to InputDevice.SOURCE_STYLUS ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .local v1, "mMotionevent":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v3, :cond_4

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v4, "Received event 4 "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_4
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->isScreenMagnified()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v4, "onInputEvent coming to multi screen magnifier (it may or may not scale the event depending on the dispalyId ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v4, "onInputEvent coming to magnifier ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v4, "onInputEvent coming to NON-magnifier ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0

    .end local v1    # "mMotionevent":Landroid/view/MotionEvent;
    :cond_7
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_8

    const/16 v3, 0x1002

    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v7}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0
.end method

.method public onInstalled()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "Accessibility input filter installed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onUninstalled()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "Accessibility input filter uninstalled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    return-void
.end method

.method setEnabledFeatures(I)V
    .locals 1
    .param p1, "enabledFeatures"    # I

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    :cond_2
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    goto :goto_0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    return-void
.end method
