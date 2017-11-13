.class public Lcom/sec/epdg/EpdgSettings;
.super Ljava/lang/Object;
.source "EpdgSettings.java"


# static fields
.field private static mEpdgSettings:Lcom/sec/epdg/EpdgSettings;


# instance fields
.field private mAlwaysOnApnType:Ljava/lang/String;

.field private mAttachPdn:Ljava/lang/String;

.field private mCdmaRssi:I

.field private mCertiPath:Ljava/lang/String;

.field private mEmergencyApnType:Ljava/lang/String;

.field private mEpdgFqdn:Ljava/lang/String;

.field private mHoDelayTimer:I

.field private mIdiImsi:I

.field private mIdiMac:I

.field private mImeiVendorAttr:I

.field private mIsAnsIntegrationEnabled:Z

.field private mIsBroadcastHONotiEnabled:Z

.field private mIsConnectedModeDpdAllow:Z

.field private mIsDynamicFqdn:Z

.field private mIsDynamicUserFqdn:Z

.field private mIsIpv6Enabled:Z

.field private mIsIpv6Preferred:Z

.field private mIsRetryEnabledForAlwaysOnApn:Z

.field private mIsRtcpIntegrationEnabled:Z

.field private mIsTestingOnDemandPdnHandoff:Z

.field private mIsThrottlingEnabled:Z

.field private mIsUsingCerti:Z

.field private mIsVowifiOn:Z

.field private mKeepAliveTimer:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mPcscfv4:I

.field private mPcscfv6:I

.field private mPktLossPercent:I

.field private mSmartWifiTimer:I

.field private mSysSelTimer:I

.field private mTepdg1xScanTimer:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTestInterfaceNum:I

.field private mThreshold2gRoveIn:I

.field private mThreshold2gRoveOut:I

.field private mThreshold3gRoveIn:I

.field private mThreshold3gRoveOut:I

.field private mThreshold4gRoveIn:I

.field private mThreshold4gRoveOut:I

.field private mWifiIpConfigTimer:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field private mWifiRssiC:I

.field private mWifiRssiIntentDelayTimer:I

.field private mWifiRssiRoveInVoice:I

.field private mWifiRssiRoveInWifiOnly:I

.field private mWifiRssiRoveOutWifiOnly:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static getInstance()Lcom/sec/epdg/EpdgSettings;
    .locals 50

    .prologue
    .line 180
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/16 v0, -0x47

    const/16 v1, -0x4f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, -0x6e

    const/16 v7, -0x73

    const/16 v8, -0x75

    const/4 v9, -0x7

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x78

    const/16 v20, 0x5

    const/16 v21, 0x3

    const/16 v22, 0x3

    const/16 v23, 0xa

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x5

    const v28, 0x5265c0

    const-string/jumbo v29, "epdg.epc.mnc260.mcc310.pub.3gppnetwork.org"

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x1

    const-string/jumbo v35, "default"

    const-string/jumbo v36, "ims"

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x4000

    const/16 v41, 0x4002

    const/16 v42, 0x4007

    const/16 v43, 0x1

    const-string/jumbo v44, "none"

    const/16 v45, 0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string v48, "ca.crt"

    const/16 v49, 0x1

    invoke-static/range {v0 .. v49}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, -0x48

    const/16 v1, -0x50

    const/16 v2, -0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x41

    const/16 v6, -0x6e

    const/16 v7, -0x73

    const/16 v8, -0x75

    const/4 v9, -0x7

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x78

    const/16 v20, 0x5

    const/16 v21, 0x3

    const/16 v22, 0x3

    const/16 v23, 0xa

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x5

    const v28, 0x5265c0

    const-string/jumbo v29, "wo.vzwwo.com"

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const-string/jumbo v35, "ims"

    const-string/jumbo v36, "ims"

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x4005

    const/16 v41, 0x4006

    const/16 v42, 0x4007

    const/16 v43, 0x0

    const-string/jumbo v44, "emergency"

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string/jumbo v48, "none"

    const/16 v49, 0x0

    invoke-static/range {v0 .. v49}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)Lcom/sec/epdg/EpdgSettings;
    .locals 51
    .param p0, "wifiRssiA"    # I
    .param p1, "wifiRssiB"    # I
    .param p2, "wifiRssiC"    # I
    .param p3, "wifiRssiRoveInWifiOnly"    # I
    .param p4, "wifiRssiRoveOutWifiOnly"    # I
    .param p5, "wifiRssiRoveInVoice"    # I
    .param p6, "lteRsrp1"    # I
    .param p7, "lteRsrp2"    # I
    .param p8, "lteRsrp3"    # I
    .param p9, "cdmaRssi"    # I
    .param p10, "pktLossPercent"    # I
    .param p11, "threshold4gRoveIn"    # I
    .param p12, "threshold4gRoveOut"    # I
    .param p13, "threshold3gRoveIn"    # I
    .param p14, "threshold3gRoveOut"    # I
    .param p15, "threshold2gRoveIn"    # I
    .param p16, "threshold2gRoveOut"    # I
    .param p17, "sysSelTimer"    # I
    .param p18, "tepdgLteTimer"    # I
    .param p19, "tepdg1xTimer"    # I
    .param p20, "tepdg1xScanTimer"    # I
    .param p21, "hoDelayTimer"    # I
    .param p22, "wifiRssiIntentDelayTimer"    # I
    .param p23, "wifiIpConfigTimer"    # I
    .param p24, "idimac"    # I
    .param p25, "idiImsi"    # I
    .param p26, "isRetryEnabledForAlwaysOnApn"    # Z
    .param p27, "smartWifiTimer"    # I
    .param p28, "keepAliveTimer"    # I
    .param p29, "EpdgFQDN"    # Ljava/lang/String;
    .param p30, "isDynamicFQDN"    # Z
    .param p31, "isDynamicUserFQDN"    # Z
    .param p32, "isAnsIntegrationEnabled"    # Z
    .param p33, "isRtcpIntegrationEnabled"    # Z
    .param p34, "isBroadcastHONotiEnabled"    # Z
    .param p35, "attachPdn"    # Ljava/lang/String;
    .param p36, "alwaysOnApnType"    # Ljava/lang/String;
    .param p37, "isVowifiOn"    # Z
    .param p38, "isTestingOnDemandPdnHandoff"    # Z
    .param p39, "isThrottlingEnabled"    # Z
    .param p40, "pcscfv4"    # I
    .param p41, "pcscfv6"    # I
    .param p42, "imei"    # I
    .param p43, "testInterfaceNum"    # I
    .param p44, "emergencyApnType"    # Ljava/lang/String;
    .param p45, "isConnectedModeDpdAllow"    # Z
    .param p46, "isIpv6Enabled"    # Z
    .param p47, "isIpv6Preferred"    # Z
    .param p48, "certiPath"    # Ljava/lang/String;
    .param p49, "isUsingCerti"    # Z

    .prologue
    .line 198
    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/sec/epdg/EpdgSettings;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgSettings;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 201
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move/from16 v41, p40

    move/from16 v42, p41

    move/from16 v43, p42

    move/from16 v44, p43

    move-object/from16 v45, p44

    move/from16 v46, p45

    move/from16 v47, p46

    move/from16 v48, p47

    move-object/from16 v49, p48

    move/from16 v50, p49

    invoke-direct/range {v0 .. v50}, Lcom/sec/epdg/EpdgSettings;->updateVariableValues(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)V

    .line 210
    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method private updateVariableValues(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 1
    .param p1, "wifiRssiA"    # I
    .param p2, "wifiRssiB"    # I
    .param p3, "wifiRssiC"    # I
    .param p4, "wifiRssiRoveInWifiOnly"    # I
    .param p5, "wifiRssiRoveOutWifiOnly"    # I
    .param p6, "wifiRssiRoveInVoice"    # I
    .param p7, "lteRsrp1"    # I
    .param p8, "lteRsrp2"    # I
    .param p9, "lteRsrp3"    # I
    .param p10, "cdmaRssi"    # I
    .param p11, "pktLossPercent"    # I
    .param p12, "threshold4gRoveIn"    # I
    .param p13, "threshold4gRoveOut"    # I
    .param p14, "threshold3gRoveIn"    # I
    .param p15, "threshold3gRoveOut"    # I
    .param p16, "threshold2gRoveIn"    # I
    .param p17, "threshold2gRoveOut"    # I
    .param p18, "sysSelTimer"    # I
    .param p19, "tepdgLteTimer"    # I
    .param p20, "tepdg1xTimer"    # I
    .param p21, "tepdg1xScanTimer"    # I
    .param p22, "hoDelayTimer"    # I
    .param p23, "wifiRssiIntentDelayTimer"    # I
    .param p24, "wifiIpConfigTimer"    # I
    .param p25, "idimac"    # I
    .param p26, "idiImsi"    # I
    .param p27, "isDataRetryEnabled"    # Z
    .param p28, "smartWifiTimer"    # I
    .param p29, "keepAliveTimer"    # I
    .param p30, "epdgFqdn"    # Ljava/lang/String;
    .param p31, "isDynamicFqdn"    # Z
    .param p32, "isDynamicUserFqdn"    # Z
    .param p33, "isAnsIntegrationEnabled"    # Z
    .param p34, "isRtcpIntegrationEnabled"    # Z
    .param p35, "isBroadcastHONotiEnabled"    # Z
    .param p36, "attachPdn"    # Ljava/lang/String;
    .param p37, "alwaysOnApnType"    # Ljava/lang/String;
    .param p38, "isVowifiOn"    # Z
    .param p39, "isTestingOnDemandPdnHandoff"    # Z
    .param p40, "isThrottlingEnabled"    # Z
    .param p41, "pcscfv4"    # I
    .param p42, "pcscfv6"    # I
    .param p43, "imei"    # I
    .param p44, "testInterfaceNum"    # I
    .param p45, "emergencyApnType"    # Ljava/lang/String;
    .param p46, "isConnectedModeDpdAllow"    # Z
    .param p47, "isIpv6Enabled"    # Z
    .param p48, "isIpv6Preferred"    # Z
    .param p49, "certiPath"    # Ljava/lang/String;
    .param p50, "isUsingCerti"    # Z

    .prologue
    .line 127
    iput p1, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiA:I

    .line 128
    iput p2, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiB:I

    .line 129
    iput p3, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiC:I

    .line 130
    iput p4, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInWifiOnly:I

    .line 131
    iput p5, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveOutWifiOnly:I

    .line 132
    iput p6, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInVoice:I

    .line 133
    iput p7, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp1:I

    .line 134
    iput p8, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp2:I

    .line 135
    iput p9, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp3:I

    .line 136
    iput p10, p0, Lcom/sec/epdg/EpdgSettings;->mCdmaRssi:I

    .line 137
    iput p11, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercent:I

    .line 138
    iput p12, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveIn:I

    .line 139
    iput p13, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveOut:I

    .line 140
    iput p14, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveIn:I

    .line 141
    move/from16 v0, p15

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveOut:I

    .line 142
    move/from16 v0, p16

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveIn:I

    .line 143
    move/from16 v0, p17

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveOut:I

    .line 144
    move/from16 v0, p18

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    .line 145
    move/from16 v0, p19

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteTimer:I

    .line 146
    move/from16 v0, p20

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xTimer:I

    .line 147
    move/from16 v0, p21

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xScanTimer:I

    .line 148
    move/from16 v0, p22

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mHoDelayTimer:I

    .line 149
    move/from16 v0, p23

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiIntentDelayTimer:I

    .line 150
    move/from16 v0, p24

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiIpConfigTimer:I

    .line 151
    move/from16 v0, p25

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    .line 152
    move/from16 v0, p26

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    .line 153
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    .line 154
    move/from16 v0, p28

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    .line 155
    move/from16 v0, p29

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    .line 156
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    .line 157
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    .line 158
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicUserFqdn:Z

    .line 159
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    .line 160
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    .line 161
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    .line 162
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    .line 164
    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsVowifiOn:Z

    .line 165
    move/from16 v0, p39

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    .line 166
    move/from16 v0, p40

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    .line 167
    move/from16 v0, p41

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv4:I

    .line 168
    move/from16 v0, p42

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv6:I

    .line 169
    move/from16 v0, p43

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mImeiVendorAttr:I

    .line 170
    move/from16 v0, p44

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTestInterfaceNum:I

    .line 171
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEmergencyApnType:Ljava/lang/String;

    .line 172
    move/from16 v0, p46

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsConnectedModeDpdAllow:Z

    .line 173
    move/from16 v0, p47

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Enabled:Z

    .line 174
    move/from16 v0, p48

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Preferred:Z

    .line 175
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mCertiPath:Ljava/lang/String;

    .line 176
    move/from16 v0, p50

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsUsingCerti:Z

    .line 177
    return-void
.end method


# virtual methods
.method public getAlwaysOnApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdnId()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaRssi()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getCertiPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mCertiPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmergencyApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEmergencyApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getEpdgFQDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getHoDelayTimer()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mHoDelayTimer:I

    return v0
.end method

.method public getIdiImsi()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    return v0
.end method

.method public getIdiMac()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mImeiVendorAttr:I

    return v0
.end method

.method public getIsAnsIntegrationEnabled()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    return v0
.end method

.method public getIsBroadcastHONotiEnabled()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    return v0
.end method

.method public getIsDynamicFQDN()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    return v0
.end method

.method public getIsDynamicUserFQDN()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicUserFqdn:Z

    return v0
.end method

.method public getIsIpv6Enabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Enabled:Z

    return v0
.end method

.method public getIsIpv6Preferred()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Preferred:Z

    return v0
.end method

.method public getIsRtcpIntegrationEnabled()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    return v0
.end method

.method public getIsTestingOnDemandPdnHandoff()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    return v0
.end method

.method public getIsUsingCerti()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsUsingCerti:Z

    return v0
.end method

.method public getIsVoWifiEnabled()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsVowifiOn:Z

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv4:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv6:I

    return v0
.end method

.method public getPktLossPercent()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercent:I

    return v0
.end method

.method public getSmartWifiTimer()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    return v0
.end method

.method public getSysSelTimer()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    return v0
.end method

.method public getTepdg1xScanTimer()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xScanTimer:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTestNetInterfaceNum()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTestInterfaceNum:I

    return v0
.end method

.method public getThreshold2gRoveIn()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveIn:I

    return v0
.end method

.method public getThreshold2gRoveOut()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveOut:I

    return v0
.end method

.method public getThreshold3gRoveIn()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveIn:I

    return v0
.end method

.method public getThreshold3gRoveOut()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveOut:I

    return v0
.end method

.method public getThreshold4gRoveIn()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveIn:I

    return v0
.end method

.method public getThreshold4gRoveOut()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveOut:I

    return v0
.end method

.method public getWifiIpConfigTimer()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiIpConfigTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiB:I

    return v0
.end method

.method public getWifiRssiC()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiC:I

    return v0
.end method

.method public getWifiRssiIntentDelayTimer()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiIntentDelayTimer:I

    return v0
.end method

.method public getWifiRssiRoveInVoice()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInVoice:I

    return v0
.end method

.method public getWifiRssiRoveInWifiOnly()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInWifiOnly:I

    return v0
.end method

.method public getWifiRssiRoveOutWifiOnly()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveOutWifiOnly:I

    return v0
.end method

.method public getmKeepAliveTimer()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    return v0
.end method

.method public isConnectedModeDpdAllow()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsConnectedModeDpdAllow:Z

    return v0
.end method

.method public isRetryEnabledForAlwaysOnApn()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    return v0
.end method

.method public isThrottlingEnabled()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    return v0
.end method
