.class public Lcom/sec/epdg/mapcon/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[PolicyMgr]"

.field private static mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

.field private static mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

.field private static mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 20
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 21
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 37
    invoke-static {}, Lcom/sec/epdg/mapcon/IfomTable;->getInstance()Lcom/sec/epdg/mapcon/IfomTable;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/PolicyManager;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/sec/epdg/mapcon/PolicyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/PolicyManager;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createPolicyTable(Landroid/content/Context;ZZ)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mapcon"    # Z
    .param p3, "appPolicy"    # Z

    .prologue
    .line 210
    monitor-enter p0

    const/4 v0, 0x0

    .line 211
    .local v0, "result":Z
    if-eqz p2, :cond_0

    .line 212
    :try_start_0
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/MapconTable;->createMapconTable(Landroid/content/Context;)Z

    move-result v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    const-string v2, "[PolicyMgr]"

    const-string/jumbo v3, "error to create MAPCON table"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 224
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    monitor-exit p0

    return v1

    .line 218
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :cond_0
    if-eqz p3, :cond_1

    .line 219
    :try_start_1
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->createIfomTable(Landroid/content/Context;)Z

    move-result v0

    .line 220
    if-nez v0, :cond_1

    .line 221
    const-string v2, "[PolicyMgr]"

    const-string/jumbo v3, "error to create IFOM table"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v0

    .line 224
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0

    .line 210
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xd

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "result":Z
    if-nez p1, :cond_1

    .line 124
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return v0

    .line 125
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended(): Airplane mode ON"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_3
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 132
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifiInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 144
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended: No LTE but vowifi disabled. WLAN not allowed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 147
    :cond_5
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: No LTE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 150
    :cond_6
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 153
    :cond_7
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: No LTE&CS or weak LTE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    :cond_8
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended: LTE (good) + VoLTE off + no CS + VoWIFI on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "[PolicyMgr]"

    const-string v2, "LTE weak, IPME on L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 165
    :cond_a
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 166
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "no ifom"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "imsvideocall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "imsvideovoicecall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 168
    :cond_b
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 170
    :cond_c
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 171
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "imsvoicecall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "idle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    :cond_d
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: No LTE and No CS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 175
    :cond_e
    const-string/jumbo v1, "imsvoicecall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "idle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 176
    :cond_f
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: No LTE or weak lte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    :cond_10
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_11

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 182
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended: LTE (good) + VoLTE off + no CS + VoWIFI on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    :cond_11
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "[PolicyMgr]"

    const-string v2, "LTE weak, IPME on L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 189
    :cond_12
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v0

    .line 190
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 191
    const-string v1, "[PolicyMgr]"

    const-string v2, "LTE weak, IPME on L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    .line 194
    :cond_13
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_14
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xd

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "result":Z
    if-nez p1, :cond_1

    .line 43
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isW2LRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended(): TELEPHONY in service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 48
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isW2LRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isW2LRecommended(): only LTE is allowed RAT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_4
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended(): LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 62
    const/4 v0, 0x0

    .line 63
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: weak LTE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_5
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v0

    .line 66
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: no LTE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_6
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 72
    :cond_7
    const/4 v0, 0x0

    .line 73
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: LTE (good) + VoLTE off + VoWIFI on + cs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_8
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 78
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "no ifom"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "imsvoicecall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "idle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 80
    :cond_9
    const/4 v0, 0x1

    .line 84
    :goto_1
    if-eqz v0, :cond_d

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 85
    const-string/jumbo v1, "imsvoicecall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 86
    const/4 v0, 0x0

    .line 87
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: no LTE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 90
    const/4 v0, 0x0

    .line 91
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: weak LTE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_c
    const/4 v0, 0x1

    .line 94
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_d
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 101
    :cond_e
    const/4 v0, 0x0

    .line 102
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: LTE (good) + VoLTE off + VoWIFI on + cs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_f
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 108
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_10

    .line 110
    const/4 v0, 0x0

    .line 112
    :cond_10
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/MapconTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/IfomTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 236
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 237
    return-void
.end method

.method public updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 240
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 241
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntype"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 228
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 229
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 232
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 233
    return-void
.end method
