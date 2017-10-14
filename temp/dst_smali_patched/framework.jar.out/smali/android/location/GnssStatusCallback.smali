.class public abstract Landroid/location/GnssStatusCallback;
.super Ljava/lang/Object;
.source "GnssStatusCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0
    .param p1, "ttffMillis"    # I

    .prologue
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/location/GnssStatus;

    .prologue
    return-void
.end method

.method public onStarted()V
    .locals 0

    .prologue
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    return-void
.end method
