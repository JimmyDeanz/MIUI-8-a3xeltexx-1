.class final Lcom/android/server/location/GpsLocationProvider$BackOff;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackOff"
.end annotation


# static fields
.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final mInitIntervalMillis:J

.field private final mMaxIntervalMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "initIntervalMillis"    # J
    .param p3, "maxIntervalMillis"    # J

    .prologue
    .line 2221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2222
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mInitIntervalMillis:J

    .line 2223
    iput-wide p3, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mMaxIntervalMillis:J

    .line 2225
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    .line 2226
    return-void
.end method


# virtual methods
.method public nextBackoffMillis()J
    .locals 4

    .prologue
    .line 2229
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mMaxIntervalMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2230
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mMaxIntervalMillis:J

    .line 2234
    :goto_0
    return-wide v0

    .line 2233
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    .line 2234
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 2238
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    .line 2239
    return-void
.end method
