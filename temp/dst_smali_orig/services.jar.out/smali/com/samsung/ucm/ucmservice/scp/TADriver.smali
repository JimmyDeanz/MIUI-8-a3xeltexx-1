.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$1;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"

.field private static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field private static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field private static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field private static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field private static final TIMA_VALIDATION_SUCCESS:I


# instance fields
.field private _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver;Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    return-void
.end method

.method private checkTimaError(I)Z
    .locals 1
    .param p1, "timaStatus"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native deleteCACert(ILjava/lang/String;)I
.end method

.method private static native destorySecureChannel(I)I
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private forwardApdu(I[B)[B
    .locals 1
    .param p1, "uid"    # I
    .param p2, "apdu"    # [B

    .prologue
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApduResponse(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method private getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 4
    .param p1, "status"    # I
    .param p2, "tzError"    # I

    .prologue
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v0
.end method

.method private getSDKErrorCode(I)I
    .locals 7
    .param p1, "internalCode"    # I

    .prologue
    const-string v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSDKErrorCode internalCode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "errorCode":I
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const-string v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSDKErrorCode errorCode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :sswitch_0
    const/16 v1, 0x32

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x33

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x34

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x35

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x36

    goto :goto_0

    :sswitch_5
    const/16 v1, 0x37

    goto :goto_0

    :sswitch_6
    const/16 v1, 0x38

    goto :goto_0

    :sswitch_7
    const/16 v1, 0x39

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x3a

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x3b

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x3c

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x3d

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x42

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->updateTimaVersion()V

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaStatus()I

    move-result v3

    .local v3, "timaStatus":I
    if-nez v3, :cond_1

    const/4 v2, 0x1

    .local v2, "result":Z
    :goto_1
    const-string v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSDKErrorCode check if device compromised timaStatus-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and result-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->checkTimaError(I)Z

    move-result v0

    .local v0, "deviceCompromised":Z
    const-string v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSDKErrorCode deviceCompromised -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/16 v1, 0x3e

    goto/16 :goto_0

    .end local v0    # "deviceCompromised":Z
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_0
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x23 -> :sswitch_7
        0x24 -> :sswitch_7
        0x25 -> :sswitch_7
        0x26 -> :sswitch_b
        0x27 -> :sswitch_2
        0x28 -> :sswitch_7
        0xf0 -> :sswitch_c
    .end sparse-switch
.end method

.method private getSW([B)S
    .locals 3
    .param p1, "apdu"    # [B

    .prologue
    array-length v0, p1

    .local v0, "length":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/16 v1, 0x6700

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    const-string v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTimaStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .local v1, "timaStatus":I
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    const-string v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->updateTimaVersion()V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    sget-boolean v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "UCM.SCP.TADriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    sget-boolean v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "UCM.SCP.TADriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimaStatus() - Tima Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :sswitch_0
    :try_start_1
    const-string v3, "2.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v3, "FIPS3.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7ec2e91 -> :sswitch_2
        0xc174 -> :sswitch_0
        0xc535 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method

.method private static native setDhParams(I[B[B)I
.end method

.method private updateTimaVersion()V
    .locals 5

    .prologue
    const-string v2, "N/A"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "2.0"

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "timaVersion20":Z
    if-eqz v1, :cond_1

    const-string v2, "2.0"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "timaVersion20":Z
    :goto_0
    sget-boolean v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "UCM.SCP.TADriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .restart local v1    # "timaVersion20":Z
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FIPS3.0"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1    # "timaVersion20":Z
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "timaVersion20":Z
    :cond_2
    :try_start_2
    const-string v2, "3.0"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public createSecureChannel(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "protocol"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v3, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "Not supported protocol"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    invoke-direct {p0, v7, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/16 v3, 0x66

    if-ne p2, v3, :cond_1

    sget-object v3, Lcom/samsung/ucm/ucmservice/scp/ErcomCustom;->GENERATOR:[B

    sget-object v4, Lcom/samsung/ucm/ucmservice/scp/ErcomCustom;->MODULUS:[B

    invoke-static {p1, v3, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->setDhParams(I[B[B)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "failed to set dh parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-array v0, v5, [B

    fill-array-data v0, :array_0

    .local v0, "in":[B
    invoke-static {p1, p2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->constructSecureChannel(II[B)[B

    move-result-object v1

    .local v1, "resp":[B
    if-eqz v1, :cond_2

    array-length v3, v1

    if-gtz v3, :cond_3

    :cond_2
    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "Invalid msg returned from SCPConstructSecureChannel(in)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xb

    invoke-direct {p0, v7, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    goto :goto_0

    :cond_3
    aget-byte v2, v1, v8

    .local v2, "tzRet":I
    packed-switch v2, :pswitch_data_0

    const-string v3, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown TZ response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    new-instance v3, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v4

    const/16 v5, 0x190

    array-length v6, v1

    invoke-static {v1, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v3, v8, v4, v5, v6}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto :goto_0

    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->deleteCACert(ILjava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroySecureChannel(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destorySecureChannel(I)I

    move-result v0

    return v0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # [B
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "modified_cert":[B
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {v4, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {p3, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACert(ILjava/lang/String;[B)I

    move-result v2

    .local v2, "ret":I
    if-nez v2, :cond_0

    const/4 v3, 0x1

    .end local v2    # "ret":I
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # [B

    .prologue
    packed-switch p2, :pswitch_data_0

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    :goto_0
    return-object v5

    :pswitch_0
    const/4 v5, 0x1

    invoke-static {p1, p3, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v0

    .local v0, "encrypted_apdu":[B
    if-nez v0, :cond_0

    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to encode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    aget-byte v4, v0, v5

    .local v4, "tzRet":I
    if-eqz v4, :cond_1

    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to encode APDU 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    invoke-direct {p0, v5, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x191

    const/4 v9, 0x1

    array-length v10, v0

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto :goto_0

    .end local v0    # "encrypted_apdu":[B
    .end local v4    # "tzRet":I
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSW([B)S

    move-result v3

    .local v3, "sw":S
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SW of response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x7000

    if-eq v3, v5, :cond_2

    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-static {p1, p3, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v1

    .local v1, "plain_apdu":[B
    if-nez v1, :cond_3

    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to decode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    aget-byte v4, v1, v5

    .restart local v4    # "tzRet":I
    if-eqz v4, :cond_4

    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode APDU 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    invoke-direct {p0, v5, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x191

    const/4 v9, 0x1

    array-length v10, v1

    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto/16 :goto_0

    .end local v1    # "plain_apdu":[B
    .end local v3    # "sw":S
    .end local v4    # "tzRet":I
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApdu(I[B)[B

    move-result-object v2

    .local v2, "resp":[B
    if-eqz v2, :cond_5

    array-length v5, v2

    if-gtz v5, :cond_6

    :cond_5
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Invalid msg returned from SCPForwardApduMessage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    aget-byte v4, v2, v5

    .restart local v4    # "tzRet":I
    packed-switch v4, :pswitch_data_1

    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown TZ response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/16 v6, 0x12c

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x191

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v7

    const/16 v8, 0x190

    const/4 v9, 0x1

    array-length v10, v2

    invoke-static {v2, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(III[B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
