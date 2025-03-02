.class public Lcom/android/server/spay/AmexTAController;
.super Lcom/android/server/spay/TAController;
.source "AmexTAController.java"


# static fields
.field private static final AMEX_PAY_CERTENC_PATH:Ljava/lang/String; = "/efs/prov_data/aexp_pay/aexp_pay_enc.dat"

.field private static final AMEX_PAY_CERTSIGN_PATH:Ljava/lang/String; = "/efs/prov_data/aexp_pay/aexp_pay_sign.dat"

.field private static final AMEX_PAY_SERVICE_NAME:Ljava/lang/String; = "AEXP_PAY"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/AmexTAController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 0
    .param p1, "taId"    # I
    .param p2, "config"    # Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/server/spay/TAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic clearDeviceCertificates()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/android/server/spay/TAController;->clearDeviceCertificates()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic copyMctoRst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Lcom/android/server/spay/TAController;->copyMctoRst()Z

    move-result v0

    return v0
.end method

.method public getCertInfo()Landroid/spay/CertInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    const-string/jumbo v5, "getCertInfo"

    invoke-static {v5}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 28
    new-instance v3, Ljava/io/File;

    const-string v5, "/efs/prov_data/aexp_pay/aexp_pay_sign.dat"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 30
    const-string v5, "PaymentManagerService"

    const-string v6, "AmexTAController::getCertInfo: Amex Certificate Files do not exist. Lets create them"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v5, "AEXP_PAY"

    invoke-virtual {p0, v5}, Lcom/android/server/spay/AmexTAController;->generateDeviceCertificates(Ljava/lang/String;)Z

    move-result v4

    .line 32
    .local v4, "ret":Z
    if-nez v4, :cond_0

    .line 33
    const-string v5, "PaymentManagerService"

    const-string v6, "Amex Certificate Creation failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    .line 45
    .end local v4    # "ret":Z
    :goto_0
    return-object v0

    .line 38
    :cond_0
    sget-boolean v5, Lcom/android/server/spay/AmexTAController;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "PaymentManagerService"

    const-string v6, "AmexTAController::getCertInfo: Amex Certificate Files exist. Lets fetch them"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    new-instance v0, Landroid/spay/CertInfo;

    invoke-direct {v0}, Landroid/spay/CertInfo;-><init>()V

    .line 40
    .local v0, "certInfo":Landroid/spay/CertInfo;
    const-string v5, "/efs/prov_data/aexp_pay/aexp_pay_sign.dat"

    invoke-static {v5}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 41
    .local v2, "certsign":[B
    iget-object v5, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v6, "/efs/prov_data/aexp_pay/aexp_pay_sign.dat"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v5, "/efs/prov_data/aexp_pay/aexp_pay_enc.dat"

    invoke-static {v5}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    .local v1, "certenc":[B
    iget-object v5, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v6, "/efs/prov_data/aexp_pay/aexp_pay_enc.dat"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 2
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super/range {p0 .. p5}, Lcom/android/server/spay/TAController;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic makeSystemCall(I)Z
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->makeSystemCall(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 1
    .param p1, "x0"    # Landroid/spay/TACommandRequest;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCertInfo(Landroid/spay/CertInfo;)Z
    .locals 1
    .param p1, "x0"    # Landroid/spay/CertInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->setCertInfo(Landroid/spay/CertInfo;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic unloadTA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Lcom/android/server/spay/TAController;->unloadTA()V

    return-void
.end method
