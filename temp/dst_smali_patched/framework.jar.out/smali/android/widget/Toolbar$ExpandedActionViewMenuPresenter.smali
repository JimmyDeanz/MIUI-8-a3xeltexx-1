.class Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Toolbar;
    .param p2, "x1"    # Landroid/widget/Toolbar$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/Toolbar;->access$900(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iput-object v2, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->addChildrenForExpandedActionView()V

    iput-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->requestLayout()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    # invokes: Landroid/widget/Toolbar;->ensureCollapseButtonView()V
    invoke-static {v1}, Landroid/widget/Toolbar;->access$800(Landroid/widget/Toolbar;)V

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/Toolbar;->access$900(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v2}, Landroid/widget/Toolbar;->access$900(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mButtonGravity:I
    invoke-static {v2}, Landroid/widget/Toolbar;->access$1000(Landroid/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v2, v2, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->removeChildrenForExpandedActionView()V

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->requestLayout()V

    invoke-virtual {p2, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    :cond_0
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .local v1, "found":Z
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .end local v1    # "found":Z
    :cond_1
    return-void

    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
