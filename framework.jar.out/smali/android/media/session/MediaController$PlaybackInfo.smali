.class public final Landroid/media/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mVolumeControl:I

.field private final mVolumeType:I


# direct methods
.method public constructor <init>(ILandroid/media/AudioAttributes;III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "attrs"    # Landroid/media/AudioAttributes;
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput p1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeType:I

    .line 850
    iput-object p2, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 851
    iput p3, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    .line 852
    iput p4, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    .line 853
    iput p5, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    .line 854
    return-void
.end method


# virtual methods
.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeType:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    return v0
.end method
