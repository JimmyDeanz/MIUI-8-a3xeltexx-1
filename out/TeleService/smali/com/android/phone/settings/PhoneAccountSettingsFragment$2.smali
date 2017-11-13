.class Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;
.super Ljava/lang/Object;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/PhoneAccountSettingsFragment;->initAccountList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telecom/PhoneAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telecom/PhoneAccount;Landroid/telecom/PhoneAccount;)I
    .locals 9
    .param p1, "account1"    # Landroid/telecom/PhoneAccount;
    .param p2, "account2"    # Landroid/telecom/PhoneAccount;

    .prologue
    const/4 v7, 0x4

    .line 299
    const/4 v6, 0x0

    .line 302
    .local v6, "retval":I
    invoke-virtual {p1, v7}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    .line 303
    .local v0, "isSim1":Z
    invoke-virtual {p2, v7}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    .line 304
    .local v1, "isSim2":Z
    if-eq v0, v1, :cond_0

    .line 305
    if-eqz v0, :cond_4

    const/4 v6, -0x1

    .line 309
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 310
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "pkg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "pkg2":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 316
    .end local v4    # "pkg1":Ljava/lang/String;
    .end local v5    # "pkg2":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 317
    iget-object v7, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/settings/PhoneAccountSettingsFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->access$100(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "label1":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/settings/PhoneAccountSettingsFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->access$100(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "label2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 323
    .end local v2    # "label1":Ljava/lang/String;
    .end local v3    # "label2":Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_3

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sub-int v6, v7, v8

    .line 326
    :cond_3
    return v6

    .line 305
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 296
    check-cast p1, Landroid/telecom/PhoneAccount;

    check-cast p2, Landroid/telecom/PhoneAccount;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->compare(Landroid/telecom/PhoneAccount;Landroid/telecom/PhoneAccount;)I

    move-result v0

    return v0
.end method
