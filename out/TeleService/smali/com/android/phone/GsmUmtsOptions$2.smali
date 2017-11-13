.class Lcom/android/phone/GsmUmtsOptions$2;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsOptions;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsOptions;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions$2;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkSetting"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions$2;->this$0:Lcom/android/phone/GsmUmtsOptions;

    # getter for: Lcom/android/phone/GsmUmtsOptions;->mSubId:I
    invoke-static {v2}, Lcom/android/phone/GsmUmtsOptions;->access$000(Lcom/android/phone/GsmUmtsOptions;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions$2;->this$0:Lcom/android/phone/GsmUmtsOptions;

    # getter for: Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsOptions;->access$100(Lcom/android/phone/GsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    const/4 v1, 0x1

    return v1
.end method
