.class Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;
.super Ljava/lang/Object;
.source "CdmaCallForwardEditPreference.java"

# interfaces
.implements Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CdmaCallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CdmaCallForwardEditPreference;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Lcom/android/phone/settings/EditPhoneNumberPreference;I)V
    .locals 5
    .param p1, "preference"    # Lcom/android/phone/settings/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 47
    iget-object v3, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 49
    const/4 v3, -0x2

    if-eq p2, v3, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    packed-switch v3, :pswitch_data_0

    .line 84
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->access$400(Lcom/android/phone/settings/CdmaCallForwardEditPreference;)I

    move-result v3

    invoke-static {v0, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 89
    iget-object v3, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 55
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*72"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 56
    goto :goto_0

    .line 58
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*90"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 59
    goto :goto_0

    .line 61
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*92"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*68"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 68
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;->this$0:Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 70
    :pswitch_4
    # getter for: Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->access$000()Landroid/net/Uri;

    move-result-object v2

    .line 71
    goto/16 :goto_0

    .line 73
    :pswitch_5
    # getter for: Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->access$100()Landroid/net/Uri;

    move-result-object v2

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_6
    # getter for: Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->access$200()Landroid/net/Uri;

    move-result-object v2

    .line 77
    goto/16 :goto_0

    .line 79
    :pswitch_7
    # getter for: Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->access$300()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
