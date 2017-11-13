.class public Lcom/android/phone/settings/AccountSelectionPreference;
.super Landroid/preference/ListPreference;
.source "AccountSelectionPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;
    }
.end annotation


# instance fields
.field private mAccounts:[Landroid/telecom/PhoneAccountHandle;

.field private final mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

.field private mShowSelectionInSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/AccountSelectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    .line 58
    iput-object p1, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    if-eqz v2, :cond_3

    .line 109
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v0, v2, v1

    .line 111
    .local v0, "account":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v2, p0, v0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-boolean v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AccountSelectionPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccountSelectionPreference;->setValueIndex(I)V

    .line 117
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v2, p0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V

    .line 119
    :cond_1
    const/4 v2, 0x1

    .line 122
    .end local v0    # "account":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "index":I
    :goto_1
    return v2

    .line 110
    .restart local v1    # "index":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    .end local v1    # "index":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v0, p0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V

    .line 137
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 138
    return-void
.end method

.method public setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    .line 64
    return-void
.end method

.method public setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "telecomManager"    # Landroid/telecom/TelecomManager;
    .param p3, "currentSelection"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "nullSelectionString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/TelecomManager;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "accountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/telecom/PhoneAccountHandle;

    invoke-interface {p2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telecom/PhoneAccountHandle;

    iput-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    .line 77
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 80
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v3, v4

    .line 83
    .local v3, "selectedIndex":I
    const/4 v0, 0x0

    .line 84
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 85
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    const/4 v4, 0x0

    :goto_1
    aput-object v4, v5, v0

    .line 90
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 91
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v4, v4, v0

    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    move v3, v0

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 95
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 96
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aput-object p4, v4, v0

    .line 98
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AccountSelectionPreference;->setValueIndex(I)V

    .line 101
    iget-boolean v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    if-eqz v4, :cond_4

    .line 102
    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    :cond_4
    return-void
.end method
