.class public Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "IntegrityControlCheckCenter.java"


# instance fields
.field mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    return-void
.end method


# virtual methods
.method public getSecureData(I)I
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "ICCC"

    const-string v1, "Method getSecureData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getSecureData(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTrustedBootData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "ICCC"

    const-string v1, "Method getTrustedBootData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getTrustedBootData()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setSecureData(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "ICCC"

    const-string v1, "Method setSecureData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->setSecureData(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
