.class public Landroid/widget/Toolbar$LayoutParams;
.super Landroid/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2541
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 2542
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2531
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2532
    const v0, 0x800013

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2533
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 2536
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2537
    iput p3, p0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2538
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 2551
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2552
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2527
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2528
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2562
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2563
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2555
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2558
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2559
    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/Toolbar$LayoutParams;

    .prologue
    .line 2545
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2547
    iget v0, p1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2548
    return-void
.end method
