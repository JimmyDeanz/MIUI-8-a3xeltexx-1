.class Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;
.super Landroid/app/AlertDialog;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnfixDialog"
.end annotation


# instance fields
.field final DO_NOTIHG_MSG:I

.field final RELEASE_FIX_SCREEN_MODE_MSG:I

.field finishTask:Z

.field private final mHandler:Landroid/os/Handler;

.field resultCode:I

.field resultData:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->DO_NOTIHG_MSG:I

    iput v4, p0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->RELEASE_FIX_SCREEN_MODE_MSG:I

    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->mHandler:Landroid/os/Handler;

    const-string v0, "Unfix application"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    const-string v1, "Unfix"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/4 v0, -0x2

    const-string v1, "Cancel"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method
