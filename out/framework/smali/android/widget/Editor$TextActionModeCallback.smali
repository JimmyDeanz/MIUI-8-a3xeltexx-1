.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field private mThemeIsDeviceDefault:Z

.field private mUseNewSamsungToolbar:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4
    .param p2, "hasSelection"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3466
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 3458
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 3459
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3463
    iput-boolean v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    .line 3464
    iput-boolean v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mUseNewSamsungToolbar:Z

    .line 3467
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 3468
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_2

    .line 3469
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 3470
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3472
    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3100(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3473
    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3200(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3474
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3476
    :cond_0
    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 3486
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_1
    :goto_0
    return-void

    .line 3480
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 3481
    .local v0, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v0, :cond_1

    .line 3482
    # invokes: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->access$3500(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    .line 3483
    # getter for: Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 3534
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x1020022

    const v6, 0x1020021

    const v5, 0x1020020

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3540
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_4

    .line 3542
    const v0, 0x1040003

    invoke-interface {p1, v3, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a39

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3549
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x78

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3554
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3555
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_5

    .line 3556
    const/4 v0, 0x3

    const v1, 0x1040001

    invoke-interface {p1, v3, v6, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a38

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3563
    :goto_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3568
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3569
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_6

    .line 3570
    const/4 v0, 0x4

    const v1, 0x104000b

    invoke-interface {p1, v3, v7, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a40

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3577
    :goto_2
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3582
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3583
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_7

    .line 3584
    const v0, 0x1020035

    const/4 v1, 0x5

    const v2, 0x1040465

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a42

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3590
    :goto_3
    const v0, 0x1020035

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3594
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3596
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_8

    .line 3597
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateClipboardItem(Landroid/view/Menu;)V

    .line 3598
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateDictionaryItem(Landroid/view/Menu;)V

    .line 3599
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateWebSearchItem(Landroid/view/Menu;)V

    .line 3604
    :goto_4
    return-void

    .line 3546
    :cond_4
    const/4 v0, 0x1

    const v1, 0x1040003

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 3560
    :cond_5
    const v0, 0x1040001

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3574
    :cond_6
    const/4 v0, 0x3

    const v1, 0x104000b

    invoke-interface {p1, v3, v7, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 3587
    :cond_7
    const v0, 0x1020035

    const/4 v1, 0x4

    const v2, 0x1040465

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    .line 3601
    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3602
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateClipboardItem(Landroid/view/Menu;)V

    goto :goto_4
.end method

.method private updateClipboardItem(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3622
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canClipboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3623
    const/4 v0, 0x0

    const v1, 0x1020057

    const/4 v2, 0x6

    const v3, 0x104081d

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a36

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3628
    :cond_0
    return-void
.end method

.method private updateDictionaryItem(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3632
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3633
    const/4 v0, 0x0

    const v1, 0x1020055

    const/4 v2, 0x7

    const v3, 0x10409ce

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a3a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3638
    :cond_0
    return-void
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x1020034

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3669
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z
    invoke-static {v4}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 3671
    .local v0, "canReplace":Z
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 3672
    .local v1, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 3673
    const/4 v4, 0x6

    const v5, 0x1040350

    invoke-interface {p1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3679
    :cond_1
    :goto_2
    return-void

    .end local v0    # "canReplace":Z
    .end local v1    # "replaceItemExists":Z
    :cond_2
    move v0, v3

    .line 3669
    goto :goto_0

    .restart local v0    # "canReplace":Z
    :cond_3
    move v1, v3

    .line 3671
    goto :goto_1

    .line 3676
    .restart local v1    # "replaceItemExists":Z
    :cond_4
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 3677
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x104000d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v6, 0x102001f

    .line 3651
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 3652
    .local v0, "canSelectAll":Z
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 3653
    .local v1, "selectAllItemExists":Z
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 3654
    iget-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v4, :cond_2

    .line 3655
    invoke-interface {p1, v3, v6, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080a41

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3661
    :goto_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3666
    :cond_0
    :goto_2
    return-void

    .end local v1    # "selectAllItemExists":Z
    :cond_1
    move v1, v3

    .line 3652
    goto :goto_0

    .line 3658
    .restart local v1    # "selectAllItemExists":Z
    :cond_2
    const/4 v4, 0x5

    invoke-interface {p1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 3663
    :cond_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3664
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method private updateWebSearchItem(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3642
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canWebSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3643
    const/4 v0, 0x0

    const v1, 0x1020510

    const/16 v2, 0x8

    const v3, 0x1040467

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a44

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3648
    :cond_0
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 3683
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v2, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3690
    :cond_0
    :goto_0
    return v1

    .line 3686
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3687
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3690
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3490
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3491
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3492
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 3494
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v2, [I

    const v6, 0x11600bd

    aput v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3495
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    .line 3496
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3498
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mUseNewSamsungToolbar:Z

    .line 3500
    iget-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mUseNewSamsungToolbar:Z

    if-eqz v4, :cond_0

    .line 3501
    const v4, 0x1020059

    const-string v5, "close"

    invoke-interface {p2, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a37

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3506
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 3508
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v1

    .line 3509
    .local v1, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v1, :cond_1

    .line 3510
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3512
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v2, v3

    .line 3529
    :goto_0
    return v2

    .line 3518
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canProcessText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3519
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    iget-boolean v5, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    invoke-virtual {v4, p2, v5}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;Z)V

    .line 3522
    :cond_2
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3523
    :cond_3
    iget-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mUseNewSamsungToolbar:Z

    if-eqz v4, :cond_4

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    if-gt v4, v2, :cond_4

    move v2, v3

    .line 3524
    goto :goto_0

    .line 3526
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 3529
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3695
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3696
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3697
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3705
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v1, :cond_1

    .line 3706
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3708
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3711
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 3712
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3715
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 3716
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3720
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3721
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3762
    :goto_0
    return-void

    .line 3724
    :cond_1
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 3726
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 3727
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    iget-object v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v11, v12}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3729
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3730
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    iget v11, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    .line 3755
    :goto_1
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    .line 3756
    .local v7, "textHorizontalOffset":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    .line 3757
    .local v8, "textVerticalOffset":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    int-to-float v10, v7

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    int-to-float v11, v8

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    int-to-float v12, v7

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    int-to-float v13, v8

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 3731
    .end local v7    # "textHorizontalOffset":I
    .end local v8    # "textVerticalOffset":I
    :cond_2
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget v9, v9, Landroid/widget/Editor;->mCursorCount:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3734
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3735
    .local v2, "firstCursorBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 3736
    .local v6, "secondCursorBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v14, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 3744
    .end local v2    # "firstCursorBounds":Landroid/graphics/Rect;
    .end local v6    # "secondCursorBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;
    invoke-static {v9}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v3

    .line 3745
    .local v3, "layout":Landroid/text/Layout;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 3746
    .local v4, "line":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    .line 3748
    .local v5, "primaryHorizontal":F
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mPopupBelowMarginDifSelectAndInsert:I
    invoke-static {v11}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget v11, v11, Landroid/widget/TextView;->mCursorWidth:I

    int-to-float v11, v11

    add-float/2addr v11, v5

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertActionHandleTopMargin:I
    invoke-static {v13}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v9, v5, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3608
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3609
    iget-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mThemeIsDeviceDefault:Z

    if-nez v1, :cond_0

    .line 3610
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3613
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3614
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_1

    .line 3615
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    .line 3617
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
