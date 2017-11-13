.class public Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.super Lmiui/preference/PreferenceActivity;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/settings/TimeConsumingPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/TimeConsumingPreferenceActivity$1;,
        Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;,
        Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissOnClickListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDismiss:Landroid/content/DialogInterface$OnClickListener;

.field public final mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

.field protected mIsForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->DBG:Z

    .line 37
    new-instance v0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/settings/TimeConsumingPreferenceActivity;Lcom/android/phone/settings/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    .line 38
    new-instance v0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/settings/TimeConsumingPreferenceActivity;Lcom/android/phone/settings/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mIsForeground:Z

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->finish()V

    .line 203
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f080123

    .line 58
    const/16 v5, 0x64

    if-eq p1, v5, :cond_0

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_1

    .line 59
    :cond_0
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    const v5, 0x7f080118

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v1, v8}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 63
    sparse-switch p1, :sswitch_data_0

    move-object v1, v4

    .line 129
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 65
    .restart local v1    # "dialog":Lmiui/app/ProgressDialog;
    :sswitch_0
    invoke-virtual {v1, v8}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 66
    invoke-virtual {v1, p0}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    const v4, 0x7f08011c

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :sswitch_1
    invoke-virtual {v1, v7}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 71
    const v4, 0x7f08011d

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    .end local v1    # "dialog":Lmiui/app/ProgressDialog;
    :cond_1
    const/16 v5, 0x190

    if-eq p1, v5, :cond_2

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_2

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x258

    if-eq p1, v5, :cond_2

    const/16 v5, 0x2bc

    if-eq p1, v5, :cond_2

    const/16 v5, 0x320

    if-eq p1, v5, :cond_2

    const/16 v5, 0x384

    if-ne p1, v5, :cond_3

    .line 80
    :cond_2
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v3, 0x7f08011b

    .line 85
    .local v3, "titleId":I
    sparse-switch p1, :sswitch_data_1

    .line 116
    const v2, 0x7f080120

    .line 118
    .local v2, "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 122
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0, v7}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 127
    .local v1, "dialog":Lmiui/app/AlertDialog;
    goto :goto_0

    .line 87
    .end local v1    # "dialog":Lmiui/app/AlertDialog;
    .end local v2    # "msgId":I
    :sswitch_2
    const v2, 0x7f08011f

    .line 88
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 91
    .end local v2    # "msgId":I
    :sswitch_3
    const v2, 0x7f080122

    .line 93
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 96
    .end local v2    # "msgId":I
    :sswitch_4
    const v2, 0x7f080121

    .line 97
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 100
    .end local v2    # "msgId":I
    :sswitch_5
    const v2, 0x7f08042b

    .line 101
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 104
    .end local v2    # "msgId":I
    :sswitch_6
    const v2, 0x7f08042c

    .line 105
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 108
    .end local v2    # "msgId":I
    :sswitch_7
    const v2, 0x7f08042d

    .line 109
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 112
    .end local v2    # "msgId":I
    :sswitch_8
    const v2, 0x7f080120

    .line 113
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v2    # "msgId":I
    .end local v3    # "titleId":I
    :cond_3
    move-object v1, v4

    .line 129
    goto/16 :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 85
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_8
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_6
        0x384 -> :sswitch_7
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "error"    # I

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    return-void
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "exception"    # Lcom/android/internal/telephony/CommandException;

    .prologue
    .line 191
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 192
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 195
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    if-eqz p2, :cond_1

    .line 170
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 175
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 176
    return-void

    .line 172
    :cond_1
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 136
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-boolean v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 152
    if-eqz p2, :cond_1

    .line 153
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_0
.end method
