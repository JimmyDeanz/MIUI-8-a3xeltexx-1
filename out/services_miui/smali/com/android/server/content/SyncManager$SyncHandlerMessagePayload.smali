.class Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandlerMessagePayload"
.end annotation


# instance fields
.field public final activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

.field public final syncResult:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p2, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p3, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1034
    iput-object p3, p0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    .line 1035
    return-void
.end method
