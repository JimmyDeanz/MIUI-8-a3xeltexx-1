.class public Landroid/sec/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final ENGINE_ID_UCMENGINE:Ljava/lang/String; = "ucsengine"

.field public static final SECURITY_LEVEL_EAP_AKA:I = 0x19

.field public static final SECURITY_LEVEL_EAP_AKA_CCKM:I = 0x1b

.field public static final SECURITY_LEVEL_EAP_AKA_FT:I = 0x1a

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME:I = 0x1c

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_CCKM:I = 0x1e

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_FT:I = 0x1d

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_FAST_CCKM:I = 0x12

.field public static final SECURITY_LEVEL_EAP_FAST_FT:I = 0x11

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_LEAP_CCKM:I = 0x10

.field public static final SECURITY_LEVEL_EAP_LEAP_FT:I = 0xf

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_PEAP_CCKM:I = 0xa

.field public static final SECURITY_LEVEL_EAP_PEAP_FT:I = 0x9

.field public static final SECURITY_LEVEL_EAP_PWD:I = 0x13

.field public static final SECURITY_LEVEL_EAP_PWD_CCKM:I = 0x15

.field public static final SECURITY_LEVEL_EAP_PWD_FT:I = 0x14

.field public static final SECURITY_LEVEL_EAP_SIM:I = 0x16

.field public static final SECURITY_LEVEL_EAP_SIM_CCKM:I = 0x18

.field public static final SECURITY_LEVEL_EAP_SIM_FT:I = 0x17

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TLS_CCKM:I = 0xe

.field public static final SECURITY_LEVEL_EAP_TLS_FT:I = 0xd

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_EAP_TTLS_CCKM:I = 0xc

.field public static final SECURITY_LEVEL_EAP_TTLS_FT:I = 0xb

.field public static final SECURITY_LEVEL_FT_PSK:I = 0x8

.field public static final SECURITY_LEVEL_HIGHEST:I = 0x1e

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_UNKNOWN:I = -0x1

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "WifiPolicy"

    sput-object v0, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 10
    .param p0, "enterpriseNetwork"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 387
    if-eqz p0, :cond_1e

    .line 388
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 389
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    :goto_0
    return v3

    .line 392
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 393
    :cond_1
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v4

    .line 394
    goto :goto_0

    .line 395
    :cond_2
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v5

    .line 396
    goto :goto_0

    .line 397
    :cond_3
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 399
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 400
    .local v0, "eap":I
    if-nez v0, :cond_4

    .line 401
    const/4 v3, 0x5

    goto :goto_0

    .line 402
    :cond_4
    if-ne v0, v4, :cond_5

    .line 403
    const/4 v3, 0x6

    goto :goto_0

    .line 404
    :cond_5
    if-ne v0, v3, :cond_6

    move v3, v6

    .line 405
    goto :goto_0

    .line 406
    :cond_6
    if-ne v0, v5, :cond_7

    move v3, v7

    .line 407
    goto :goto_0

    .line 408
    :cond_7
    if-ne v0, v6, :cond_8

    .line 409
    const/4 v3, 0x4

    goto :goto_0

    .line 410
    :cond_8
    if-ne v0, v7, :cond_9

    .line 411
    const/16 v3, 0x13

    goto :goto_0

    .line 412
    :cond_9
    const/4 v3, 0x5

    if-ne v0, v3, :cond_a

    .line 413
    const/16 v3, 0x19

    goto :goto_0

    .line 414
    :cond_a
    const/4 v3, 0x6

    if-ne v0, v3, :cond_b

    .line 415
    const/16 v3, 0x1c

    goto :goto_0

    .line 416
    :cond_b
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1e

    .line 417
    const/16 v3, 0x16

    goto :goto_0

    .line 419
    .end local v0    # "eap":I
    :cond_c
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 420
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 421
    .local v2, "eapType":I
    if-nez v2, :cond_d

    .line 422
    const/16 v3, 0x9

    goto :goto_0

    .line 423
    :cond_d
    if-ne v2, v4, :cond_e

    .line 424
    const/16 v3, 0xb

    goto :goto_0

    .line 425
    :cond_e
    if-ne v2, v3, :cond_f

    .line 426
    const/16 v3, 0xd

    goto :goto_0

    .line 427
    :cond_f
    if-ne v2, v5, :cond_10

    .line 428
    const/16 v3, 0xf

    goto :goto_0

    .line 429
    :cond_10
    if-ne v2, v6, :cond_11

    .line 430
    const/16 v3, 0x11

    goto :goto_0

    .line 431
    :cond_11
    if-ne v2, v7, :cond_12

    .line 432
    const/16 v3, 0x14

    goto :goto_0

    .line 433
    :cond_12
    const/4 v3, 0x5

    if-ne v2, v3, :cond_13

    .line 434
    const/16 v3, 0x1a

    goto/16 :goto_0

    .line 435
    :cond_13
    const/4 v3, 0x6

    if-ne v2, v3, :cond_14

    .line 436
    const/16 v3, 0x1d

    goto/16 :goto_0

    .line 437
    :cond_14
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1e

    .line 438
    const/16 v3, 0x17

    goto/16 :goto_0

    .line 440
    .end local v2    # "eapType":I
    :cond_15
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 441
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 442
    .local v1, "eapMethod":I
    if-nez v1, :cond_16

    .line 443
    const/16 v3, 0xa

    goto/16 :goto_0

    .line 444
    :cond_16
    if-ne v1, v4, :cond_17

    .line 445
    const/16 v3, 0xc

    goto/16 :goto_0

    .line 446
    :cond_17
    if-ne v1, v3, :cond_18

    .line 447
    const/16 v3, 0xe

    goto/16 :goto_0

    .line 448
    :cond_18
    if-ne v1, v5, :cond_19

    .line 449
    const/16 v3, 0x10

    goto/16 :goto_0

    .line 450
    :cond_19
    if-ne v1, v6, :cond_1a

    .line 451
    const/16 v3, 0x12

    goto/16 :goto_0

    .line 452
    :cond_1a
    if-ne v1, v7, :cond_1b

    .line 453
    const/16 v3, 0x15

    goto/16 :goto_0

    .line 454
    :cond_1b
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1c

    .line 455
    const/16 v3, 0x1b

    goto/16 :goto_0

    .line 456
    :cond_1c
    const/4 v3, 0x6

    if-ne v1, v3, :cond_1d

    .line 457
    const/16 v3, 0x1e

    goto/16 :goto_0

    .line 458
    :cond_1d
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1e

    .line 459
    const/16 v3, 0x18

    goto/16 :goto_0

    .line 464
    .end local v1    # "eapMethod":I
    :cond_1e
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public static getSecurityLevel(I)I
    .locals 1
    .param p0, "security"    # I

    .prologue
    .line 478
    packed-switch p0, :pswitch_data_0

    .line 523
    const/4 v0, 0x1

    .line 525
    .local v0, "securityLevel":I
    :goto_0
    return v0

    .line 480
    .end local v0    # "securityLevel":I
    :pswitch_0
    const/4 v0, 0x1

    .line 481
    .restart local v0    # "securityLevel":I
    goto :goto_0

    .line 483
    .end local v0    # "securityLevel":I
    :pswitch_1
    const/4 v0, 0x2

    .line 484
    .restart local v0    # "securityLevel":I
    goto :goto_0

    .line 487
    .end local v0    # "securityLevel":I
    :pswitch_2
    const/4 v0, 0x3

    .line 488
    .restart local v0    # "securityLevel":I
    goto :goto_0

    .line 495
    .end local v0    # "securityLevel":I
    :pswitch_3
    const/4 v0, 0x4

    .line 496
    .restart local v0    # "securityLevel":I
    goto :goto_0

    .line 503
    .end local v0    # "securityLevel":I
    :pswitch_4
    const/4 v0, 0x5

    .line 504
    .restart local v0    # "securityLevel":I
    goto :goto_0

    .line 520
    .end local v0    # "securityLevel":I
    :pswitch_5
    const/4 v0, 0x6

    .line 521
    .restart local v0    # "securityLevel":I
    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 301
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-edmAddOrUpdate returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 4

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 221
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserPolicyChanges()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 227
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowUserPolicyChanges returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAllowUserProfiles(ZI)Z
    .locals 4
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 240
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserProfiles(ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 246
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowUserProfiles returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 4

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 360
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAutomaticConnectionToWifi()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 366
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAutomaticConnectionToWifi returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 203
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 204
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getBlockedNetworks()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return-object v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getBlockedNetworks returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 4

    .prologue
    .line 284
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 285
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getMinimumRequiredSecurity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 291
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getMinimumRequiredSecurity returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 186
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getNetworkSSID returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 4

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 258
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getPromptCredentialsEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 264
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getPromptCredentialsEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 377
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getWifiSsidRestrictionList(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 383
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return-object v2

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getWifiSsidRestrictionList returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 4

    .prologue
    .line 341
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 342
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 343
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isWifiStateChangeAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 348
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isWifiStateChangeAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 326
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 327
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 332
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-removeNetworkConfiguration returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
