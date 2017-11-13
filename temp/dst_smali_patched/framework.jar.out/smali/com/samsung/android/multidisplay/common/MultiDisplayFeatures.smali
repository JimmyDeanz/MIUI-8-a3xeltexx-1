.class public Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;
.super Ljava/lang/Object;
.source "MultiDisplayFeatures.java"


# static fields
.field public static final DEBUG_MULTIDISPLAY:Z

.field public static final MULTIDISPLAY_ENABLED:Z = true

.field public static final SAFE_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->SAFE_DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->DEBUG_MULTIDISPLAY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
