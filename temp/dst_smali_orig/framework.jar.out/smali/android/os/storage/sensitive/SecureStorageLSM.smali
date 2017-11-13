.class public Landroid/os/storage/sensitive/SecureStorageLSM;
.super Ljava/lang/Object;
.source "SecureStorageLSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;
    }
.end annotation


# static fields
.field private static lsmss:Landroid/os/storage/sensitive/SecureStorageLSM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-direct {v0}, Landroid/os/storage/sensitive/SecureStorageLSM;-><init>()V

    sput-object v0, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmss:Landroid/os/storage/sensitive/SecureStorageLSM;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/os/storage/sensitive/SecureStorageLSM;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmss:Landroid/os/storage/sensitive/SecureStorageLSM;

    return-object v0
.end method

.method public static native lsmCheckIfDefaultPasswordIsSet([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;
        }
    .end annotation
.end method

.method public static native lsmDKEKReEncrypt([B)[B
.end method

.method public static native lsmDecrypt([B)[B
.end method

.method public static native lsmEncrypt([B[BI)[B
.end method

.method public static native lsmGenKeypair([B)[B
.end method

.method public static native lsmInitialize()I
.end method

.method public static native lsmKeysReEncrypt([B)[B
.end method

.method public static native lsmSetState([B[BI)I
.end method


# virtual methods
.method public check_if_default_password_is_set([B)Z
    .locals 1
    .param p1, "dkek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmCheckIfDefaultPasswordIsSet([B)Z

    move-result v0

    return v0
.end method

.method public decrypt([B)[B
    .locals 1
    .param p1, "dataBlock"    # [B

    .prologue
    invoke-static {p1}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmDecrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public dkek_re_encrypt([B)[B
    .locals 1
    .param p1, "dataBlock"    # [B

    .prologue
    invoke-static {p1}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmDKEKReEncrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[BI)[B
    .locals 1
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # [B
    .param p3, "flag"    # I

    .prologue
    invoke-static {p1, p2, p3}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmEncrypt([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public gen_keypair([B)[B
    .locals 1
    .param p1, "dataBlock"    # [B

    .prologue
    invoke-static {p1}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmGenKeypair([B)[B

    move-result-object v0

    return-object v0
.end method

.method public initialize()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmInitialize()I

    move-result v0

    return v0
.end method

.method public keys_re_encrypt([B)[B
    .locals 1
    .param p1, "dataBlock"    # [B

    .prologue
    invoke-static {p1}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmKeysReEncrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public set_state([B[BI)I
    .locals 1
    .param p1, "password"    # [B
    .param p2, "dkek"    # [B
    .param p3, "flag"    # I

    .prologue
    invoke-static {p1, p2, p3}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmSetState([B[BI)I

    move-result v0

    return v0
.end method
