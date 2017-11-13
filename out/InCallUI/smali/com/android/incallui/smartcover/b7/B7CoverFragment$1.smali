.class Lcom/android/incallui/smartcover/b7/B7CoverFragment$1;
.super Landroid/os/Handler;
.source "B7CoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/smartcover/b7/B7CoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/b7/B7CoverFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment$1;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    invoke-virtual {v0}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->playCircleBounceAnimator()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
