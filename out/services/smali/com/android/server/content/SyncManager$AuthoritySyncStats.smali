.class Lcom/android/server/content/SyncManager$AuthoritySyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthoritySyncStats"
.end annotation


# instance fields
.field accountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncManager$AccountSyncStats;",
            ">;"
        }
    .end annotation
.end field

.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2039
    iput-object p1, p0, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 2040
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/content/SyncManager$1;

    .prologue
    .line 2032
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
