.class Lcom/android/phone/settings/SmscAddressSettingActivity$4;
.super Ljava/lang/Object;
.source "SmscAddressSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/SmscAddressSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$300(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "newAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$100(Lcom/android/phone/settings/SmscAddressSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$600(Lcom/android/phone/settings/SmscAddressSettingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # invokes: Lcom/android/phone/settings/SmscAddressSettingActivity;->stringToSmsc(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$400(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$500(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 287
    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$500(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$4;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-virtual {v1}, Lcom/android/phone/settings/SmscAddressSettingActivity;->finish()V

    goto :goto_0
.end method
