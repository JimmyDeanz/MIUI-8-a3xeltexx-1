.class Lcom/android/server/backup/BackupManagerService$Operation;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Operation"
.end annotation


# instance fields
.field public callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

.field public state:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .locals 0
    .param p2, "initialState"    # I
    .param p3, "callbackObj"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$Operation;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 598
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .line 599
    return-void
.end method
