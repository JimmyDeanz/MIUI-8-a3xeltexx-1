.class Lcom/android/server/enterprise/auditlog/CircularBuffer$1;
.super Ljava/lang/Object;
.source "CircularBuffer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/io/File;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    check-cast p2, Ljava/io/File;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
