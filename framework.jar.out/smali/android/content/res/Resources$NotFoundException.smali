.class public Landroid/content/res/Resources$NotFoundException;
.super Ljava/lang/RuntimeException;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotFoundException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1347
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1348
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1351
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1352
    return-void
.end method
