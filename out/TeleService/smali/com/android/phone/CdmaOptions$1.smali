.class Lcom/android/phone/CdmaOptions$1;
.super Ljava/lang/Object;
.source "CdmaOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaOptions;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/CdmaOptions$1;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$1;->this$0:Lcom/android/phone/CdmaOptions;

    # getter for: Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$000(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/android/phone/CdmaOptions$1;->this$0:Lcom/android/phone/CdmaOptions;

    # getter for: Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/CdmaOptions;->access$100(Lcom/android/phone/CdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return v3
.end method
