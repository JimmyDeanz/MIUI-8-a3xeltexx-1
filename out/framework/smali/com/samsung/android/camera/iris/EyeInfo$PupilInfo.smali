.class public Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/EyeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PupilInfo"
.end annotation


# instance fields
.field public mDistance:I

.field public mMsgId:I

.field public mOpening:I

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method
