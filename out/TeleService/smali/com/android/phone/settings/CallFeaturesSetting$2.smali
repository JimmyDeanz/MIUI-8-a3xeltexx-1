.class Lcom/android/phone/settings/CallFeaturesSetting$2;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallFeaturesSetting;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/phone/settings/CallFeaturesSetting$2;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting$2;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 157
    iget-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting$2;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    # invokes: Lcom/android/phone/settings/CallFeaturesSetting;->initScreen()V
    invoke-static {v0}, Lcom/android/phone/settings/CallFeaturesSetting;->access$200(Lcom/android/phone/settings/CallFeaturesSetting;)V

    .line 158
    iget-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting$2;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    # invokes: Lcom/android/phone/settings/CallFeaturesSetting;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/settings/CallFeaturesSetting;->access$300(Lcom/android/phone/settings/CallFeaturesSetting;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
