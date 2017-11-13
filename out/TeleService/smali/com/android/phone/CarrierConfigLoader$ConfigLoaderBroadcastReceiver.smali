.class Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigLoaderBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierConfigLoader;


# direct methods
.method private constructor <init>(Lcom/android/phone/CarrierConfigLoader;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CarrierConfigLoader;Lcom/android/phone/CarrierConfigLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p2, "x1"    # Lcom/android/phone/CarrierConfigLoader$1;

    .prologue
    .line 753
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;-><init>(Lcom/android/phone/CarrierConfigLoader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 759
    .local v2, "replace":Z
    if-eqz v2, :cond_1

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 766
    :pswitch_0
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 767
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/CarrierConfigLoader;->access$700(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 770
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/CarrierConfigLoader;->access$1100(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    # getter for: Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->access$1100(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 762
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    :sswitch_0
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
