.class Landroid/app/backup/BackupAgent$FailRunnable;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FailRunnable"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-object p1, p0, Landroid/app/backup/BackupAgent$FailRunnable;->mMessage:Ljava/lang/String;

    .line 1076
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1080
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/backup/BackupAgent$FailRunnable;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
