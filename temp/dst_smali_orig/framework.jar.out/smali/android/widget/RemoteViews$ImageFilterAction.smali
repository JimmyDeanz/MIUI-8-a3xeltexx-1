.class Landroid/widget/RemoteViews$ImageFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFilterAction"
.end annotation


# static fields
.field public static final TAG:I = 0x1f


# instance fields
.field arg1:F

.field arg2:F

.field arg3:F

.field arg4:F

.field arg5:F

.field arg6:F

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field type:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIFFFFFF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "type"    # I
    .param p4, "arg1"    # F
    .param p5, "arg2"    # F
    .param p6, "arg3"    # F
    .param p7, "arg4"    # F
    .param p8, "arg5"    # F
    .param p9, "arg6"    # F

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$ImageFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    iput p2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->viewId:I

    iput p3, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    iput p4, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    iput p5, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    iput p6, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    iput p7, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    iput p8, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    iput p9, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$ImageFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .prologue
    iget v2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    invoke-static {v2}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$DropShadowFilter;

    .local v0, "filter":Landroid/graphics/ImageFilter$DropShadowFilter;
    iget v2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    invoke-virtual {v0, v2}, Landroid/graphics/ImageFilter$DropShadowFilter;->setDistance(F)V

    iget v2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    invoke-virtual {v0, v2}, Landroid/graphics/ImageFilter$DropShadowFilter;->setAngle(F)V

    iget v2, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    iget v3, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    iget v4, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    iget v5, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/ImageFilter$DropShadowFilter;->setShadowColor(FFFF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "ImageFilterAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
