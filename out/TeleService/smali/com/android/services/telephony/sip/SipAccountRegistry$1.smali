.class Lcom/android/services/telephony/sip/SipAccountRegistry$1;
.super Ljava/lang/Object;
.source "SipAccountRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enableProfile:Z

.field final synthetic val$sipProfileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->val$sipProfileName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->val$enableProfile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->this$0:Lcom/android/services/telephony/sip/SipAccountRegistry;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->val$sipProfileName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/services/telephony/sip/SipAccountRegistry$1;->val$enableProfile:Z

    # invokes: Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/services/telephony/sip/SipAccountRegistry;->access$100(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 220
    return-void
.end method
