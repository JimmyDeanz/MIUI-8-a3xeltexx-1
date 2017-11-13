.class Landroid/widget/Toolbar$4;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->setExpandShrinkButton(IIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x2

    new-array v7, v9, [I

    .local v7, "screenPos":[I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "contentFrame":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v9, v7}, Landroid/widget/Toolbar;->getLocationOnScreen([I)V

    iget-object v9, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v9, v1}, Landroid/widget/Toolbar;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v9}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .local v8, "statusBarHeight":I
    iget-object v9, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v9}, Landroid/widget/Toolbar;->getHeight()I

    move-result v3

    .local v3, "height":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v6, "screenHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v4, 0x5

    .local v4, "horizontalGravity":I
    :goto_0
    iget-object v9, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Landroid/widget/Toolbar;->access$100(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v2, v9, v11}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/4 v5, 0x0

    .local v5, "offsetY":I
    aget v9, v7, v12

    add-int/2addr v9, v3

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v9, v10, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v3, v9, :cond_2

    :cond_0
    aget v9, v7, v12

    sub-int v5, v9, v8

    or-int/lit8 v9, v4, 0x30

    add-int v10, v3, v5

    invoke-virtual {v0, v9, v11, v10}, Landroid/widget/Toast;->setGravity(III)V

    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v12

    .end local v0    # "cheatSheet":Landroid/widget/Toast;
    .end local v4    # "horizontalGravity":I
    .end local v5    # "offsetY":I
    :cond_1
    const/4 v4, 0x3

    .restart local v4    # "horizontalGravity":I
    goto :goto_0

    .restart local v0    # "cheatSheet":Landroid/widget/Toast;
    .restart local v5    # "offsetY":I
    :cond_2
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v6, v9

    or-int/lit8 v9, v4, 0x50

    add-int v10, v3, v5

    invoke-virtual {v0, v9, v11, v10}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method
