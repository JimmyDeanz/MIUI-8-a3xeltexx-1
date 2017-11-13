.class Landroid/widget/ActionMenuPresenter$SemOverflowText;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowText"
.end annotation


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentFontScale:F

.field private mDefaultTextSize:F

.field private mMaxFontScale:F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1348
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1349
    const v4, 0x10102f6

    invoke-direct {p0, p2, v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1345
    const v4, 0x3f99999a    # 1.2f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    .line 1346
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1351
    invoke-virtual {p0, v7}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setClickable(Z)V

    .line 1352
    invoke-virtual {p0, v7}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setFocusable(Z)V

    .line 1353
    invoke-virtual {p0, v6}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setVisibility(I)V

    .line 1354
    invoke-virtual {p0, v7}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setEnabled(Z)V

    .line 1356
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v8, v5, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1357
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xbb

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1358
    .local v1, "actionMeneTextAppearnceId":I
    invoke-virtual {p0, p2, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setTextAppearance(Landroid/content/Context;I)V

    .line 1359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1362
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1363
    .local v2, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 1364
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1366
    if-eqz v3, :cond_1

    .line 1367
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    .line 1368
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1370
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1371
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1373
    :cond_0
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v7, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setTextSize(IF)V

    .line 1377
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040329

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1381
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10808ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 1382
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    .line 1384
    return-void
.end method

.method private changeButtonBackground()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1446
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1448
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1450
    .local v1, "show":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1451
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_2

    .line 1452
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1457
    :goto_2
    if-eqz v1, :cond_3

    .line 1458
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "show":Z
    :cond_1
    move v1, v2

    .line 1448
    goto :goto_1

    .line 1454
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "show":Z
    :cond_2
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1460
    :cond_3
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 1433
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1388
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1391
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1393
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setMinimumHeight(I)V

    .line 1396
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1398
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1402
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1403
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1405
    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1406
    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1408
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setTextSize(IF)V

    .line 1412
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    .line 1415
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1437
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1438
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1439
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1440
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1466
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1468
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    .line 1470
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1419
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    :goto_0
    return v1

    .line 1423
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->playSoundEffect(I)V

    .line 1424
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
