.class final Landroid/view/ViewRootImpl$HCTRelayoutHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HCTRelayoutHandler"
.end annotation


# static fields
.field public static final MSG_NEED_TO_DO_RELAYOUT:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 8797
    iput-object p1, p0, Landroid/view/ViewRootImpl$HCTRelayoutHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 8798
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8799
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8803
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 8808
    :goto_0
    return-void

    .line 8805
    :pswitch_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$HCTRelayoutHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    # invokes: Landroid/view/ViewRootImpl;->doRelayoutForHCT(Z)V
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$3600(Landroid/view/ViewRootImpl;Z)V

    goto :goto_0

    .line 8803
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
