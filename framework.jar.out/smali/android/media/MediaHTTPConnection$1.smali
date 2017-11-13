.class final Landroid/media/MediaHTTPConnection$1;
.super Ljava/util/HashMap;
.source "MediaHTTPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaHTTPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string v0, "TimeSeekRange.dlna.org"

    const-string v1, " ="

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaHTTPConnection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
