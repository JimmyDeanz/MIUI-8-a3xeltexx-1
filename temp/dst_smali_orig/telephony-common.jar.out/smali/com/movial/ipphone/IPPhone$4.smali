.class Lcom/movial/ipphone/IPPhone$4;
.super Landroid/os/Handler;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhone;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler/handleMessage(): unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/movial/ipphone/IPPhone;->access$2000(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v3, "Handler/handleMessage(): EVENT_OOBE_WIFION_TIMEOUT"

    # invokes: Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/movial/ipphone/IPPhone;->access$2000(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/movial/ipphone/IPPhone;->access$1900(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "WIFI_FIRST_TURNON"

    invoke-static {v2, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "newintent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v3, "com.movial.ipservice.IPDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "dialog_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/movial/ipphone/IPPhone;->access$1900(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v3, "processWifiChanged(): showed dialog for first wifi enabled"

    # invokes: Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/movial/ipphone/IPPhone;->access$2000(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IPPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
