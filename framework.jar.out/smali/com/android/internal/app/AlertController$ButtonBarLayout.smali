.class public Lcom/android/internal/app/AlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1292
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1288
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1283
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1284
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x80000000

    .line 1301
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildCount()I

    move-result v3

    .line 1304
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "beforeChildrenWidth":I
    const/4 v0, 0x0

    .line 1305
    .local v0, "afterChildrenWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingLeft()I

    move-result v8

    sub-int v6, v7, v8

    .line 1306
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingBottom()I

    move-result v8

    sub-int v4, v7, v8

    .line 1308
    .local v4, "height":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 1309
    invoke-virtual {p0, v5}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1310
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    instance-of v7, v2, Landroid/widget/Space;

    if-nez v7, :cond_0

    .line 1311
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v1, v7

    .line 1312
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->measure(II)V

    .line 1314
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v0, v7

    .line 1308
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1318
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    if-lt v1, v0, :cond_2

    if-ge v6, v0, :cond_4

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 1320
    invoke-virtual {p0, v10}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    .line 1326
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1327
    return-void

    .line 1322
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1323
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    goto :goto_1
.end method
