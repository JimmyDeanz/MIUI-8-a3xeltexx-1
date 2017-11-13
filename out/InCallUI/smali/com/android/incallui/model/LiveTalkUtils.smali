.class public Lcom/android/incallui/model/LiveTalkUtils;
.super Ljava/lang/Object;
.source "LiveTalkUtils.java"


# static fields
.field public static callIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static liveTalkInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/model/LiveTalkUtils;->liveTalkInfo:Landroid/os/Bundle;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/model/LiveTalkUtils;->callIdMap:Ljava/util/Map;

    return-void
.end method
