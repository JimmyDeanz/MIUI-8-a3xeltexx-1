.class Lcom/android/services/telephony/sip/MiuiSipSettings$6;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

.field final synthetic val$profile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$6;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iput-object p2, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$6;->val$profile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$6;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$6;->val$profile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 338
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$6;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$6;->val$profile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1100(Lcom/android/services/telephony/sip/MiuiSipSettings;Landroid/net/sip/SipProfile;)V

    .line 339
    return-void
.end method
