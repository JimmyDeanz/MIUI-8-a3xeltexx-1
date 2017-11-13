.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8481
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 8484
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8485
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8486
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 8490
    :cond_0
    :goto_0
    return-void

    .line 8487
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8488
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->onSectionsChanged()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 8494
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8495
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8496
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 8500
    :cond_0
    :goto_0
    return-void

    .line 8497
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8498
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->onSectionsChanged()V

    goto :goto_0
.end method
