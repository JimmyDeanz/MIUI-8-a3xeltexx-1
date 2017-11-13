.class Lcom/android/incallui/view/SlideUpLayout$2;
.super Landroid/os/Handler;
.source "SlideUpLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SlideUpLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SlideUpLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SlideUpLayout;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/incallui/view/SlideUpLayout$2;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout$2;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/SlideUpLayout;->playCircleBounceAnimator()V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
