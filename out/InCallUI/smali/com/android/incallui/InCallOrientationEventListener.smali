.class public Lcom/android/incallui/InCallOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "InCallOrientationEventListener.java"


# static fields
.field private static ROTATION_THRESHOLD:I

.field private static SCREEN_ORIENTATION_UNKNOWN:I

.field private static mCurrentOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    .line 64
    const/16 v0, 0xa

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private static isInLeftRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "center"    # I
    .param p2, "threshold"    # I

    .prologue
    .line 158
    sub-int v0, p1, p2

    invoke-static {p0, v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isInRightRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "center"    # I
    .param p2, "threshold"    # I

    .prologue
    .line 162
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isWithinRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 150
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWithinThreshold(III)Z
    .locals 2
    .param p0, "value"    # I
    .param p1, "center"    # I
    .param p2, "threshold"    # I

    .prologue
    .line 154
    sub-int v0, p1, p2

    add-int v1, p1, p2

    invoke-static {p0, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private toScreenOrientation(I)I
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    const/16 v0, 0x10e

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    const/4 v3, 0x0

    .line 136
    const/16 v4, 0x168

    sget v5, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v4, v5}, Lcom/android/incallui/InCallOrientationEventListener;->isInLeftRange(III)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v3, v4}, Lcom/android/incallui/InCallOrientationEventListener;->isInRightRange(III)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 146
    :cond_1
    :goto_0
    return v0

    .line 139
    :cond_2
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v2, v3}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v1, v3}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 142
    goto :goto_0

    .line 143
    :cond_3
    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 144
    goto :goto_0

    .line 146
    :cond_4
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    .line 124
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    .line 119
    return-void
.end method

.method public enable(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 108
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 87
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 88
    const-string v1, "onOrientationChanged - Unknown orientation. Return"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->toScreenOrientation(I)I

    move-result v0

    .line 94
    .local v0, "orientation":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged currentOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    if-eq v1, v0, :cond_0

    .line 97
    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    .line 98
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    sget v2, Lcom/android/incallui/InCallOrientationEventListener;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    goto :goto_0
.end method
