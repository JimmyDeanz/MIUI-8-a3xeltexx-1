.class Landroid/widget/RemoteViews$BitmapReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapReflectionAction"
.end annotation


# static fields
.field public static final TAG:I = 0xc


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapId:I

.field methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1168
    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1169
    iput-object p4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    .line 1170
    iput p2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    .line 1171
    iput-object p3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    .line 1172
    # getter for: Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    .line 1173
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1175
    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    .line 1178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    .line 1179
    # getter for: Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    .line 1180
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
    .line 1193
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    const/16 v4, 0xc

    iget-object v5, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    .line 1195
    .local v0, "ra":Landroid/widget/RemoteViews$ReflectionAction;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1196
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    const-string v0, "BitmapReflectionAction"

    return-object v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    .line 1201
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1184
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    return-void
.end method
