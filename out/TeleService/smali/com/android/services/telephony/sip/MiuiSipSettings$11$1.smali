.class Lcom/android/services/telephony/sip/MiuiSipSettings$11$1;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings$11;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/services/telephony/sip/MiuiSipSettings$11;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings$11;Z)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$11$1;->this$1:Lcom/android/services/telephony/sip/MiuiSipSettings$11;

    iput-boolean p2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$11$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$11$1;->this$1:Lcom/android/services/telephony/sip/MiuiSipSettings$11;

    iget-object v0, v0, Lcom/android/services/telephony/sip/MiuiSipSettings$11;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-boolean v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$11$1;->val$enabled:Z

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->handleSipReceiveCallsOption(Z)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1600(Lcom/android/services/telephony/sip/MiuiSipSettings;Z)V

    .line 530
    return-void
.end method
