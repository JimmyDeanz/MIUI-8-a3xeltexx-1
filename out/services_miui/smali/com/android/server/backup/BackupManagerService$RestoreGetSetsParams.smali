.class Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreGetSetsParams"
.end annotation


# instance fields
.field public observer:Landroid/app/backup/IRestoreObserver;

.field public session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V
    .locals 0
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p4, "_observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 389
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 390
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 391
    return-void
.end method
