.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjust(II)I
    .locals 5
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    .line 22514
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 22515
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 22516
    .local v1, "size":I
    if-nez v0, :cond_0

    .line 22518
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 22526
    :goto_0
    return v2

    .line 22520
    :cond_0
    add-int/2addr v1, p1

    .line 22521
    if-gez v1, :cond_1

    .line 22522
    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MeasureSpec.adjust: new size would be negative! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22524
    const/4 v1, 0x0

    .line 22526
    :cond_1
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0
.end method

.method public static getMode(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .prologue
    .line 22500
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSize(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .prologue
    .line 22510
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    return v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    .line 22471
    # getter for: Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z
    invoke-static {}, Landroid/view/View;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22472
    add-int v0, p0, p1

    .line 22474
    :goto_0
    return v0

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    .line 22485
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 22486
    const/4 v0, 0x0

    .line 22488
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "measureSpec"    # I

    .prologue
    .line 22537
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 22538
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 22540
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22542
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 22543
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22551
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22552
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 22544
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 22545
    const-string v3, "EXACTLY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22546
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    .line 22547
    const-string v3, "AT_MOST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22549
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
