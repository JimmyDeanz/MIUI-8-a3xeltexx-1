.class public abstract Lcom/android/internal/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ExploreByTouchHelper$1;,
        Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private mTempArray:Landroid/util/IntArray;

.field private mTempGlobalRect:[I

.field private mTempParentRect:Landroid/graphics/Rect;

.field private mTempScreenRect:Landroid/graphics/Rect;

.field private mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 55
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "forView"    # Landroid/view/View;

    .prologue
    const/high16 v0, -0x80000000

    .line 95
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 85
    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 88
    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ExploreByTouchHelper;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ExploreByTouchHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 611
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 612
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 290
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 291
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 292
    sget-object v1, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 298
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 307
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 274
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 275
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 276
    return-object v0
.end method

.method private createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 323
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 385
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->ensureTempRects()V

    .line 386
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 387
    .local v5, "tempParentRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 388
    .local v4, "tempGlobalRect":[I
    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 390
    .local v6, "tempScreenRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 393
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 394
    sget-object v10, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 395
    sget-object v10, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 397
    iget-object v10, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v7, v8

    .line 399
    .local v7, "universalSwitchEnabled":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 400
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 404
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 407
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_2

    .line 408
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v7    # "universalSwitchEnabled":Z
    :cond_1
    move v7, v9

    .line 397
    goto :goto_0

    .line 412
    .restart local v7    # "universalSwitchEnabled":Z
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 413
    sget-object v10, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 414
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 418
    :cond_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    .line 419
    .local v0, "actions":I
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_4

    .line 420
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 423
    :cond_4
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_5

    .line 424
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v10, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v10, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 431
    iget-object v10, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 434
    iget v10, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v10, p1, :cond_7

    .line 435
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 436
    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 443
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 444
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 445
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 449
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 450
    aget v2, v4, v9

    .line 451
    .local v2, "offsetX":I
    aget v3, v4, v8

    .line 452
    .local v3, "offsetY":I
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 453
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 454
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 456
    return-object v1

    .line 438
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    :cond_7
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 439
    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method private createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .prologue
    .line 336
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 337
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 340
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    if-nez v4, :cond_0

    .line 341
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    .line 345
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    .line 346
    .local v3, "virtualViewIds":Landroid/util/IntArray;
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Landroid/util/IntArray;)V

    .line 348
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 349
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 350
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "virtualViewIds":Landroid/util/IntArray;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->clear()V

    goto :goto_0

    .line 353
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "virtualViewIds":Landroid/util/IntArray;
    :cond_1
    return-object v2
.end method

.method private ensureTempRects()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 461
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 462
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 463
    return-void
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 509
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v3

    .line 514
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 519
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 520
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 521
    check-cast v1, Landroid/view/View;

    .line 522
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 525
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 526
    goto :goto_1

    .line 529
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    if-eqz v2, :cond_0

    .line 534
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 535
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 538
    .local v0, "tempVisibleRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    goto :goto_0
.end method

.method private isAccessibilityFocused(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 552
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageFocusForChild(II)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I

    .prologue
    .line 489
    sparse-switch p2, :sswitch_data_0

    .line 495
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 491
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    goto :goto_0

    .line 493
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    goto :goto_0

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_0

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    .line 468
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 479
    sparse-switch p2, :sswitch_data_0

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    .line 482
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->manageFocusForChild(II)Z

    move-result v0

    goto :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 6
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 571
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v2

    .line 574
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "universal_switch_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    move v1, v3

    .line 578
    .local v1, "universalSwitchEnabled":Z
    :goto_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    iget v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_3

    .line 585
    iget v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v4, 0x10000

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 590
    :cond_3
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 593
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 594
    const v2, 0x8000

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move v2, v3

    .line 596
    goto :goto_0

    .end local v1    # "universalSwitchEnabled":Z
    :cond_4
    move v1, v2

    .line 574
    goto :goto_1
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 234
    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v1, p1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 238
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 239
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 243
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 244
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 147
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 148
    if-eq v0, v5, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 150
    .end local v0    # "virtualViewId":I
    :pswitch_2
    iget v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-eq v3, v5, :cond_0

    .line 151
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    move v2, v1

    .line 152
    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Landroid/util/IntArray;)V
.end method

.method public invalidateRoot()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 200
    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 212
    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 213
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 183
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 188
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method
