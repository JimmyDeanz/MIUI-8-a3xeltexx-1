.class Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager$SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncNotificationInfo"
.end annotation


# instance fields
.field public isActive:Z

.field public startTime:Ljava/lang/Long;

.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .locals 1

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2222
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 2223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2216
    const-string v0, "isActive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2217
    return-void
.end method
