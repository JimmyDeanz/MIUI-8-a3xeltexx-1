.class final Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
.super Ljava/lang/Object;
.source "SipAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/SipAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountEntry"
.end annotation


# instance fields
.field private final mProfile:Landroid/net/sip/SipProfile;

.field final synthetic this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p2, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    .line 42
    return-void
.end method


# virtual methods
.method getProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method startSipService(Landroid/net/sip/SipManager;Landroid/content/Context;Z)Z
    .locals 4
    .param p1, "sipManager"    # Landroid/net/sip/SipManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isReceivingCalls"    # Z

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    .line 66
    if-eqz p3, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/services/telephony/sip/SipUtil;->createIncomingCallPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V

    .line 75
    :goto_0
    const/4 v1, 0x1

    .line 80
    :goto_1
    return v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {p1, v1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/net/sip/SipException;
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSipService, profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/services/telephony/sip/SipAccountRegistry;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->access$000(Lcom/android/services/telephony/sip/SipAccountRegistry;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    goto :goto_1
.end method

.method stopSipService(Landroid/net/sip/SipManager;)Z
    .locals 4
    .param p1, "sipManager"    # Landroid/net/sip/SipManager;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSipService, stop failed for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/services/telephony/sip/SipAccountRegistry;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->access$000(Lcom/android/services/telephony/sip/SipAccountRegistry;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method
