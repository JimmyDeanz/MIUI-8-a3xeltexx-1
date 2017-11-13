.class Lcom/android/phone/NetworkModeManager$2;
.super Landroid/os/Handler;
.source "NetworkModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeManager;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x7d0

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 251
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    # invokes: Lcom/android/phone/NetworkModeManager;->updateNetworkModeIfNeeded()V
    invoke-static {v8}, Lcom/android/phone/NetworkModeManager;->access$200(Lcom/android/phone/NetworkModeManager;)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 257
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;

    .line 258
    .local v4, "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_0

    .line 260
    const-string v8, "NetworkModeManager"

    const-string v9, "set vice slot network type failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v8, v8, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v8, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 262
    .local v3, "m":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v8, v8, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 265
    .end local v3    # "m":Landroid/os/Message;
    :cond_0
    iget-object v9, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    aget v1, v9, v10

    .line 266
    .local v1, "defaultMode":I
    const-string v9, "NetworkModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set vice slot network type successfully and begin set master networktype="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v9, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v9, v9, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 268
    .restart local v3    # "m":Landroid/os/Message;
    iget v8, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8, v1, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 272
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "defaultMode":I
    .end local v3    # "m":Landroid/os/Message;
    .end local v4    # "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 275
    const-string v8, "NetworkModeManager"

    const-string v9, "set master slot network type failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v8, v8, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v8, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 277
    .restart local v3    # "m":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v8, v8, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 279
    .end local v3    # "m":Landroid/os/Message;
    :cond_1
    const-string v8, "NetworkModeManager"

    const-string v9, "set master slot network type successfully"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;

    .line 284
    .restart local v4    # "settingArgs":Lcom/android/phone/NetworkModeManager$SettingNetworkMode;
    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    if-lt v10, v11, :cond_2

    .line 285
    const-string v8, "NetworkModeManager"

    const-string v9, "retry break for more than 3 times"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    # invokes: Lcom/android/phone/NetworkModeManager;->getPreferredNetworkTypes()V
    invoke-static {v8}, Lcom/android/phone/NetworkModeManager;->access$300(Lcom/android/phone/NetworkModeManager;)V

    goto/16 :goto_0

    .line 289
    :cond_2
    iget-object v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    array-length v10, v10

    if-ne v10, v8, :cond_3

    .line 291
    const-string v10, "NetworkModeManager"

    const-string v11, "retry setting network types begin for ss"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v10, 0x0

    iget-object v11, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v11, v11, v9

    invoke-static {v10, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setNetworkModeInDb(Ljava/util/List;II)V

    .line 293
    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    .line 294
    iget-object v10, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v10, v10, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 295
    .restart local v3    # "m":Landroid/os/Message;
    invoke-static {v9}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iget-object v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v9, v10, v9

    invoke-interface {v8, v9, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 296
    .end local v3    # "m":Landroid/os/Message;
    :cond_3
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v10

    iget v11, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    if-ne v10, v11, :cond_7

    .line 298
    const-string v10, "NetworkModeManager"

    const-string v11, "retry setting network types begin"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    if-nez v10, :cond_4

    move v7, v8

    .line 300
    .local v7, "viceSlot":I
    :goto_1
    iget-object v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v6, v10, v7

    .line 301
    .local v6, "viceMode":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 302
    .local v5, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    array-length v10, v10

    if-ge v2, v10, :cond_5

    .line 303
    iget-object v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->networkModes:[I

    aget v10, v10, v2

    invoke-static {v5, v2, v10}, Lcom/android/phone/MiuiPhoneUtils;->setNetworkModeInDb(Ljava/util/List;II)V

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    .end local v6    # "viceMode":I
    .end local v7    # "viceSlot":I
    :cond_4
    move v7, v9

    .line 299
    goto :goto_1

    .line 305
    .restart local v2    # "i":I
    .restart local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    .restart local v6    # "viceMode":I
    .restart local v7    # "viceSlot":I
    :cond_5
    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->retryTimes:I

    .line 306
    iget-object v10, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v10, v10, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 307
    .restart local v3    # "m":Landroid/os/Message;
    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    if-nez v10, :cond_6

    :goto_3
    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8, v6, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    move v8, v9

    goto :goto_3

    .line 309
    .end local v2    # "i":I
    .end local v3    # "m":Landroid/os/Message;
    .end local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    .end local v6    # "viceMode":I
    .end local v7    # "viceSlot":I
    :cond_7
    const-string v8, "NetworkModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retry setting network types break oldDataSlot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/phone/NetworkModeManager$SettingNetworkMode;->defaultDataSlot:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v8, p0, Lcom/android/phone/NetworkModeManager$2;->this$0:Lcom/android/phone/NetworkModeManager;

    # invokes: Lcom/android/phone/NetworkModeManager;->getPreferredNetworkTypes()V
    invoke-static {v8}, Lcom/android/phone/NetworkModeManager;->access$300(Lcom/android/phone/NetworkModeManager;)V

    goto/16 :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
