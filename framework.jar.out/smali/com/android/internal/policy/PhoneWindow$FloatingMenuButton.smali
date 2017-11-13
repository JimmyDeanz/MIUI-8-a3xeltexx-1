.class Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;
.super Landroid/widget/ImageButton;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingMenuButton"
.end annotation


# instance fields
.field private mIsViewInTransparentRegion:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5884
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 5882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;->mIsViewInTransparentRegion:Z

    .line 5884
    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "r"    # Landroid/graphics/Region;

    .prologue
    .line 5888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;->mIsViewInTransparentRegion:Z

    .line 5889
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public isViewInTransparentRegion()Z
    .locals 1

    .prologue
    .line 5893
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;->mIsViewInTransparentRegion:Z

    return v0
.end method
