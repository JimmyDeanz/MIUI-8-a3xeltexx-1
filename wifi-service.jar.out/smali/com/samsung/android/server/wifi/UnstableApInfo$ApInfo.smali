.class Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
.super Ljava/lang/Object;
.source "UnstableApInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/UnstableApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApInfo"
.end annotation


# instance fields
.field public counter:I

.field public isMobileHotspot:Z

.field public level:I

.field public time:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 262
    iput v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    .line 264
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/UnstableApInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/server/wifi/UnstableApInfo$1;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    return-void
.end method
