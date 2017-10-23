.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->performUpdateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)V
    .locals 0

    .prologue
    .line 3306
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$1900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Z)V

    .line 3314
    :goto_0
    return-void

    .line 3312
    :cond_0
    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "skip showMenu(true) in Runnable, mActivity is abnormal state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
