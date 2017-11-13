.class Lcom/android/phone/settings/CallAdvancedSetting$2;
.super Landroid/os/Handler;
.source "CallAdvancedSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallAdvancedSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallAdvancedSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallAdvancedSetting;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/phone/settings/CallAdvancedSetting$2;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting$2;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/CallAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 151
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting$2;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    # invokes: Lcom/android/phone/settings/CallAdvancedSetting;->initScreen()V
    invoke-static {v0}, Lcom/android/phone/settings/CallAdvancedSetting;->access$200(Lcom/android/phone/settings/CallAdvancedSetting;)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting$2;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    # invokes: Lcom/android/phone/settings/CallAdvancedSetting;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/settings/CallAdvancedSetting;->access$300(Lcom/android/phone/settings/CallAdvancedSetting;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
