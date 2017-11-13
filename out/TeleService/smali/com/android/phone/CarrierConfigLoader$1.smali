.class Lcom/android/phone/CarrierConfigLoader$1;
.super Landroid/os/Handler;
.source "CarrierConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierConfigLoader;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierConfigLoader;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 154
    .local v15, "phoneId":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mHandler: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " phoneId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$100(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$200(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    aget-object v17, v17, v15

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$300(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    aget-object v17, v17, v15

    if-eqz v17, :cond_0

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$200(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v18, v17, v15

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$300(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v18, v17, v15

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v18, v17, v15

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto :goto_0

    .line 172
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 175
    .local v5, "carrierPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->clearCachedConfigForPackage(Ljava/lang/String;)Z
    invoke-static {v0, v5}, Lcom/android/phone/CarrierConfigLoader;->access$600(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$700(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    .line 177
    .local v14, "numPhones":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v14, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V
    invoke-static {v0, v10}, Lcom/android/phone/CarrierConfigLoader;->access$800(Lcom/android/phone/CarrierConfigLoader;I)V

    .line 177
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 184
    .end local v5    # "carrierPackageName":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v14    # "numPhones":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getIccIdForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$900(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, "iccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    const-string v18, "com.android.carrierconfig"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/android/phone/CarrierConfigLoader;->restoreConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    invoke-static {v0, v1, v11}, Lcom/android/phone/CarrierConfigLoader;->access$1000(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 186
    .local v7, "config":Landroid/os/PersistableBundle;
    if-eqz v7, :cond_2

    .line 187
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Loaded config from XML. package=com.android.carrierconfig phoneId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$100(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$200(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    aput-object v7, v17, v15

    .line 190
    const/16 v17, 0x5

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 191
    .local v13, "newMsg":Landroid/os/Message;
    invoke-virtual {v13}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "loaded_from_xml"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$1100(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 194
    .end local v13    # "newMsg":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    const-string v18, "com.android.carrierconfig"

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    # invokes: Lcom/android/phone/CarrierConfigLoader;->bindToConfigPackage(Ljava/lang/String;II)Z
    invoke-static {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader;->access$1200(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;II)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 196
    const/16 v17, 0xa

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 200
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 206
    .end local v7    # "config":Landroid/os/PersistableBundle;
    .end local v11    # "iccid":Ljava/lang/String;
    :pswitch_4
    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->removeMessages(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getCarrierIdForPhoneId(I)Landroid/service/carrier/CarrierIdentifier;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1300(Lcom/android/phone/CarrierConfigLoader;I)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v4

    .line 208
    .local v4, "carrierId":Landroid/service/carrier/CarrierIdentifier;
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    .line 210
    .local v8, "conn":Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    aget-object v17, v17, v15

    move-object/from16 v0, v17

    if-ne v0, v8, :cond_4

    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 212
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    aget-object v17, v17, v15

    if-eqz v17, :cond_0

    iget-boolean v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$700(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    goto/16 :goto_0

    .line 222
    :cond_5
    :try_start_0
    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/service/carrier/ICarrierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierService;

    move-result-object v6

    .line 224
    .local v6, "carrierService":Landroid/service/carrier/ICarrierService;
    invoke-interface {v6, v4}, Landroid/service/carrier/ICarrierService;->getCarrierConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 225
    .restart local v7    # "config":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getIccIdForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$900(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v11

    .line 226
    .restart local v11    # "iccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    const-string v18, "com.android.carrierconfig"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/android/phone/CarrierConfigLoader;->saveConfigToXml(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    invoke-static {v0, v1, v11, v7}, Lcom/android/phone/CarrierConfigLoader;->access$1400(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$200(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    aput-object v7, v17, v15

    .line 228
    const/16 v17, 0x5

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 229
    .end local v6    # "carrierService":Landroid/service/carrier/ICarrierService;
    .end local v7    # "config":Landroid/os/PersistableBundle;
    .end local v11    # "iccid":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 230
    .local v9, "ex":Landroid/os/RemoteException;
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to get carrier config: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$1500(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .end local v9    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    throw v17

    .line 241
    .end local v4    # "carrierId":Landroid/service/carrier/CarrierIdentifier;
    .end local v8    # "conn":Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 248
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "loaded_from_xml"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    aget-object v17, v17, v15

    if-eqz v17, :cond_0

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1700(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v5

    .line 253
    .restart local v5    # "carrierPackageName":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 254
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Found carrier config app: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$100(Ljava/lang/String;)V

    .line 255
    const/16 v17, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 257
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 262
    .end local v5    # "carrierPackageName":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1700(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v5

    .line 263
    .restart local v5    # "carrierPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getIccIdForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$900(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v11

    .line 264
    .restart local v11    # "iccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->restoreConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    invoke-static {v0, v5, v11}, Lcom/android/phone/CarrierConfigLoader;->access$1000(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 265
    .restart local v7    # "config":Landroid/os/PersistableBundle;
    if-eqz v7, :cond_8

    .line 266
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Loaded config from XML. package="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " phoneId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$100(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$300(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    aput-object v7, v17, v15

    .line 269
    const/16 v17, 0x6

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 270
    .restart local v13    # "newMsg":Landroid/os/Message;
    invoke-virtual {v13}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "loaded_from_xml"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 273
    .end local v13    # "newMsg":Landroid/os/Message;
    :cond_8
    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/android/phone/CarrierConfigLoader;->bindToConfigPackage(Ljava/lang/String;II)Z
    invoke-static {v0, v5, v15, v1}, Lcom/android/phone/CarrierConfigLoader;->access$1200(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;II)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 276
    const/16 v17, 0xb

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 280
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 286
    .end local v5    # "carrierPackageName":Ljava/lang/String;
    .end local v7    # "config":Landroid/os/PersistableBundle;
    .end local v11    # "iccid":Ljava/lang/String;
    :pswitch_8
    const/16 v17, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->removeMessages(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getCarrierIdForPhoneId(I)Landroid/service/carrier/CarrierIdentifier;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1300(Lcom/android/phone/CarrierConfigLoader;I)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v4

    .line 288
    .restart local v4    # "carrierId":Landroid/service/carrier/CarrierIdentifier;
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    .line 290
    .restart local v8    # "conn":Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    aget-object v17, v17, v15

    move-object/from16 v0, v17

    if-ne v0, v8, :cond_a

    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 293
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    aget-object v17, v17, v15

    if-eqz v17, :cond_0

    iget-boolean v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$700(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 299
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    goto/16 :goto_0

    .line 303
    :cond_b
    :try_start_2
    iget-object v0, v8, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->service:Landroid/os/IBinder;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/service/carrier/ICarrierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierService;

    move-result-object v6

    .line 305
    .restart local v6    # "carrierService":Landroid/service/carrier/ICarrierService;
    invoke-interface {v6, v4}, Landroid/service/carrier/ICarrierService;->getCarrierConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 306
    .restart local v7    # "config":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1700(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "carrierPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->getIccIdForPhoneId(I)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$900(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;

    move-result-object v11

    .line 308
    .restart local v11    # "iccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->saveConfigToXml(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    invoke-static {v0, v5, v11, v7}, Lcom/android/phone/CarrierConfigLoader;->access$1400(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$300(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;

    move-result-object v17

    aput-object v7, v17, v15

    .line 310
    const/16 v17, 0x6

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/phone/CarrierConfigLoader$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierConfigLoader$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 311
    .end local v5    # "carrierPackageName":Ljava/lang/String;
    .end local v6    # "carrierService":Landroid/service/carrier/ICarrierService;
    .end local v7    # "config":Landroid/os/PersistableBundle;
    .end local v11    # "iccid":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 312
    .restart local v9    # "ex":Landroid/os/RemoteException;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to get carrier config: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$1500(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .end local v9    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    throw v17

    .line 323
    .end local v4    # "carrierId":Landroid/service/carrier/CarrierIdentifier;
    .end local v8    # "conn":Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$1600(Lcom/android/phone/CarrierConfigLoader;I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 330
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "loaded_from_xml"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    move-result-object v17

    aget-object v17, v17, v15

    if-eqz v17, :cond_0

    .line 334
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V
    invoke-static {v0, v15}, Lcom/android/phone/CarrierConfigLoader;->access$500(Lcom/android/phone/CarrierConfigLoader;I)V

    goto/16 :goto_0

    .line 338
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$700(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 340
    .local v16, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v17, "build_fingerprint"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "lastFingerprint":Ljava/lang/String;
    sget-object v17, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 342
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Build fingerprint changed. old: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " new: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CarrierConfigLoader;->access$100(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CarrierConfigLoader$1;->this$0:Lcom/android/phone/CarrierConfigLoader;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # invokes: Lcom/android/phone/CarrierConfigLoader;->clearCachedConfigForPackage(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CarrierConfigLoader;->access$600(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)Z

    .line 345
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "build_fingerprint"

    sget-object v19, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method
