.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;
.super Ljava/lang/Object;
.source "DualScreenUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DualScreenUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1
    .param p0, "displayId"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 49
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 59
    :goto_0
    return-object v0

    .line 50
    :cond_0
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 51
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 53
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 55
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    .line 56
    :cond_3
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_4

    .line 57
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method public static getCoupledTaskFlags()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x7

    return v0
.end method

.method public static getSystemWindowLayer()I
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x4

    .line 103
    .local v0, "FIRST_SYSTEM_WINDOW_LAYER":I
    const/16 v1, 0x2710

    .line 105
    .local v1, "TYPE_LAYER_MULTIPLIER":I
    const/16 v2, 0x3e8

    .line 107
    .local v2, "TYPE_LAYER_OFFSET":I
    const v3, 0xa028

    .line 108
    .local v3, "systemWindowBaseLayer":I
    return v3
.end method

.method public static hasCoupledTaskFlags(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 66
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualScreen(I)Z
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 88
    invoke-static {p0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
