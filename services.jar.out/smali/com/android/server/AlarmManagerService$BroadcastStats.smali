.class final Lcom/android/server/AlarmManagerService$BroadcastStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BroadcastStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field final filterStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$FilterStats;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageName:Ljava/lang/String;

.field final mUid:I

.field nesting:I

.field numWakeup:I

.field startTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 1078
    iput p1, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    .line 1079
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    .line 1080
    return-void
.end method
