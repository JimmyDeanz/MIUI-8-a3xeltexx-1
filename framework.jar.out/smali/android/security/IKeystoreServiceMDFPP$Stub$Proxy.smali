.class Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreServiceMDFPP.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreServiceMDFPP$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p1, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 700
    return-void
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "handle"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1480
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1485
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1490
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1493
    return v2

    .line 1490
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addAuthToken([B)I
    .locals 6
    .param p1, "authToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1525
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1530
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1533
    return v2

    .line 1530
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addRngEntropy([B)I
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1218
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1223
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    return v2

    .line 1223
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "purpose"    # I
    .param p4, "pruneable"    # Z
    .param p5, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p6, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.security.IKeystoreService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    if-eqz p5, :cond_1

    .line 1386
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1392
    :goto_1
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1393
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1396
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    return-object v2

    .end local v2    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_0
    move v3, v4

    .line 1384
    goto :goto_0

    .line 1390
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1403
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1399
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_2
.end method

.method public clear_uid(J)I
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1197
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1202
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    return v2

    .line 1202
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public del(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 805
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    return v2

    .line 805
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1162
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    return v2

    .line 1162
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public exist(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 826
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    return v2

    .line 826
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    if-eqz p3, :cond_0

    .line 1344
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1350
    :goto_0
    if-eqz p4, :cond_1

    .line 1351
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1357
    :goto_1
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1360
    sget-object v3, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/ExportResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    .local v2, "_result":Landroid/security/keymaster/ExportResult;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1370
    return-object v2

    .line 1348
    .end local v2    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1367
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1355
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1363
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/security/keymaster/ExportResult;
    goto :goto_2
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1451
    if-eqz p2, :cond_0

    .line 1452
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1458
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1459
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1460
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1463
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    return-object v2

    .line 1456
    .end local v2    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1470
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1466
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_1
.end method

.method public generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # Landroid/security/KeystoreArguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    if-eqz p6, :cond_0

    .line 981
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v3, 0x0

    invoke-virtual {p6, v0, v3}, Landroid/security/KeystoreArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 987
    :goto_0
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 992
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    return v2

    .line 985
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1238
    if-eqz p2, :cond_1

    .line 1239
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1245
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1246
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1251
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1252
    invoke-virtual {p6, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1259
    return v2

    .line 1243
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1256
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public get(Ljava/lang/String;)[B
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 738
    .local v1, "_data2":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 741
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.security.IKeystoreService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    iget-object v4, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 744
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 745
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 747
    .local v3, "_result":[B
    const-string v4, "android.security.IKeystoreService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    const-string v4, "delete reply___"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object v4, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x80000

    invoke-interface {v4, v5, v1, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    return-object v3

    .line 754
    .end local v3    # "_result":[B
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    const-string v0, "android.security.IKeystoreService"

    return-object v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1271
    if-eqz p2, :cond_1

    .line 1272
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1278
    :goto_0
    if-eqz p3, :cond_2

    .line 1279
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1285
    :goto_1
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1287
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1288
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1289
    invoke-virtual {p4, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1296
    return v2

    .line 1276
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1293
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1283
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getState(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 727
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    return v2

    .line 727
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getState_MDFPP(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1621
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1624
    return v2

    .line 1621
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public get_by_uid(Ljava/lang/String;I)[B
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1685
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1688
    return-object v2

    .line 1685
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public get_pubkey(Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1074
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1077
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    return-object v2

    .line 1077
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1129
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.security.IKeystoreService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1134
    iget-object v4, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1136
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1139
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1142
    return-wide v2

    .line 1139
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public grant(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1098
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    return v2

    .line 1098
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1308
    if-eqz p2, :cond_1

    .line 1309
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1315
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1317
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1322
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1323
    invoke-virtual {p7, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1330
    return v2

    .line 1313
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1327
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public import_key(Ljava/lang/String;[BII)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1008
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1015
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    return v2

    .line 1015
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "item"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 765
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 767
    .local v2, "_reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 769
    .local v1, "_pos":I
    :try_start_0
    const-string v4, "android.security.IKeystoreService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 772
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 773
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object v4, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 776
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 777
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 780
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 782
    array-length v4, p2

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    iget-object v4, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string v5, "android.security.IKeystoreService"

    const/4 v6, 0x1

    array-length v7, p2

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 787
    return v3

    .line 780
    .end local v3    # "_result":I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 782
    array-length v5, p2

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public isEmpty(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 961
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    return v2

    .line 961
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1503
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1505
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1510
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    return v2

    .line 1510
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public is_hardware_backed(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1177
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1182
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    return v2

    .line 1182
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 846
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 849
    return-object v2

    .line 846
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public lock(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 906
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 913
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    return v2

    .line 913
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public migrate_MDFPP_keystore(Ljava/lang/String;II)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isFingerprint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1583
    .local v2, "_reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 1585
    .local v1, "_pos":I
    if-nez p1, :cond_0

    .line 1587
    .local v4, "length":I
    :goto_0
    :try_start_0
    const-string v5, "android.security.IKeystoreService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    iget-object v5, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x24

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1593
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1594
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1597
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1598
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1599
    new-array v5, v4, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1602
    iget-object v5, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string v6, "android.security.IKeystoreService"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1604
    return v3

    .line 1585
    .end local v3    # "_result":I
    .end local v4    # "length":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 1597
    .restart local v4    # "length":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1598
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1599
    new-array v6, v4, [B

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public onUserAdded(II)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "parentId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1551
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1554
    return v2

    .line 1551
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public onUserAdded_MDFPP(II)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "parentId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1659
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1662
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    return v2

    .line 1662
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 876
    .local v2, "_reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 878
    .local v1, "_pos":I
    if-nez p2, :cond_0

    .line 880
    .local v4, "length":I
    :goto_0
    :try_start_0
    const-string v5, "android.security.IKeystoreService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 883
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    iget-object v5, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 885
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 886
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 889
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 891
    new-array v5, v4, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    iget-object v5, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string v6, "android.security.IKeystoreService"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 896
    return v3

    .line 878
    .end local v3    # "_result":I
    .end local v4    # "length":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 889
    .restart local v4    # "length":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 891
    new-array v6, v4, [B

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public onUserRemoved(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1571
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    return v2

    .line 1571
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public reset()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 860
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 865
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    return v2

    .line 865
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public reset_MDFPP(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1631
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1641
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    return v2

    .line 1641
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1030
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1035
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1038
    return-object v2

    .line 1035
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public ungrant(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1119
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1122
    return v2

    .line 1119
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unlock(ILjava/lang/String;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "userPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 923
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 924
    .local v2, "_reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 926
    .local v1, "_pos":I
    if-nez p2, :cond_0

    .line 928
    .local v4, "length":I
    :goto_0
    :try_start_0
    const-string v5, "android.security.IKeystoreService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 931
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    iget-object v5, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 933
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 934
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 937
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 938
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 939
    new-array v5, v4, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 942
    iget-object v5, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const-string v6, "android.security.IKeystoreService"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 944
    return v3

    .line 926
    .end local v3    # "_result":I
    .end local v4    # "length":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 937
    .restart local v4    # "length":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 938
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 939
    new-array v6, v4, [B

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1418
    if-eqz p2, :cond_0

    .line 1419
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1425
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1426
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1429
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    return-object v2

    .line 1423
    .end local v2    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1432
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_1
.end method

.method public verify(Ljava/lang/String;[B[B)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1051
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1052
    iget-object v3, p0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1057
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    return v2

    .line 1057
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
