.class Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;
.super Landroid/os/AsyncTask;
.source "TelephonyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;I)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iput p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->val$subId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 155
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v2, v2, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->tm:Landroid/telephony/TelephonyManager;

    # invokes: Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->setupReflection(Landroid/telephony/TelephonyManager;)V
    invoke-static {v1, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->access$000(Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;Landroid/telephony/TelephonyManager;)V

    .line 163
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v1, v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCallForSubscriber:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v1, v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCallForSubscriber:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v2, v2, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->phoneIfManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->val$subId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v1, v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v1, v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;

    iget-object v2, v2, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->phoneIfManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->val$subId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ending  call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
