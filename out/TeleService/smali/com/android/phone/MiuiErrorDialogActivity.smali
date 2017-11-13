.class public Lcom/android/phone/MiuiErrorDialogActivity;
.super Lmiui/app/Activity;
.source "MiuiErrorDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiErrorDialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MiuiErrorDialogActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/phone/MiuiErrorDialogActivity;->isMobileNetworkSettingsFront()Z

    move-result v0

    return v0
.end method

.method private isMobileNetworkSettingsFront()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiErrorDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 85
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "tastList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 90
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/phone/MiuiErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dialog_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, "dialogType":I
    const-string v1, "MiuiErrorDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiErrorDialogActivity;->showDialog(I)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiErrorDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 41
    packed-switch p1, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 43
    :pswitch_0
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080443

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiErrorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/MiuiErrorDialogActivity$1;

    invoke-direct {v4, p0}, Lcom/android/phone/MiuiErrorDialogActivity$1;-><init>(Lcom/android/phone/MiuiErrorDialogActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 55
    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08045c

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08044b

    new-instance v4, Lcom/android/phone/MiuiErrorDialogActivity$3;

    invoke-direct {v4, p0}, Lcom/android/phone/MiuiErrorDialogActivity$3;-><init>(Lcom/android/phone/MiuiErrorDialogActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08044c

    new-instance v4, Lcom/android/phone/MiuiErrorDialogActivity$2;

    invoke-direct {v4, p0}, Lcom/android/phone/MiuiErrorDialogActivity$2;-><init>(Lcom/android/phone/MiuiErrorDialogActivity;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    .local v1, "builder1":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
