.class Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParameterManager"
.end annotation


# instance fields
.field public final DATA_RATE_THRESHOLD:I

.field public final DEFAULT_DNS_PING_TIMEOUT_MS:I

.field public final DEFAULT_ENHANCED_QC_SETS:I

.field public final DEFAULT_ENHANCED_TARGET_RSSI:I

.field public final DEFAULT_GOOD_RX_PACKETS_BASE:I

.field public final DEFAULT_MIN_DNS_RESPONSES:I

.field public final DEFAULT_MSS:I

.field public final DEFAULT_NO_RX_PACKETS_LIMIT:I

.field public final DEFAULT_NUM_DNS_PINGS:I

.field public final DEFAULT_PACKET_SIZE:I

.field public final DEFAULT_PASS_PACKETS:I

.field public final DEFAULT_POOR_RX_PACKETS_LIMIT:I

.field public final DEFAULT_QC_PASS_BYTES_FOR_IPV6:I

.field public final DEFAULT_QC_REPEAT:I

.field public final DEFAULT_QC_SETS:I

.field public final DEFAULT_QC_TIMEOUT_SEC:I

.field public final DEFAULT_RESTORE_TARGET_RSSI_SEC:I

.field public final DEFAULT_URL:Ljava/lang/String;

.field public DEFAULT_URL_STRING:Ljava/lang/String;

.field public final DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

.field public final DNS_INTRATEST_PING_INTERVAL_MS:I

.field public final DNS_START_DELAY_MS:I

.field public final ENHANCED_QC_INTERVAL_SEC:I

.field public final FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

.field public FD_DISCONNECT_THRESHOLD:D

.field public FD_EMA_ALPHA:I

.field public FD_EVALUATE_COUNT:I

.field public FD_EVAL_LEAD_TIME:I

.field public FD_MA_UNIT:I

.field public FD_MA_UNIT_SAMPLE_COUNT:I

.field public final FD_RAW_RSSI_SIZE:I

.field public FD_RSSI_LOW_THRESHOLD:I

.field public final FD_RSSI_SLOPE_EXP_COEFFICIENT:D

.field public final LIST1:[Ljava/lang/String;

.field public final LIST2:[Ljava/lang/String;

.field public final LIST3:[Ljava/lang/String;

.field public final PATH_OF_RESULT:Ljava/lang/String;

.field public final QC_ALLOWED_REDIRECT_COUNT:I

.field public final QC_CONNECTION_TIMEOUT_SEC:I

.field public final QC_HANDLER_NUM:I

.field public final QC_HTTP_GET_BUFFER_SIZE:I

.field public final QC_INIT_ID:I

.field public final QC_RETRY_LIMIT:I

.field public final QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

.field public final RSSI_THRESHOLD:I

.field public final SMARTCM_VALUE_FILE:Ljava/lang/String;

.field public final SOCKET_CONNECTION_NO_RESPONSE_TIMEOUT:I

.field public final TCP_HEADER_SIZE:I

.field public final TEST_LIST:[Ljava/lang/String;

.field public final VERIFYING_STATE_PASS_PACKETS:I

.field public WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

.field public WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

.field public final WLANQCPATH_PROP_NAME:Ljava/lang/String;

.field public mCancelledEnhancedQCId:I

.field public mDataRateThreshold:I

.field public mDnsNumPings:I

.field public mEnhancedQCEnabled:Z

.field public mGoodRxPacketsBase:I

.field public mGoodRxThreshold:I

.field public mIsAutoConnect:Z

.field public mLastPoorDetectedTime:J

.field public mMinDnsResponses:I

.field public mNeedResultNormalization:Z

.field public mNoRxPacketsLimit:I

.field public mPassBytes:I

.field public mPassBytesVerifyingState:I

.field public mPoorRxPacketsLimit:I

.field public mPropertiesModelName:Ljava/lang/String;

.field public mPropertiesOsVersion:Ljava/lang/String;

.field public mQCRedirectCount:I

.field public mQCRepeat:I

.field public mQCRetry:I

.field public mQCSets:I

.field public mQCSetsVerifyingState:I

.field public mQCTimeoutMs:I

.field public mQCUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRssiThreshold:I

.field public mTryEnhancedQCAgain:Z

.field public mUrlList:[Ljava/lang/String;

.field public mUserAgentModelName:Ljava/lang/String;

.field public mWeakSignalQCStartTime:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 674
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const-string v0, "/data/misc/wifi/.smartCM"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->SMARTCM_VALUE_FILE:Ljava/lang/String;

    .line 557
    const-string v0, "/data/log/"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->PATH_OF_RESULT:Ljava/lang/String;

    .line 558
    const-string v0, "wlan.qc.path"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WLANQCPATH_PROP_NAME:Ljava/lang/String;

    .line 561
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_NUM_DNS_PINGS:I

    .line 562
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_MIN_DNS_RESPONSES:I

    .line 563
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_DNS_PING_TIMEOUT_MS:I

    .line 564
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DNS_START_DELAY_MS:I

    .line 565
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DNS_INTRATEST_PING_INTERVAL_MS:I

    .line 568
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->RSSI_THRESHOLD:I

    .line 569
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DATA_RATE_THRESHOLD:I

    .line 570
    const/16 v0, 0x596

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_MSS:I

    .line 571
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->TCP_HEADER_SIZE:I

    .line 572
    const/16 v0, 0x5cc

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_PACKET_SIZE:I

    .line 573
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_PASS_PACKETS:I

    .line 574
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->VERIFYING_STATE_PASS_PACKETS:I

    .line 575
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_SETS:I

    .line 576
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_REPEAT:I

    .line 577
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_TIMEOUT_SEC:I

    .line 578
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_ALLOWED_REDIRECT_COUNT:I

    .line 579
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_RETRY_LIMIT:I

    .line 580
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_INIT_ID:I

    .line 581
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_HANDLER_NUM:I

    .line 582
    const/16 v0, 0x1400

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_HTTP_GET_BUFFER_SIZE:I

    .line 583
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_CONNECTION_TIMEOUT_SEC:I

    .line 584
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->SOCKET_CONNECTION_NO_RESPONSE_TIMEOUT:I

    .line 585
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

    .line 586
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->ENHANCED_QC_INTERVAL_SEC:I

    .line 587
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_ENHANCED_QC_SETS:I

    .line 588
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_ENHANCED_TARGET_RSSI:I

    .line 589
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_RESTORE_TARGET_RSSI_SEC:I

    .line 590
    const v0, 0xf423f

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_PASS_BYTES_FOR_IPV6:I

    .line 593
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_NO_RX_PACKETS_LIMIT:I

    .line 594
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_POOR_RX_PACKETS_LIMIT:I

    .line 595
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_GOOD_RX_PACKETS_BASE:I

    .line 598
    const-string v0, "http://www.google.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL:Ljava/lang/String;

    .line 599
    const-string v0, "www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

    .line 600
    const-string v0, "www.google.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 603
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://www.msn.com"

    aput-object v1, v0, v4

    const-string v1, "http://www.bing.com"

    aput-object v1, v0, v2

    const-string v1, "http://www.youtube.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.google.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST1:[Ljava/lang/String;

    .line 609
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://m.hao123.com"

    aput-object v1, v0, v4

    const-string v1, "http://www.baidu.com"

    aput-object v1, v0, v2

    const-string v1, "http://m.taobao.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.qq.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST2:[Ljava/lang/String;

    .line 615
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://www.naver.com"

    aput-object v1, v0, v4

    const-string v1, "http://www.msn.com"

    aput-object v1, v0, v2

    const-string v1, "http://www.nate.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.google.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST3:[Ljava/lang/String;

    .line 621
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://www.samsung.com"

    aput-object v1, v0, v4

    const-string v1, "http://d2uzsrnmmf6tds.cloudfront.net/50KB.txt"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->TEST_LIST:[Ljava/lang/String;

    .line 629
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    .line 630
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    .line 631
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    .line 632
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    .line 633
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RAW_RSSI_SIZE:I

    .line 634
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    .line 635
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    .line 636
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT:I

    .line 637
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVAL_LEAD_TIME:I

    .line 638
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EMA_ALPHA:I

    .line 641
    const/16 v0, -0x59

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    .line 642
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    .line 643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mWeakSignalQCStartTime:J

    .line 646
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    .line 647
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    .line 648
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    .line 649
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    .line 650
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mTryEnhancedQCAgain:Z

    .line 651
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    .line 652
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNeedResultNormalization:Z

    .line 675
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->resetParameters()V

    .line 676
    return-void
.end method

.method private getDoubleValue(Ljava/lang/String;D)D
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 876
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 880
    :goto_0
    return-wide v2

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong double:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, p2

    .line 880
    goto :goto_0
.end method

.method private getIntValue(Ljava/lang/String;I)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 856
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 860
    :goto_0
    return v1

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong int:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 860
    goto :goto_0
.end method

.method private getLongValue(Ljava/lang/String;J)J
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 866
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 870
    :goto_0
    return-wide v2

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong double:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, p2

    .line 870
    goto :goto_0
.end method

.method private getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defalutValue"    # Ljava/lang/String;

    .prologue
    .line 842
    if-nez p1, :cond_1

    .line 851
    .end local p2    # "defalutValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 846
    .restart local p2    # "defalutValue":Ljava/lang/String;
    :cond_1
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 847
    .local v0, "idx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 851
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private loadSmartCMFile()Ljava/lang/String;
    .locals 10

    .prologue
    .line 885
    const/4 v5, 0x0

    .line 886
    .local v5, "reader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 887
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 889
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/.smartCM"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 891
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    const-string v4, ""

    .line 892
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 893
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    goto :goto_0

    .line 900
    :cond_0
    if-eqz v1, :cond_1

    .line 901
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 903
    :cond_1
    if-eqz v6, :cond_2

    .line 904
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 911
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_3
    :goto_1
    return-object v2

    .line 906
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 907
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 908
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 910
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 895
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 896
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "no file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 897
    const/4 v2, 0x0

    .line 900
    if-eqz v0, :cond_4

    .line 901
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 903
    :cond_4
    if-eqz v5, :cond_3

    .line 904
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 906
    :catch_2
    move-exception v3

    .line 907
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 908
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 899
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 900
    :goto_3
    if-eqz v0, :cond_5

    .line 901
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 903
    :cond_5
    if-eqz v5, :cond_6

    .line 904
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 909
    :cond_6
    :goto_4
    throw v7

    .line 906
    :catch_3
    move-exception v3

    .line 907
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 908
    const-string v8, "WifiWatchdogStateMachine"

    const-string v9, "IOException closing file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 899
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 895
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public createSmartCMFile(Ljava/lang/String;)I
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 915
    const/4 v3, 0x0

    .line 916
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 917
    .local v1, "file":Ljava/io/File;
    const/4 v5, -0x1

    .line 920
    .local v5, "ret":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/misc/wifi/.smartCM"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 923
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "removed smartCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 926
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 928
    new-instance v4, Ljava/io/FileWriter;

    const-string v6, "/data/misc/wifi/.smartCM"

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 929
    .end local v3    # "out":Ljava/io/FileWriter;
    .local v4, "out":Ljava/io/FileWriter;
    if-eqz p1, :cond_3

    .line 930
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "created smartCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_2
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 933
    :cond_3
    const/4 v5, 0x1

    .line 937
    if-eqz v4, :cond_6

    .line 939
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .line 945
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :cond_4
    :goto_0
    return v5

    .line 940
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .line 942
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_0

    .line 934
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Exception creating file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 937
    if-eqz v3, :cond_4

    .line 939
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 940
    :catch_2
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 937
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_5

    .line 939
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 942
    :cond_5
    :goto_3
    throw v6

    .line 940
    :catch_3
    move-exception v0

    .line 941
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 937
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_2

    .line 934
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :cond_6
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method public resetParameters()V
    .locals 6

    .prologue
    const/16 v5, 0x56f4

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 679
    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$002(Z)Z

    .line 680
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    .line 681
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    .line 682
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    .line 683
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    .line 684
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    .line 685
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    .line 686
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    .line 687
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    .line 688
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    .line 689
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    .line 690
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    .line 691
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    .line 692
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    .line 693
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    .line 694
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNoRxPacketsLimit:I

    .line 695
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPoorRxPacketsLimit:I

    .line 696
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    .line 697
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRetry:I

    .line 698
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRedirectCount:I

    .line 699
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    .line 700
    return-void
.end method

.method public setEvaluationParameters()V
    .locals 1

    .prologue
    .line 735
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->loadSmartCMFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setEvaluationParameters(Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method

.method public setEvaluationParameters(Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 742
    if-nez p1, :cond_1

    .line 839
    :cond_0
    return-void

    .line 746
    :cond_1
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "line":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 752
    aget-object v2, v1, v0

    .line 754
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 751
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_3
    const-string v3, "dbg="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 759
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$002(Z)Z

    .line 760
    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMARTCM_DBG : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 759
    :cond_4
    const-string v3, "0"

    goto :goto_2

    .line 762
    :cond_5
    const-string v3, "dnp="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 763
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    .line 764
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDnsNumPings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 766
    :cond_6
    const-string v3, "mdr="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 767
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    .line 768
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMinDnsResponses : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 770
    :cond_7
    const-string v3, "ul="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 771
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 772
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 773
    const-string v3, "http://www.samsung.com"

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->TEST_LIST:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    .line 775
    :cond_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUrlString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 777
    :cond_9
    const-string v3, "rth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 778
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    .line 779
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRssiThreshold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dBm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 781
    :cond_a
    const-string v3, "drth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 782
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    .line 783
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataRateThreshold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Mbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 785
    :cond_b
    const-string v3, "qcr="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 786
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    .line 787
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQCRepeat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 789
    :cond_c
    const-string v3, "qcset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 790
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    .line 791
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQCSets : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 793
    :cond_d
    const-string v3, "qctms="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 794
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    .line 795
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQCTimeoutMs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 797
    :cond_e
    const-string v3, "uamn="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 798
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    .line 799
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserAgentModelName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 801
    :cond_f
    const-string v3, "pbs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 802
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    .line 803
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPassBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 805
    :cond_10
    const-string v3, "grth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 806
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    .line 807
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGoodRxThreshold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 809
    :cond_11
    const-string v3, "fdrlth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 810
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    .line 811
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 813
    :cond_12
    const-string v3, "fddth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 814
    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getDoubleValue(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    .line 815
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 817
    :cond_13
    const-string v3, "fdusc="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 818
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    .line 819
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 821
    :cond_14
    const-string v3, "fdec="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 822
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    .line 823
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FD_EVALUATE_COUNT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 825
    :cond_15
    const-string v3, "lsims="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 826
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$502(J)J

    .line 827
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 829
    :cond_16
    const-string v3, "wspdrm="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 830
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    .line 831
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 833
    :cond_17
    const-string v3, "wsfqcs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    .line 835
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setUrlList()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    .line 723
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1
    return-void

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto :goto_0

    .line 712
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "default"

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "cn"

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "kr"

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST3:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 716
    const-string v0, "www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 717
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use China URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST2:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 720
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST1:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setUrlMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, "urlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    .line 729
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    .line 731
    return-void
.end method
