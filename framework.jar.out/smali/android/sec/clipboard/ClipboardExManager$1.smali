.class Landroid/sec/clipboard/ClipboardExManager$1;
.super Landroid/os/Handler;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1235
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1236
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1274
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1238
    :pswitch_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1239
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1240
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$300(Landroid/sec/clipboard/ClipboardExManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1241
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104080b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1242
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # setter for: Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z
    invoke-static {v1, v5}, Landroid/sec/clipboard/ClipboardExManager;->access$302(Landroid/sec/clipboard/ClipboardExManager;Z)Z

    .line 1248
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1249
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "success set data "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_2
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104080a

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1254
    :pswitch_2
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getPersonaId()I

    move-result v2

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->isClipboardAllowed(ZI)I
    invoke-static {v1, v5, v2}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;ZI)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1260
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10407ff

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1263
    :cond_3
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1264
    const-string v1, "ClipboardExManager"

    const-string v2, "Fail set data "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1271
    :pswitch_3
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x104080c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
