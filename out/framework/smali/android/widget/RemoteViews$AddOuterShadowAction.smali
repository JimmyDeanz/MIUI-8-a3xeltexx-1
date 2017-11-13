.class Landroid/widget/RemoteViews$AddOuterShadowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOuterShadowAction"
.end annotation


# static fields
.field public static final TAG:I = 0x16


# instance fields
.field angle:F

.field blendingOpacity:F

.field color:I

.field final methodName:Ljava/lang/String;

.field offset:F

.field softness:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "offset"    # F
    .param p5, "softness"    # F
    .param p6, "color"    # I
    .param p7, "blendingOpacity"    # F

    .prologue
    .line 1766
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1812
    const-string v0, "addOuterShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->methodName:Ljava/lang/String;

    .line 1767
    iput p2, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    .line 1768
    iput p3, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    .line 1769
    iput p4, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    .line 1770
    iput p5, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    .line 1771
    iput p6, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    .line 1772
    iput p7, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    .line 1773
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1775
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1812
    const-string v0, "addOuterShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->methodName:Ljava/lang/String;

    .line 1776
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    .line 1777
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    .line 1778
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    .line 1779
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    .line 1780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    .line 1781
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    .line 1782
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1796
    iget v1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1797
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1798
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    iget v3, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    iget v4, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    iget v5, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 1799
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1803
    const-string v0, "AddOuterShadowAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1785
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1788
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1789
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1790
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1791
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1792
    return-void
.end method
