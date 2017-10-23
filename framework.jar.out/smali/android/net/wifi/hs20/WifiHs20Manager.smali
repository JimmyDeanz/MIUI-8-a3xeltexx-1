.class public Landroid/net/wifi/hs20/WifiHs20Manager;
.super Ljava/lang/Object;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;,
        Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;,
        Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;,
        Landroid/net/wifi/hs20/WifiHs20Manager$Channel;,
        Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;,
        Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;,
        Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_HS20_PROVISIONING_STATE_CHANGE:Ljava/lang/String; = "adroid.net.wifi.hs20.provisioning_state"

.field public static final ACTION_SEC_CLOSE_BROWSER:Ljava/lang/String; = "android.net.wifi.HS20_SEC_CLOSE_BROWSER"

.field public static final ACTION_SEC_LAUNCH_OPERATOR_URL:Ljava/lang/String; = "android.net.wifi.HS20_SEC_LAUNCH_OPERTOR_URL"

.field public static final ACTION_SEC_LAUNCH_SP_URL:Ljava/lang/String; = "android.net.wifi.HS20_SEC_LAUNCH_SP_URL"

.field public static final B64:I = 0x6

.field private static final BASE:I = 0x28000

.field public static final BINARY:I = 0x4

.field public static final BOOL:I = 0x2

.field public static final CHAR:I = 0x1

.field public static final DM_ADD_ACTION:I = 0x3

.field public static final DM_DELETE_ACTION:I = 0x6

.field public static final DM_END_ACTION:I = 0x2

.field public static final DM_EXEC_ACTION:I = 0x7

.field public static final DM_GET_ACTION:I = 0x5

.field public static final DM_REPLACE_ACTION:I = 0x4

.field public static final DM_START_ACTION:I = 0x1

.field public static final EAP_TYPE_FOUND:Ljava/lang/String; = "android.net.wifi.hs20.EAP_TYPE_FOUND"

.field public static final EXTRA_HS20_STATE:Ljava/lang/String; = "hs20_state"

.field public static final HS20_ANQP_ALL:I = -0x1

.field public static final HS20_ANQP_ALL_EX_OSU:I = 0x1

.field public static final HS20_ANQP_ANONYMOUS_NAI:I = 0x100

.field public static final HS20_ANQP_CAPABILITY:I = 0x2

.field public static final HS20_ANQP_CONN_CAP:I = 0x10

.field public static final HS20_ANQP_FRIENLDLY_NAME:I = 0x4

.field public static final HS20_ANQP_ICON_REQUEST:I = 0x200

.field public static final HS20_ANQP_NAI_HOME:I = 0x20

.field public static final HS20_ANQP_OPERATING_CLASS:I = 0x40

.field public static final HS20_ANQP_OSU_LIST:I = 0x80

.field public static final HS20_ANQP_WAN_MATRIX:I = 0x8

.field public static final HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

.field public static final HS20_ICON_STORE_PATH:Ljava/lang/String; = "/data/hs20/icons/"

.field public static final HS20_OSU_SELECTED:Ljava/lang/String; = "android.net.wifi.HS20_OSU_SELECTED"

.field public static final HS20_OSU_STATE_UNKNOWN:I = 0x270f

.field public static final HS20_PROVISIONIG_FRIENDLY_NAME:Ljava/lang/String; = "friendly_name"

.field public static final HS20_PROVISIONIG_ICON_PATH:Ljava/lang/String; = "icon_path"

.field public static final HS20_PROVISIONIG_STATE:Ljava/lang/String; = "hs20_state"

.field public static final HS20_REMEDIATION_REQUEST_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_REMEDIATION_REQUEST"

.field public static final HS20_STATE_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_STATE_CHANGE"

.field public static final HS20_STATE_DISABLED:I = 0x0

.field public static final HS20_STATE_ENABLED:I = 0x1

.field public static final HS20_STATE_POLICY_UPDATE_FAILED:I = 0x2331

.field public static final HS20_STATE_POLICY_UPDATE_STARTED:I = 0x232f

.field public static final HS20_STATE_POLICY_UPDATE_SUCCESSFUL:I = 0x2330

.field public static final HS20_STATE_REMEDIATION_FAILED:I = 0x232e

.field public static final HS20_STATE_REMEDIATION_STARTED:I = 0x232c

.field public static final HS20_STATE_REMEDIATION_SUCCESSFUL:I = 0x232d

.field public static final HS20_STATE_SUBSCRIPTION_FAILED:I = 0x232b

.field public static final HS20_STATE_SUBSCRIPTION_STARTED:I = 0x2329

.field public static final HS20_STATE_SUBSCRIPTION_SUCCESSFUL:I = 0x232a

.field public static final HS20_STATE_UNKNOWN:I = 0x2

.field public static final HTTP_GET_CONTENT_TYPE_ERROR:I = 0x3

.field public static final HTTP_GET_RESPONSE_ERROR:I = 0x5

.field public static final INSTALL_CRED:Ljava/lang/String; = "android.net.wifi.hs20.INSTALL_CRED"

.field public static final INSTALL_CRED_BROWSER:Ljava/lang/String; = "android.net.wifi.hs20.INSTALL_CRED_BROWSER"

.field public static final INTEGER:I = 0x0

.field public static final INVALID_CRED_ID:I = -0x1

.field public static final NODE:I = 0x5

.field public static final REQUEST_ANQP_INFO:I = 0x28001

.field public static final REQUEST_ANQP_INFO_FAILED:I = 0x28002

.field public static final REQUEST_ANQP_INFO_SUCCEEDED:I = 0x28003

.field public static final REQUEST_OSU_ICON:I = 0x28004

.field public static final REQUEST_OSU_ICON_FAILED:I = 0x28005

.field public static final REQUEST_OSU_ICON_SUCCEEDED:I = 0x28006

.field public static final SEC_COMMAND_CLEAR_HS20:I = 0x3e9

.field public static final SEC_COMMAND_ID_HS20_FETCH_OSU:I = 0x3e8

.field public static final SEC_COMMAND_ID_RELOAD_SIM_STATE:I = 0xc3

.field public static final START_OSU:I = 0x28007

.field public static final START_OSU_BROWSER:I = 0x28008

.field public static final START_OSU_FAILED:I = 0x28009

.field public static final START_OSU_SUCCEEDED:I = 0x2800a

.field private static final TAG:Ljava/lang/String; = "Hs20Manager"

.field public static final TEST_CLEAR_DB:Ljava/lang/String; = "android.net.wifi.hs20.TEST_CLEAR_DB"

.field public static final TEST_CONNECT_WITH_STATIC_IP:Ljava/lang/String; = "android.net.wifi.hs20.TEST_CONNECT_WITH_STATIC_IP"

.field public static final TEST_GEN_CRED_CONF_FILE:Ljava/lang/String; = "android.net.wifi.hs20.TEST_GEN_CRED_CONF_FILE"

.field public static final TEST_START_OSU_PROCESS:Ljava/lang/String; = "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

.field public static final TEST_START_OSU_PROCESS_NOSIGMA:Ljava/lang/String; = "android.net.wifi.hs20.TEST_START_OSU_PROCESS_NOSIGMA"

.field public static final TEST_TRIGGER_INSTALL_FILE:Ljava/lang/String; = "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

.field public static final TEST_TRIGGER_POLICY_UPDATE:Ljava/lang/String; = "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/hs20/IWifiHs20Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hs20/IWifiHs20Manager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/hs20/IWifiHs20Manager;

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mContext:Landroid/content/Context;

    .line 534
    iput-object p2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    .line 535
    return-void
.end method


# virtual methods
.method public addDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 6
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 765
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 766
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "Action"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    const-string v3, "Uri"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v3, "Format"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    iget v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 770
    .local v2, "format":I
    if-nez v2, :cond_1

    .line 771
    const-string v3, "data"

    iget-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 781
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v3, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z

    move-result v3

    .line 783
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "format":I
    :goto_1
    return v3

    .line 772
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "format":I
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 773
    const-string v3, "data"

    iget-boolean v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 782
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "format":I
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 774
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "format":I
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 775
    const-string v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 777
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 778
    const-string v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 779
    const-string v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public cancelSubscription()V
    .locals 2

    .prologue
    .line 614
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->cancelSubscription()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 4
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 825
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 826
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Action"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 827
    const-string v2, "Uri"

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v2, "Format"

    iget v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 829
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 831
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteSubscription(I)Z
    .locals 2
    .param p1, "hsId"    # I

    .prologue
    .line 685
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->deleteSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 687
    :goto_0
    return v1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSubscription(IZ)Z
    .locals 2
    .param p1, "hsId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/hs20/IWifiHs20Manager;->enableSubscription(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endSession(I)Z
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 864
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 865
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Action"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 866
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 869
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 868
    :catch_0
    move-exception v1

    .line 869
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exec(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 4
    .param p1, "param"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 845
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 846
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Action"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    const-string v2, "Command"

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v2, "execData"

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 851
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCertID(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getCertID(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 921
    :goto_0
    return v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCredentials(IILjava/lang/String;)Landroid/net/wifi/hs20/WifiHs20DMData;
    .locals 5
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "subscriptionType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 897
    new-instance v1, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v1}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V

    .line 899
    .local v1, "dmData":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v4, p1, p2, p3}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getCredentials(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 901
    .local v0, "credentialDetails":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move-object v1, v3

    .line 907
    .end local v0    # "credentialDetails":Landroid/os/Bundle;
    .end local v1    # "dmData":Landroid/net/wifi/hs20/WifiHs20DMData;
    :goto_0
    return-object v1

    .line 903
    .restart local v0    # "credentialDetails":Landroid/os/Bundle;
    .restart local v1    # "dmData":Landroid/net/wifi/hs20/WifiHs20DMData;
    :cond_0
    const-string v4, "Username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    .line 904
    const-string v4, "Password"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 906
    .end local v0    # "credentialDetails":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    move-object v1, v3

    .line 907
    goto :goto_0
.end method

.method public getDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 10
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 715
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "Action"

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    const-string v6, "Uri"

    iget-object v7, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v6, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v6, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getDMData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 719
    .local v1, "dmData":Landroid/os/Bundle;
    const/4 v3, -0x1

    .line 721
    .local v3, "format":I
    if-nez v1, :cond_0

    .line 753
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dmData":Landroid/os/Bundle;
    .end local v3    # "format":I
    :goto_0
    return v4

    .line 723
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "dmData":Landroid/os/Bundle;
    .restart local v3    # "format":I
    :cond_0
    const-string v6, "Format"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 724
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Length of the data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataLen"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-nez v3, :cond_2

    .line 727
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: intData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    .line 729
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 730
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: intData11: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v4, v5

    .line 751
    goto :goto_0

    .line 731
    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 732
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    .line 733
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: booleanData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    goto :goto_1

    .line 752
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dmData":Landroid/os/Bundle;
    .end local v3    # "format":I
    :catch_0
    move-exception v2

    .line 753
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 735
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "dmData":Landroid/os/Bundle;
    .restart local v3    # "format":I
    :cond_3
    if-ne v3, v5, :cond_4

    .line 736
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: charData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 738
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: charData11: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v6, "dataLen"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    .line 740
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    goto :goto_1

    .line 741
    :cond_4
    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    .line 742
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: byteData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    .line 744
    const-string v6, "Hs20Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDMData: byteData11: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v6, "dataLen"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    .line 746
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    goto/16 :goto_1

    .line 747
    :cond_5
    if-ne v3, v9, :cond_1

    .line 748
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 749
    iput v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public getFormatType(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 881
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getFormatType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 883
    :goto_0
    return v1

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getKeyPass()[B
    .locals 2

    .prologue
    .line 932
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getKeyPass()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 934
    :goto_0
    return-object v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 573
    :goto_0
    return-object v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 573
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscribedSpList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20SubscribedSp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->getSubscribedSpList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 642
    :goto_0
    return-object v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
    .locals 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-virtual {p0}, Landroid/net/wifi/hs20/WifiHs20Manager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 550
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)V

    .line 554
    .local v0, "c":Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
    # getter for: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$500(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    # getter for: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mHandler:Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;
    invoke-static {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$400(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 557
    goto :goto_0
.end method

.method public isSubscrptionInProgress()Z
    .locals 2

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->isSubscrptionInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 603
    :goto_0
    return v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 603
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public modifyPasspointCred(Ljava/lang/String;)I
    .locals 3
    .param p1, "credInfo"    # Ljava/lang/String;

    .prologue
    .line 949
    :try_start_0
    const-string/jumbo v1, "modifyPasspointCred"

    const-string v2, "Load the credentials"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->modifyPasspointCred(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 952
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public replaceDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 6
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    const/4 v5, 0x4

    .line 795
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "Action"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    const-string v3, "Uri"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v3, "Format"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 799
    iget v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 800
    .local v2, "format":I
    if-nez v2, :cond_1

    .line 801
    const-string v3, "data"

    iget-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 811
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v3, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z

    move-result v3

    .line 813
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "format":I
    :goto_1
    return v3

    .line 802
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "format":I
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 803
    const-string v3, "data"

    iget-boolean v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 812
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "format":I
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 804
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "format":I
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 805
    const-string v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 807
    :cond_3
    if-ne v2, v5, :cond_0

    .line 808
    const-string v3, "data"

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 809
    const-string v3, "dataLen"

    iget v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 2
    .param p1, "selectedOsuProvider"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startPolicyUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->startPolicyUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSession()Z
    .locals 4

    .prologue
    .line 698
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 699
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v2, v0}, Landroid/net/wifi/hs20/IWifiHs20Manager;->handleDMRequest(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 702
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    .line 701
    :catch_0
    move-exception v1

    .line 702
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateCredPriorities(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager;->mService:Landroid/net/wifi/hs20/IWifiHs20Manager;

    invoke-interface {v1, p1}, Landroid/net/wifi/hs20/IWifiHs20Manager;->updateCredPriorities(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 657
    :goto_0
    return v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
