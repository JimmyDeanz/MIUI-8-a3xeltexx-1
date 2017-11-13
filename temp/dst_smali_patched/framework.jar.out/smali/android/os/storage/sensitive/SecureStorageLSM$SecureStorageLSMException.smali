.class public Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;
.super Ljava/lang/Exception;
.source "SecureStorageLSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/sensitive/SecureStorageLSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureStorageLSMException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
