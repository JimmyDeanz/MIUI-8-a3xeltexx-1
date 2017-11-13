.class Lcom/itsoninc/android/ItsOnOemApi$1;
.super Landroid/content/BroadcastReceiver;
.source "ItsOnOemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/ItsOnOemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/ItsOnOemApi;


# direct methods
.method constructor <init>(Lcom/itsoninc/android/ItsOnOemApi;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApi$1;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "ItsOnOemAPI"

    const-string v7, "Processing outgoing call intent"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "telecom"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_1

    const-string v6, "ItsOnOemAPI"

    const-string v7, "Cannot determine account -- bypass"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    .local v1, "phoneId":I
    const/4 v4, -0x1

    .local v4, "subId":I
    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoicePhoneId:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$000()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoiceSubId:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$100()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoicePhoneId:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$000()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_getDefaultVoiceSubId:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$100()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "phoneNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/itsoninc/android/ItsOnOemApi$1;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/itsoninc/android/ItsOnOemApi;->access$200(Lcom/itsoninc/android/ItsOnOemApi;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .local v3, "phoneType":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    iget-object v6, p0, Lcom/itsoninc/android/ItsOnOemApi$1;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v6, v2, v1, v4}, Lcom/itsoninc/android/ItsOnOemApi;->dial(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/itsoninc/android/ItsOnOemApi$1;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # invokes: Lcom/itsoninc/android/ItsOnOemApi;->isAirplaneModeOn(Landroid/content/Context;)Z
    invoke-static {v6, p1}, Lcom/itsoninc/android/ItsOnOemApi;->access$300(Lcom/itsoninc/android/ItsOnOemApi;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/itsoninc/android/ItsOnOemApi$1;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "phoneType":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ItsOnOemAPI"

    const-string v7, "Could not invoke SubscriptionManager"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    .restart local v3    # "phoneType":I
    :cond_3
    if-ne v3, v10, :cond_4

    iget-object v6, p0, Lcom/itsoninc/android/ItsOnOemApi$1;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v6, v2, v1, v4}, Lcom/itsoninc/android/ItsOnOemApi;->authorizeOutgoingVoice(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/itsoninc/android/ItsOnOemApi$1;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # invokes: Lcom/itsoninc/android/ItsOnOemApi;->isAirplaneModeOn(Landroid/content/Context;)Z
    invoke-static {v6, p1}, Lcom/itsoninc/android/ItsOnOemApi;->access$300(Lcom/itsoninc/android/ItsOnOemApi;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/itsoninc/android/ItsOnOemApi$1;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "ItsOnOemAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
