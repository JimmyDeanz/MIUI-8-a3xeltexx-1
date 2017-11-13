.class Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFingerTapDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    }
.end annotation


# static fields
.field private static final LOG_MULTI_FINGER:Ljava/lang/String; = "MultiFingerTapDetector"


# instance fields
.field private final MSG_PERFORM_DOUBLE_TAP:I

.field private final MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

.field private final MSG_PERFORM_QUADRUPLE_TAP:I

.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final MSG_PERFORM_TRIPLE_TAP:I

.field private final MSG_PERFORM_TRIPLE_TAP_AND_HOLD:I

.field private final STATE_CANCEL:I

.field private final STATE_READY:I

.field private final STATE_THREE_FINGER_DETECTION:I

.field private final STATE_TWO_FINGER_DETECTION:I

.field private isFirstTapDone:Z

.field private isSecondTapDone:Z

.field private isThirdTapDone:Z

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPointerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1832
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_READY:I

    .line 1837
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_TWO_FINGER_DETECTION:I

    .line 1838
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_THREE_FINGER_DETECTION:I

    .line 1839
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_CANCEL:I

    .line 1842
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1845
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1848
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    .line 1851
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    .line 1854
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1857
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1860
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_SINGLE_TAP:I

    .line 1861
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP:I

    .line 1862
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

    .line 1863
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_TRIPLE_TAP:I

    .line 1864
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_TRIPLE_TAP_AND_HOLD:I

    .line 1865
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_QUADRUPLE_TAP:I

    .line 1868
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    .line 2313
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/SamsungTouchExplorer$1;

    .prologue
    .line 1832
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performSingleTap()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTap()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTapAndHold()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performTripleTap()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performTripleTapAndHold()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performQuadrupleTap()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1832
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    return v0
.end method

.method private isMultiFingerTap()Z
    .locals 4

    .prologue
    .line 2137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2138
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 2139
    .local v1, "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->isTapEvent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2140
    const/4 v2, 0x0

    .line 2143
    .end local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :goto_1
    return v2

    .line 2137
    .restart local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2143
    .end local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private performDoubleTap()V
    .locals 2

    .prologue
    .line 2191
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2192
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2207
    :goto_0
    return-void

    .line 2195
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2206
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2198
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2202
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2195
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performDoubleTapAndHold()V
    .locals 2

    .prologue
    .line 2215
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2231
    :goto_0
    return-void

    .line 2219
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2230
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2222
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2226
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2219
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performQuadrupleTap()V
    .locals 2

    .prologue
    .line 2289
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2290
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2307
    :goto_0
    return-void

    .line 2293
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2306
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2296
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2301
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2293
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSingleTap()V
    .locals 2

    .prologue
    .line 2167
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2168
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2183
    :goto_0
    return-void

    .line 2171
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2182
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2174
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2178
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2171
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performTripleTap()V
    .locals 2

    .prologue
    .line 2239
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2257
    :goto_0
    return-void

    .line 2243
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2256
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2246
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2251
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2243
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performTripleTapAndHold()V
    .locals 2

    .prologue
    .line 2265
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    .line 2266
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2281
    :goto_0
    return-void

    .line 2269
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2280
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    .line 2272
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2276
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    .line 2269
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2150
    const-string v0, "MultiFingerTapDetector"

    const-string v1, "clear the Multi-Finger tap detector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2153
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2154
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2155
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    .line 2156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 2158
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2159
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2130
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1912
    :pswitch_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    if-ne v0, v1, :cond_1

    .line 1913
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2802(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1916
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1918
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1920
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    goto :goto_0

    .line 1924
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1925
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ge v7, v0, :cond_2

    .line 1926
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1925
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1930
    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    packed-switch v0, :pswitch_data_1

    .line 1987
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto :goto_0

    .line 1936
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1938
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1944
    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1945
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_4

    .line 1946
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2802(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1947
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1948
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1950
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-nez v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2802(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1952
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1953
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1963
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1966
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1972
    :cond_6
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1973
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_7

    .line 1974
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2802(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1975
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1976
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1978
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-nez v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2802(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1980
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1981
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1994
    .end local v7    # "i":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1995
    .local v6, "count":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 1996
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1997
    .local v9, "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 1998
    .local v8, "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    .line 1995
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2003
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    .end local v9    # "pointerId":I
    :pswitch_6
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - mDetectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isFirstTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isSecondTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isThirdTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - pointerCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 2009
    .restart local v9    # "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 2010
    .restart local v8    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    if-eqz v8, :cond_8

    .line 2011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    .line 2020
    :goto_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isMultiFingerTap()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2023
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-nez v0, :cond_b

    .line 2027
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 2028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    .line 2031
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2032
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 2033
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2015
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_3

    .line 2036
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2040
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    .line 2043
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto/16 :goto_0

    .line 2045
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_10

    .line 2050
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_d

    .line 2051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    .line 2054
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2055
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 2056
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2059
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    add-int/lit8 v2, v2, 0x5a

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2063
    :cond_d
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2064
    :cond_e
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2066
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2067
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 2068
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2071
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2076
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-nez v0, :cond_15

    .line 2081
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_12

    .line 2082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    .line 2083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 2085
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2086
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 2087
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2090
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    add-int/lit8 v2, v2, 0x5a

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2094
    :cond_12
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2095
    :cond_13
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 2097
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2098
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2099
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2102
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2107
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isThirdTapDone:Z

    if-eqz v0, :cond_0

    .line 2108
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_16

    .line 2109
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2110
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2112
    :cond_16
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2113
    :cond_17
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 2114
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2115
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 2116
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2119
    :cond_18
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2126
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto/16 :goto_0

    .line 1910
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 1930
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
