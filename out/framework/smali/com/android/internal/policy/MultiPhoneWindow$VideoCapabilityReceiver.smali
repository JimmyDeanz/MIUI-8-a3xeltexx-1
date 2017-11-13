.class Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCapabilityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0

    .prologue
    .line 2583
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2595
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 2596
    .local v0, "decorView":Lcom/android/internal/policy/PhoneWindow$DecorView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2598
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 2599
    .local v4, "type":Ljava/lang/String;
    const/4 v3, -0x1

    .line 2601
    .local v3, "requestedPid":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2605
    :goto_0
    const/4 v6, -0x1

    if-le v3, v6, :cond_0

    .line 2606
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 2607
    .local v2, "pinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v2}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 2608
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_0

    .line 2609
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2610
    .local v5, "videoCapabilityAlert":Landroid/app/AlertDialog$Builder;
    const v6, 0x104000a

    new-instance v7, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2617
    const v6, 0x1040bdf

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2618
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2619
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 2623
    .end local v2    # "pinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "requestedPid":I
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "videoCapabilityAlert":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void

    .line 2602
    .restart local v3    # "requestedPid":I
    .restart local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2603
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "MultiPhoneWindow"

    const-string v7, "attached item in getType() is not an int type"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 2585
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2586
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2587
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2591
    return-void
.end method
