.class public final Lcom/android/server/accessibility/MultiScreenMagnifierController;
.super Ljava/lang/Object;
.source "MultiScreenMagnifierController.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field private static final MAX_DISPLAY_COUNT:I = 0x2


# instance fields
.field private mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mContext:Landroid/content/Context;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/FallbackArrayList",
            "<",
            "Lcom/android/server/accessibility/ScreenMagnifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    new-instance v2, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v3, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p2}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .end local p1    # "mEvent":Landroid/view/MotionEvent;
    :cond_0
    return-object p1
.end method

.method public isScreenMagnified()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0
.end method

.method public resetScreenMagnifierIfRequired()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->resetScreenMagnifier()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MultiScreenMagnifierController;->mScreenMagnifiers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
