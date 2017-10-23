.class public Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;
.super Ljava/lang/Object;
.source "CPPositioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPositioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestLocationInput"
.end annotation


# instance fields
.field public mCppLocListener:Lcom/samsung/cpp/ICPPLocationListener;

.field public mInterval:I

.field public mMinDist:I

.field public mMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
