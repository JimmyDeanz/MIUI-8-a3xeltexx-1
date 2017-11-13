.class public abstract Lcom/android/incallui/view/OnEffectiveClickListener;
.super Ljava/lang/Object;
.source "OnEffectiveClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/view/OnEffectiveClickListener;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public isEffectiveClick()Z
    .locals 6

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/incallui/view/OnEffectiveClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 16
    iput-wide v0, p0, Lcom/android/incallui/view/OnEffectiveClickListener;->lastClickTime:J

    .line 17
    const/4 v2, 0x1

    .line 19
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/incallui/view/OnEffectiveClickListener;->isEffectiveClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/OnEffectiveClickListener;->onEffectiveClick(Landroid/view/View;)V

    .line 31
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 27
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    goto :goto_0
.end method

.method public abstract onEffectiveClick(Landroid/view/View;)V
.end method
