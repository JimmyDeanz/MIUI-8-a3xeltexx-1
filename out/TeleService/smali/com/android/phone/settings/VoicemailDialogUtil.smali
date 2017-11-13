.class public Lcom/android/phone/settings/VoicemailDialogUtil;
.super Ljava/lang/Object;
.source "VoicemailDialogUtil.java"


# direct methods
.method public static getDialog(Lcom/android/phone/settings/VoicemailSettingsActivity;I)Landroid/app/Dialog;
    .locals 10
    .param p0, "parent"    # Lcom/android/phone/settings/VoicemailSettingsActivity;
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f080123

    .line 40
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-eq p1, v5, :cond_0

    const/16 v5, 0x320

    if-ne p1, v5, :cond_1

    .line 44
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08011b

    .line 48
    .local v4, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 85
    const v3, 0x7f080120

    .line 88
    .local v3, "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 99
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 115
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :goto_1
    return-object v1

    .line 50
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "titleId":I
    :sswitch_0
    const v3, 0x7f080127

    .line 51
    .restart local v3    # "msgId":I
    const v4, 0x7f0800ec

    .line 53
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 58
    .end local v3    # "msgId":I
    :sswitch_1
    const v3, 0x7f08012b

    .line 59
    .restart local v3    # "msgId":I
    const v4, 0x7f0800ec

    .line 61
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 64
    .end local v3    # "msgId":I
    :sswitch_2
    const v3, 0x7f080128

    .line 66
    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 69
    .end local v3    # "msgId":I
    :sswitch_3
    const v3, 0x7f080129

    .line 71
    .restart local v3    # "msgId":I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 74
    .end local v3    # "msgId":I
    :sswitch_4
    const v3, 0x7f08012a

    .line 75
    .restart local v3    # "msgId":I
    const v5, 0x7f080264

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v5, 0x7f080265

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 79
    .end local v3    # "msgId":I
    :sswitch_5
    const v4, 0x7f0801cd

    .line 80
    const v3, 0x7f0801d1

    .line 81
    .restart local v3    # "msgId":I
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const v5, 0x7f0800c3

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 102
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgId":I
    .end local v4    # "titleId":I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 104
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const v5, 0x7f0800f1

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 107
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 108
    if-ne p1, v8, :cond_3

    const v5, 0x7f08011d

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f08011e

    goto :goto_2

    :cond_4
    const v5, 0x7f08011c

    goto :goto_2

    .line 115
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
        0x320 -> :sswitch_5
    .end sparse-switch
.end method
