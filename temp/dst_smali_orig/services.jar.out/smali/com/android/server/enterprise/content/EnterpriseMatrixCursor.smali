.class public Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
.super Landroid/database/MatrixCursor;
.source "EnterpriseMatrixCursor.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method
