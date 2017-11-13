.class Lcom/android/internal/telephony/uicc/UiccCard$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    :try_start_0
    const-string v1, "QCOM"

    const-string v3, "QCOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const-string v1, "2"

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    :cond_3
    :goto_0
    monitor-exit v2

    :goto_1
    return-void

    :cond_4
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "Reboot due to SIM swap"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_6
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_7
    const/4 v1, -0x2

    if-ne p2, v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "Do not reboot device"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
