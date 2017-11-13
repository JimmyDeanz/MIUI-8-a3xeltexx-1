.class Landroid/widget/RemoteViews$SetOnTouchPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnTouchPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x20


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    iput p2, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->viewId:I

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    iget v2, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/widget/RemoteViews$SetOnTouchPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnTouchPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnTouchPendingIntent;)V

    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .end local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    :cond_0
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "SetOnTouchPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
