.class public Lcom/sec/erisclient/IPSecConnection;
.super Ljava/lang/Object;
.source "IPSecConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPSecConnection"

.field public static final TAG_ADAPTER_NAME:Ljava/lang/String; = "virtualAdapterName"

.field public static final TAG_ANTIREPLAY:Ljava/lang/String; = "antiReplay"

.field public static final TAG_CACERT:Ljava/lang/String; = "caCertData"

.field public static final TAG_CID:Ljava/lang/String; = "cid"

.field public static final TAG_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final TAG_GLOBAL_DNS_CONF:Ljava/lang/String; = "globalDNSConfig"

.field public static final TAG_IKE_CONN_TIMEOUT:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeConnectionTimeOut"

.field public static final TAG_IKE_DHGROUP:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeDhGroup"

.field public static final TAG_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeDpdTimeOut"

.field public static final TAG_IKE_DPD_TIMER:Ljava/lang/String; = "ApnSetting.mPeriodicDpdTimer"

.field public static final TAG_IKE_EAP_TYPE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeEapType"

.field public static final TAG_IKE_ENCRYPTION:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeEncryptType"

.field public static final TAG_IKE_IMEI:Ljava/lang/String; = "ApnSetting.mImei"

.field public static final TAG_IKE_INTEGRITY:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeIntegrity"

.field public static final TAG_IKE_LIFE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeLife"

.field public static final TAG_IKE_NAT_VALUE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeNatValue"

.field public static final TAG_IKE_VADAPT_NAME:Ljava/lang/String; = "ApnSetting.mIkeVirtualAdapterConf"

.field public static final TAG_IKE_VERSION:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeversion"

.field public static final TAG_IKE_WIN_SIZE:Ljava/lang/String; = "ApnSetting.ikesetting.mIkeWindowSize"

.field public static final TAG_IMEI_ATTR_TYPE:Ljava/lang/String; = "imeiVendorAttrType"

.field public static final TAG_IMEI_ATTR_VAL:Ljava/lang/String; = "imeiVendorAttrVal"

.field public static final TAG_INTERFACE:Ljava/lang/String; = "interface"

.field public static final TAG_IPSEC_AUTH_TYPE:Ljava/lang/String; = "ApnSetting.mIpSecauthType"

.field public static final TAG_IPSEC_DHGROUP:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecDHGroup"

.field public static final TAG_IPSEC_ENCRYPT:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecEncryptionType"

.field public static final TAG_IPSEC_INTEGRITY:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecIntegrityType"

.field public static final TAG_IPSEC_IP_TYPE:Ljava/lang/String; = "ApnSetting.mIpSecIpType"

.field public static final TAG_IPSEC_LIFETYPE:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecLifeTimeType"

.field public static final TAG_IPSEC_LIFEVAL:Ljava/lang/String; = "ApnSetting.ipsecsetting.mIpSecLifeval"

.field public static final TAG_IPSEC_OURI_TYPE:Ljava/lang/String; = "ApnSetting.mOwnUriType"

.field public static final TAG_IPSEC_OWN_URI:Ljava/lang/String; = "ApnSetting.mIpsecOwnUri"

.field public static final TAG_IPSEC_PFSVAL:Ljava/lang/String; = "ApnSetting.mPfsval"

.field public static final TAG_IPSEC_RMO_URI:Ljava/lang/String; = "ApnSetting.mIpsecRemoteUri"

.field public static final TAG_IPSEC_RURI_TYPE:Ljava/lang/String; = "ApnSetting.mRemoteUriType"

.field public static final TAG_IPSEC_SETTING_NA:Ljava/lang/String; = "ApnSetting.IWlanSettingName"

.field public static final TAG_IPSEC_TUN_MODE:Ljava/lang/String; = "ApnSetting.ipsecsetting.mTunnelMode"

.field public static final TAG_MOBIKE:Ljava/lang/String; = "ApnSetting.mMobikeval"

.field public static final TAG_PCSCF4_ATTR:Ljava/lang/String; = "pcscfv4VendorAttr"

.field public static final TAG_PCSCF6_ATTR:Ljava/lang/String; = "pcscfv6VendorAttr"

.field public static final TAG_PRESHARED_KEY:Ljava/lang/String; = "presharedKey"

.field public static final TAG_USER_AUTH:Ljava/lang/String; = "userAuth"

.field public static final TAG_V4_HANDOVER_IP:Ljava/lang/String; = "ipv4HandoverAddr"

.field public static final TAG_V6_HANDOVER_IP:Ljava/lang/String; = "ipv6HandoverAddr"


# instance fields
.field private adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field private antiReplay:Z

.field private authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field private bCaCertOk:Z

.field private caCert:Ljava/security/cert/X509Certificate;

.field private caCertData:[B

.field private cid:I

.field private gateway:Ljava/lang/String;

.field private globalDNSConfig:Z

.field private imeiVendorAttrType:I

.field private imeiVendorAttrVal:[B

.field private ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

.field private ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

.field private ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field private ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field private ipsecLifeTimeVal:I

.field private ipv4HandoverAddr:Ljava/lang/String;

.field private ipv6HandoverAddr:Ljava/lang/String;

.field private isConnected:Z

.field private mIkeConnectionTimeOut:I

.field private mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

.field private mIkeDpdTimeOut:I

.field private mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field private mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field private mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

.field private mIkeLife:I

.field private mIkeNatValue:I

.field private mIkeWindowSize:I

.field private mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

.field private mImei:Lcom/sec/epdg/IWlanEnum$Imei;

.field private mInterface:Ljava/lang/String;

.field private mobike:Z

.field private name:Ljava/lang/String;

.field private ownIdentity:Ljava/lang/String;

.field private ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private pcscfv4VendorAttr:I

.field private pcscfv6VendorAttr:I

.field private periodicDpdTimer:I

.field private pfsVal:Z

.field private presharedKey:Ljava/lang/String;

.field private remoteIdentity:Ljava/lang/String;

.field private remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private state:Lcom/sec/erisclient/IPSecConnectionState;

.field private subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

.field private userAuth:Z

.field private username:Ljava/lang/String;

.field private virtualAdapterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "IPSecConnection"

    const-string v1, "IPSecConnection()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 77
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    .line 79
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 80
    return-void
.end method

.method private setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "val"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->caCert:Ljava/security/cert/X509Certificate;

    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    goto :goto_0
.end method


# virtual methods
.method public addInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public declared-synchronized getConnID()I
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    return v0
.end method

.method public getDpdTimeout()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    return v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalDnsConfiguration()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    return v0
.end method

.method public getGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    return-object v0
.end method

.method public getHostAuthentication()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public getIPsecAntiReplay()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    return v0
.end method

.method public getIPsecEncryption()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    return-object v0
.end method

.method public getIPsecGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    return-object v0
.end method

.method public getIPsecIntegrity()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method

.method public getIPsecLife()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    return v0
.end method

.method public getIPsecLifeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public getIkeEncryption()Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    return-object v0
.end method

.method public getIkeIntegrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    return-object v0
.end method

.method public getIkeLife()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    return v0
.end method

.method public getIkeVersion()Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    return-object v0
.end method

.method public getIkeWindowSize()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    return v0
.end method

.method public getImeiVendorAttrVal()[B
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMobike()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNattKeepaliveTimeout()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    return v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentityType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    return v0
.end method

.method public getPerfectForwardSecrecy()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    return v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    return v0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentityType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getRequestedRacIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedRacIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/sec/erisclient/IPSecConnectionState;
    .locals 3

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    const-string v0, "IPSecConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubnetType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    return-object v0
.end method

.method public getUserAuthentication()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    return v0
.end method

.method public getVirtualAdapterConfiguration()Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isCaCertOk()Z
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaCertWithVerifying(Ljava/security/cert/X509Certificate;)Z
    .locals 10
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 274
    monitor-enter p0

    const/4 v2, 0x0

    .line 275
    .local v2, "certMan":Lcom/sec/erisclient/TrustedCertificateManager;
    const/4 v5, 0x0

    .line 276
    .local v5, "rootCaCert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 277
    .local v1, "bCaCertVerified":Z
    :try_start_0
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "csc":Ljava/lang/String;
    const/4 v0, 0x0

    .line 280
    .local v0, "alias":Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    const-string/jumbo v0, "system:facacbc6.0"

    .line 289
    :cond_0
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    .line 291
    invoke-static {}, Lcom/sec/erisclient/TrustedCertificateManager;->getInstance()Lcom/sec/erisclient/TrustedCertificateManager;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lcom/sec/erisclient/TrustedCertificateManager;->load()Lcom/sec/erisclient/TrustedCertificateManager;

    .line 293
    invoke-virtual {v2, v0}, Lcom/sec/erisclient/TrustedCertificateManager;->getCACertificateFromAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 294
    if-nez v5, :cond_2

    .line 295
    const-string v7, "IPSecConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setCaCertWithVerifying(): Can\'t get root CA cert with alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_1
    monitor-exit p0

    return v6

    .line 284
    :cond_1
    :try_start_1
    const-string v7, "TMB"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    const-string/jumbo v0, "system:3e7271e8.0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :cond_2
    if-eqz p1, :cond_4

    .line 301
    :try_start_2
    const-string v6, "IPSecConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCaCertWithVerifying(): using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 304
    const/4 v1, 0x1

    .line 305
    const-string v6, "IPSecConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCaCertWithVerifying(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is verified"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :goto_2
    if-eqz v1, :cond_3

    .line 322
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sec/erisclient/IPSecConnection;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 323
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/erisclient/IPSecConnection;->bCaCertOk:Z

    :cond_3
    move v6, v1

    .line 325
    goto :goto_1

    .line 307
    :catch_0
    move-exception v4

    .line 308
    .local v4, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 274
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "csc":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 309
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "csc":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 310
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 311
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v4

    .line 312
    .local v4, "e":Ljava/security/NoSuchProviderException;
    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_2

    .line 313
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v4

    .line 314
    .local v4, "e":Ljava/security/SignatureException;
    invoke-virtual {v4}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_2

    .line 315
    .end local v4    # "e":Ljava/security/SignatureException;
    :catch_4
    move-exception v4

    .line 316
    .local v4, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_2

    .line 319
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :cond_4
    const-string v6, "IPSecConnection"

    const-string/jumbo v7, "setCaCertWithVerifying(): Error reading CA cert"

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setConnID(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 381
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    .line 382
    return-void
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDpdTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 389
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    .line 390
    return-void
.end method

.method public setEapMethod(Lcom/sec/epdg/IWlanEnum$IkeEapType;)V
    .locals 0
    .param p1, "eaptype"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 177
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setGlobalDnsConfiguration(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    .line 205
    return-void
.end method

.method public setGroup(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)V
    .locals 0
    .param p1, "mIkeDhGroup"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .line 358
    return-void
.end method

.method public setHostAuthentication(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)V
    .locals 0
    .param p1, "authType"    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .line 189
    return-void
.end method

.method public setIPsecAntiReplay(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    .line 245
    return-void
.end method

.method public setIPsecEncryption(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)V
    .locals 0
    .param p1, "encryptVal"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .line 221
    return-void
.end method

.method public setIPsecGroup(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .line 237
    return-void
.end method

.method public setIPsecIntegrity(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)V
    .locals 0
    .param p1, "integrityval"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 229
    return-void
.end method

.method public setIPsecLife(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0
    .param p1, "ipsecLifeTimeType"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p2, "ipsecLifeTimeVal"    # I

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 253
    iput p2, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    .line 254
    return-void
.end method

.method public setIkeEncryption(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)V
    .locals 0
    .param p1, "mIkeEncryptType"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .line 350
    return-void
.end method

.method public setIkeIntegrity(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)V
    .locals 0
    .param p1, "mIkeIntergrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .line 342
    return-void
.end method

.method public setIkeLife(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    .line 366
    return-void
.end method

.method public setIkeVersion(Lcom/sec/epdg/IWlanEnum$Ikeversion;)V
    .locals 0
    .param p1, "mIkeversion"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 334
    return-void
.end method

.method public setIkeWindowSize(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    .line 374
    return-void
.end method

.method public setImeiVendorAttr(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "val"    # [B

    .prologue
    .line 445
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    iput-object v0, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 446
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    .line 447
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    .line 448
    return-void
.end method

.method public setMobike(Z)V
    .locals 0
    .param p1, "mobike"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    .line 476
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNattKeepaliveTimeout(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    .line 398
    return-void
.end method

.method public setOwnIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V
    .locals 0
    .param p1, "ownIdentityType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p2, "ownIdentity"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 145
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setPcscfv4VendorAttr(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    .line 430
    return-void
.end method

.method public setPcscfv6VendorAttr(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    .line 438
    return-void
.end method

.method public setPerfectForwardSecrecy(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    .line 181
    return-void
.end method

.method public setPeriodicDpdTimer(I)V
    .locals 0
    .param p1, "periodicDpdTimer"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    .line 460
    return-void
.end method

.method public setPreSharedKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setRemoteIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteIdentityType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 159
    return-void
.end method

.method public setRequestedRacIPv4Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setRequestedRacIPv6Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    .line 422
    return-void
.end method

.method protected declared-synchronized setState(Lcom/sec/erisclient/IPSecConnectionState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/erisclient/IPSecConnectionState;

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    const-string v0, "IPSecConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->state:Lcom/sec/erisclient/IPSecConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubnetType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V
    .locals 0
    .param p1, "subnetType"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 137
    return-void
.end method

.method public setTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)V
    .locals 0
    .param p1, "tunnelType"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .line 213
    return-void
.end method

.method public setUserAuthentication(Z)V
    .locals 0
    .param p1, "userAuth"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    .line 129
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->username:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setVirtualAdapterConfiguration(Lcom/sec/epdg/IWlanEnum$AdapterConf;)V
    .locals 0
    .param p1, "val"    # Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 406
    return-void
.end method

.method public setVirtualAdapterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 533
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 535
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "IPSecConnection"

    const-string/jumbo v4, "toJson()"

    invoke-static {v1, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "cid"

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 537
    const-string/jumbo v1, "virtualAdapterName"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->virtualAdapterName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string/jumbo v1, "gateway"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string/jumbo v4, "userAuth"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->userAuth:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 540
    const-string/jumbo v1, "interface"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string/jumbo v1, "presharedKey"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->presharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string/jumbo v4, "globalDNSConfig"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->globalDNSConfig:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 543
    const-string v4, "antiReplay"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->antiReplay:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 544
    const-string v4, "caCertData"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string/jumbo v1, "ipv4HandoverAddr"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->ipv4HandoverAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v1, "ipv6HandoverAddr"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->ipv6HandoverAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string/jumbo v1, "pcscfv4VendorAttr"

    iget v4, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv4VendorAttr:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 548
    const-string/jumbo v1, "pcscfv6VendorAttr"

    iget v4, p0, Lcom/sec/erisclient/IPSecConnection;->pcscfv6VendorAttr:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    const-string v4, "ApnSetting.mMobikeval"

    iget-boolean v1, p0, Lcom/sec/erisclient/IPSecConnection;->mobike:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    const-string v4, "ApnSetting.mImei"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    if-nez v1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    const-string/jumbo v1, "imeiVendorAttrType"

    iget v4, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrType:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    const-string/jumbo v4, "imeiVendorAttrVal"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_6
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v1, "ApnSetting.IWlanSettingName"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v4, "ApnSetting.mOwnUriType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    if-nez v1, :cond_7

    move v1, v3

    :goto_7
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 556
    const-string v1, "ApnSetting.mIpsecOwnUri"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v4, "ApnSetting.mRemoteUriType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    if-nez v1, :cond_8

    move v1, v3

    :goto_8
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    const-string v1, "ApnSetting.mIpsecRemoteUri"

    iget-object v4, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v1, "ApnSetting.mPfsval"

    iget-boolean v4, p0, Lcom/sec/erisclient/IPSecConnection;->pfsVal:Z

    if-eqz v4, :cond_9

    :goto_9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    const-string v2, "ApnSetting.mIpSecauthType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    if-nez v1, :cond_a

    move v1, v3

    :goto_a
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    const-string v2, "ApnSetting.mIpSecIpType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-nez v1, :cond_b

    move v1, v3

    :goto_b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    const-string v2, "ApnSetting.mIkeVirtualAdapterConf"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    if-nez v1, :cond_c

    move v1, v3

    :goto_c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 563
    const-string v1, "ApnSetting.mPeriodicDpdTimer"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->periodicDpdTimer:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 566
    const-string v2, "ApnSetting.ipsecsetting.mTunnelMode"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    if-nez v1, :cond_d

    move v1, v3

    :goto_d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 567
    const-string v2, "ApnSetting.ipsecsetting.mIpSecEncryptionType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    if-nez v1, :cond_e

    move v1, v3

    :goto_e
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    const-string v2, "ApnSetting.ipsecsetting.mIpSecIntegrityType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    if-nez v1, :cond_f

    move v1, v3

    :goto_f
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 569
    const-string v2, "ApnSetting.ipsecsetting.mIpSecDHGroup"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    if-nez v1, :cond_10

    move v1, v3

    :goto_10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 570
    const-string v2, "ApnSetting.ipsecsetting.mIpSecLifeTimeType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    if-nez v1, :cond_11

    move v1, v3

    :goto_11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 571
    const-string v1, "ApnSetting.ipsecsetting.mIpSecLifeval"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeVal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string v2, "ApnSetting.ikesetting.mIkeversion"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    if-nez v1, :cond_12

    move v1, v3

    :goto_12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 574
    const-string v2, "ApnSetting.ikesetting.mIkeEncryptType"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    if-nez v1, :cond_13

    move v1, v3

    :goto_13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 575
    const-string v2, "ApnSetting.ikesetting.mIkeIntegrity"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    if-nez v1, :cond_14

    move v1, v3

    :goto_14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v2, "ApnSetting.ikesetting.mIkeDhGroup"

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    if-nez v1, :cond_15

    move v1, v3

    :goto_15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    const-string v1, "ApnSetting.ikesetting.mIkeEapType"

    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    if-nez v2, :cond_16

    :goto_16
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 578
    const-string v1, "ApnSetting.ikesetting.mIkeLife"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeLife:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 579
    const-string v1, "ApnSetting.ikesetting.mIkeWindowSize"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeWindowSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 580
    const-string v1, "ApnSetting.ikesetting.mIkeDpdTimeOut"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDpdTimeOut:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 581
    const-string v1, "ApnSetting.ikesetting.mIkeConnectionTimeOut"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeConnectionTimeOut:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v1, "ApnSetting.ikesetting.mIkeNatValue"

    iget v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeNatValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 584
    return-object v0

    :cond_0
    move v1, v3

    .line 539
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 542
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 543
    goto/16 :goto_2

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->caCertData:[B

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 549
    goto/16 :goto_4

    .line 550
    :cond_5
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$Imei;->ordinal()I

    move-result v1

    goto/16 :goto_5

    .line 552
    :cond_6
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->imeiVendorAttrVal:[B

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 555
    :cond_7
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ownIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    goto/16 :goto_7

    .line 557
    :cond_8
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->remoteIdentityType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IdentityType;->ordinal()I

    move-result v1

    goto/16 :goto_8

    :cond_9
    move v2, v3

    .line 559
    goto/16 :goto_9

    .line 560
    :cond_a
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->authType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->ordinal()I

    move-result v1

    goto/16 :goto_a

    .line 561
    :cond_b
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->subnetType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->ordinal()I

    move-result v1

    goto/16 :goto_b

    .line 562
    :cond_c
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->adapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$AdapterConf;->ordinal()I

    move-result v1

    goto/16 :goto_c

    .line 566
    :cond_d
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->tunnelType:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->ordinal()I

    move-result v1

    goto/16 :goto_d

    .line 567
    :cond_e
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecEncrType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->ordinal()I

    move-result v1

    goto/16 :goto_e

    .line 568
    :cond_f
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecIntegType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->ordinal()I

    move-result v1

    goto/16 :goto_f

    .line 569
    :cond_10
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecDhGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    goto/16 :goto_10

    .line 570
    :cond_11
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->ipsecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->ordinal()I

    move-result v1

    goto/16 :goto_11

    .line 573
    :cond_12
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$Ikeversion;->ordinal()I

    move-result v1

    goto/16 :goto_12

    .line 574
    :cond_13
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->ordinal()I

    move-result v1

    goto/16 :goto_13

    .line 575
    :cond_14
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->ordinal()I

    move-result v1

    goto/16 :goto_14

    .line 576
    :cond_15
    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v1

    goto/16 :goto_15

    .line 577
    :cond_16
    iget-object v2, p0, Lcom/sec/erisclient/IPSecConnection;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanEnum$IkeEapType;->ordinal()I

    move-result v3

    goto/16 :goto_16
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/erisclient/IPSecConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/erisclient/IPSecConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
