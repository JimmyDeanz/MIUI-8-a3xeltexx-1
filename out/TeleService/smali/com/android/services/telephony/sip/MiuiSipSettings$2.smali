.class Lcom/android/services/telephony/sip/MiuiSipSettings$2;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;->updateProfilesStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->retrieveSipLists()V
    invoke-static {v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$800(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProfilesStatus, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$700(Ljava/lang/String;)V

    goto :goto_0
.end method
