.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
.super Ljava/lang/Object;
.source "VpnPackageInfo.java"


# instance fields
.field private mCid:I

.field private mPersonaedPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cid"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPersonaedPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I

    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getCid()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPersonaedPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUid()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCid(I)V
    .locals 1
    .param p1, "cid"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "personaedPackageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPersonaedPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
