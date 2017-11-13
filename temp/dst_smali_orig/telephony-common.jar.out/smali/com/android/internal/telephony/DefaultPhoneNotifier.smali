.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;,
        Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPhoneNotifier"


# instance fields
.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private oldState:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->oldState:I

    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Phone$DataActivityState;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static convertPreciseCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 19
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .local v5, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    .local v16, "dds":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .local v18, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v11, 0x0

    .local v11, "linkProperties":Landroid/net/LinkProperties;
    const/4 v12, 0x0

    .local v12, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v14, 0x0

    .local v14, "roaming":Z
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    .local v15, "ss":Landroid/telephony/ServiceState;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v14

    :cond_1
    const-string v4, "default"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mms"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->oldState:I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v6

    if-eq v4, v6, :cond_4

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v4, v1, v2}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->oldState:I

    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v13

    :goto_0
    move-object/from16 v8, p2

    move-object/from16 v10, p3

    invoke-interface/range {v4 .. v14}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DefaultPhoneNotifier"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .local v1, "subId":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDisconnectCause(II)V
    .locals 1
    .param p1, "cause"    # I
    .param p2, "preciseCause"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDunDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDunDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDunDataConnection(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDunDataState()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDunNetworkType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDunDataConnection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyFdnUpdated(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyFdnUpdated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOemHookRawEventForSubscriber(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "otaspMode"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .local v1, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .local v2, "subId":I
    const-string v0, ""

    .local v0, "incomingNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v0, ""

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v4

    invoke-interface {v3, v2, v4, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForSubscriber(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .local v1, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "failCause"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .local v2, "subId":I
    const-string v3, "DefaultPhoneNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nofityServiceState: mRegistry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phondId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    new-instance v1, Landroid/telephony/ServiceState;

    .end local v1    # "ss":Landroid/telephony/ServiceState;
    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .restart local v1    # "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .local v0, "subId":I
    const-string v1, "DefaultPhoneNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySignalStrength: mRegistry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyVoiceRadioBearerHoState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyVoiceRadioBearerHoState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
