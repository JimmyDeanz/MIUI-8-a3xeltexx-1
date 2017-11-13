.class Lcom/itsoninc/android/ItsOnOemApi$2;
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
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApi$2;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itsoninc/android/ItsOnOemApi$2;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # invokes: Lcom/itsoninc/android/ItsOnOemApi;->dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    invoke-static {v12}, Lcom/itsoninc/android/ItsOnOemApi;->access$400(Lcom/itsoninc/android/ItsOnOemApi;)Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    move-result-object v8

    .local v8, "rawSms":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    const/4 v1, 0x0

    .local v1, "cnt":I
    const/4 v9, 0x0

    .local v9, "reinject":I
    :goto_0
    if-eqz v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->getPdu()[B

    move-result-object v5

    .local v5, "pdu":[B
    invoke-virtual {v8}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->getEncoding()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    move-result-object v4

    .local v4, "encoding":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    invoke-virtual {v8}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->getPhoneId()I

    move-result v7

    .local v7, "phoneId":I
    invoke-virtual {v8}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->getSubId()I

    move-result v11

    .local v11, "subId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itsoninc/android/ItsOnOemApi$2;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v12, v5, v7, v11}, Lcom/itsoninc/android/ItsOnOemApi;->authorizeIncomingSms([BII)Z

    move-result v12

    if-eqz v12, :cond_0

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    new-array v6, v12, [[B

    const/4 v12, 0x0

    aput-object v5, v6, v12

    .local v6, "pdus":[[B
    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->smsApplication_getDefaultMmsApplication:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$500()Ljava/lang/reflect/Method;

    move-result-object v12

    if-eqz v12, :cond_3

    :try_start_0
    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->smsApplication_getDefaultMmsApplication:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$500()Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "componentName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "sendIntent":Landroid/content/Intent;
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v12, "pdus"

    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v12, "format"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itsoninc/android/ItsOnOemApi$2;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # invokes: Lcom/itsoninc/android/ItsOnOemApi;->getPduFormatName(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;
    invoke-static {v13, v4}, Lcom/itsoninc/android/ItsOnOemApi;->access$600(Lcom/itsoninc/android/ItsOnOemApi;Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$700()Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    if-eqz v12, :cond_2

    :try_start_1
    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$700()Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    const-string v12, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "pdus":[[B
    .end local v10    # "sendIntent":Landroid/content/Intent;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itsoninc/android/ItsOnOemApi$2;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # invokes: Lcom/itsoninc/android/ItsOnOemApi;->dequeueSms()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
    invoke-static {v12}, Lcom/itsoninc/android/ItsOnOemApi;->access$400(Lcom/itsoninc/android/ItsOnOemApi;)Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;

    move-result-object v8

    goto/16 :goto_0

    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "pdus":[[B
    .restart local v10    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "ItsOnOemAPI"

    const-string v13, "Failed invoking SubscriptionManager"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "sendIntent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v12, "ItsOnOemAPI"

    const-string v13, "Could not get default sms app to route msg"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "encoding":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .end local v5    # "pdu":[B
    .end local v6    # "pdus":[[B
    .end local v7    # "phoneId":I
    .end local v11    # "subId":I
    :cond_1
    return-void

    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "encoding":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .restart local v5    # "pdu":[B
    .restart local v6    # "pdus":[[B
    .restart local v7    # "phoneId":I
    .restart local v10    # "sendIntent":Landroid/content/Intent;
    .restart local v11    # "subId":I
    :cond_2
    :try_start_4
    const-string v12, "simId"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "sendIntent":Landroid/content/Intent;
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10    # "sendIntent":Landroid/content/Intent;
    const-string v12, "pdus"

    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v12, "format"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itsoninc/android/ItsOnOemApi$2;->this$0:Lcom/itsoninc/android/ItsOnOemApi;

    # invokes: Lcom/itsoninc/android/ItsOnOemApi;->getPduFormatName(Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;
    invoke-static {v13, v4}, Lcom/itsoninc/android/ItsOnOemApi;->access$600(Lcom/itsoninc/android/ItsOnOemApi;Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$700()Ljava/lang/reflect/Method;

    move-result-object v12

    if-eqz v12, :cond_4

    :try_start_5
    # getter for: Lcom/itsoninc/android/ItsOnOemApi;->subscriptionManager_putPhoneIdAndSubIdExtra:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->access$700()Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    const-string v12, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v12, "ItsOnOemAPI"

    const-string v13, "Failed invoking SubscriptionManager"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v12, "simId"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method
