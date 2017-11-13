.class public Lcom/android/incallui/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static mAvatarPos:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/Utils;->mAvatarPos:Landroid/graphics/Rect;

    return-void
.end method

.method public static displayMsg(I)V
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 77
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method

.method public static getOperatorAndLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "location":Ljava/lang/String;
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .end local v0    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 53
    .restart local v0    # "location":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmallAvatarRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 85
    sget-object v4, Lcom/android/incallui/util/Utils;->mAvatarPos:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 86
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 87
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 88
    .local v2, "avatarTop":I
    const v4, 0x7f08004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 89
    .local v1, "avatarSize":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v1

    div-int/lit8 v0, v4, 0x2

    .line 90
    .local v0, "avatarLeft":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v0, v1

    add-int v6, v2, v1

    invoke-direct {v4, v0, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v4, Lcom/android/incallui/util/Utils;->mAvatarPos:Landroid/graphics/Rect;

    .line 92
    :cond_0
    sget-object v4, Lcom/android/incallui/util/Utils;->mAvatarPos:Landroid/graphics/Rect;

    return-object v4
.end method

.method public static isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 29
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1
.end method

.method public static isReducedCallButtonPaddingBottom()Z
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "hammerhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecialNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "10010"

    aput-object v7, v4, v6

    const-string v7, "114"

    aput-object v7, v4, v5

    .line 63
    .local v4, "specialNumArray":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 64
    .local v3, "num":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    .end local v3    # "num":Ljava/lang/String;
    :goto_1
    return v5

    .line 63
    .restart local v3    # "num":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "num":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 68
    goto :goto_1
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 35
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static measureWidthForTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 73
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    return-void
.end method
