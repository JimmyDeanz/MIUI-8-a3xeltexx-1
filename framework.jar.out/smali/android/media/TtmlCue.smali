.class Landroid/media/TtmlCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "TtmlRenderer.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public mExtentInfo:Ljava/lang/String;

.field public mLineChangeCount:I

.field public mOriginInfo:Ljava/lang/String;

.field public mRegion:Z

.field public mText:Ljava/lang/String;

.field public mTtmlFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "ttmlFragment"    # Ljava/lang/String;
    .param p7, "mCurrentRunId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 410
    const-string v0, "TtmlCue"

    iput-object v0, p0, Landroid/media/TtmlCue;->TAG:Ljava/lang/String;

    .line 423
    iput-wide p1, p0, Landroid/media/TtmlCue;->mStartTimeMs:J

    .line 424
    iput-wide p3, p0, Landroid/media/TtmlCue;->mEndTimeMs:J

    .line 425
    iput-wide p7, p0, Landroid/media/TtmlCue;->mRunID:J

    .line 427
    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    .line 428
    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    .line 429
    iput-object v2, p0, Landroid/media/TtmlCue;->mOriginInfo:Ljava/lang/String;

    .line 430
    iput-object v2, p0, Landroid/media/TtmlCue;->mExtentInfo:Ljava/lang/String;

    .line 431
    iput-boolean v1, p0, Landroid/media/TtmlCue;->mRegion:Z

    .line 433
    iput v1, p0, Landroid/media/TtmlCue;->mLineChangeCount:I

    .line 434
    return-void
.end method


# virtual methods
.method public setTtmlCueExtent(Ljava/lang/String;)V
    .locals 0
    .param p1, "extentInfo"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Landroid/media/TtmlCue;->mExtentInfo:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setTtmlCueOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "originInfo"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Landroid/media/TtmlCue;->mOriginInfo:Ljava/lang/String;

    .line 438
    return-void
.end method
