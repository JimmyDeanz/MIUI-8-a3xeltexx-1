.class public Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;
.super Ljava/lang/Object;
.source "VoicemailProviderListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/VoicemailProviderListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoicemailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/settings/VoicemailProviderListPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/VoicemailProviderListPreference;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->this$0:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->name:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->intent:Landroid/content/Intent;

    .line 55
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
