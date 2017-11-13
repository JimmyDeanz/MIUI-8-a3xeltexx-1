.class public Lcom/android/services/telephony/activation/SimActivationManager;
.super Ljava/lang/Object;
.source "SimActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/activation/SimActivationManager$Response;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private selectActivator(I)Lcom/android/services/telephony/activation/Activator;
    .locals 1
    .param p1, "trigger"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/android/services/telephony/activation/SimActivationManager$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/activation/SimActivationManager$1;-><init>(Lcom/android/services/telephony/activation/SimActivationManager;)V

    return-object v0
.end method


# virtual methods
.method public runActivation(ILcom/android/services/telephony/activation/SimActivationManager$Response;)V
    .locals 2
    .param p1, "trigger"    # I
    .param p2, "response"    # Lcom/android/services/telephony/activation/SimActivationManager$Response;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/services/telephony/activation/SimActivationManager;->selectActivator(I)Lcom/android/services/telephony/activation/Activator;

    move-result-object v0

    .line 43
    .local v0, "activator":Lcom/android/services/telephony/activation/Activator;
    invoke-interface {v0}, Lcom/android/services/telephony/activation/Activator;->onActivate()V

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/android/services/telephony/activation/SimActivationManager$Response;->onResponse(I)V

    .line 52
    :cond_0
    return-void
.end method
