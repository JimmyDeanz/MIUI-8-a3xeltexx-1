.class Lcom/android/phone/settings/VoicemailRingtonePreference$1;
.super Landroid/os/Handler;
.source "VoicemailRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/VoicemailRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailRingtonePreference;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$1;->this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$1;->this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/VoicemailRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
