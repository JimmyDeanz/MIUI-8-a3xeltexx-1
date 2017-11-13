.class final Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;
.super Ljava/lang/Object;
.source "TelephonyClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitEmergencyRunnable"
.end annotation


# instance fields
.field private final phoneId:I

.field private final subId:I

.field final synthetic this$0:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;


# direct methods
.method constructor <init>(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;II)V
    .locals 0
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 262
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->phoneId:I

    .line 264
    iput p3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->subId:I

    .line 265
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    const-string v0, "ItsOnOEM.GSMTelephonyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting emergency mode due to timeout: phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    const/4 v1, 0x0

    # setter for: Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z
    invoke-static {v0, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->access$002(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;Z)Z

    .line 271
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    # getter for: Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
    invoke-static {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->access$100(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;)Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    # getter for: Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z
    invoke-static {v1}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->access$000(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;)Z

    move-result v1

    iget v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->phoneId:I

    iget v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;->subId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setEmergencyMode(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
