.class Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$2;
.super Landroid/os/Handler;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$2;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack$2;->this$1:Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;

    # invokes: Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->onCheckByCMB()V
    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;->access$1100(Lcom/android/incallui/ContactInfoCache$OnlineCheckCallBack;)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
