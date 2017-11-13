.class Lcom/android/internal/policy/MultiPhoneWindow$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDocking.onCancel() : mDismissGuideByDockingCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$2;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto :goto_0
.end method
