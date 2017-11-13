.class public Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;
.super Ljava/lang/Object;
.source "CPPositioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPositioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestCPGeoFenceRegister"
.end annotation


# instance fields
.field mGeoMode:I

.field mKey:I

.field mLatitude:D

.field mLongitude:D

.field mPeriod:I

.field mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
