.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# static fields
.field public static final ERR_SERVICE_ERROR:I = -0x2710

.field public static final KEY_TYPE_EC:I = 0x4

.field public static final KEY_TYPE_RSA:I = 0x1

.field public static final KEY_TYPE_SYMM:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    const-string v0, "DeviceRootKeyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const-string v0, "DeviceRootKeyServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connects to DeviceRootKeyService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .prologue
    const/4 v2, 0x0

    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "createServiceKeySession() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 5
    .param p1, "drkType"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "getDeviceRootKeyUID() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isAliveDeviceRootKeyService()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 5
    .param p1, "drkType"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "isExistDeviceRootKey() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isExistDeviceRootKey(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public releaseServiceKeySession()I
    .locals 5

    .prologue
    const/16 v2, -0x2710

    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "releaseServiceKeySession() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->releaseServiceKeySession()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDeviceRootKey([B)I
    .locals 5
    .param p1, "keyBlob"    # [B

    .prologue
    const/16 v2, -0x2710

    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "setDeviceRootKey() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->setDeviceRootKey([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
