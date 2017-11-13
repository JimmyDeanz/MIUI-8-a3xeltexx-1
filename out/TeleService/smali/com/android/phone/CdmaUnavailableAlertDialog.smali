.class public Lcom/android/phone/CdmaUnavailableAlertDialog;
.super Lmiui/app/Activity;
.source "CdmaUnavailableAlertDialog.java"


# instance fields
.field private mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/phone/CdmaUnavailableAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaUnavailableAlertDialog$1;-><init>(Lcom/android/phone/CdmaUnavailableAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/CdmaUnavailableAlertDialog;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    new-instance v0, Lcom/android/phone/CdmaUnavailableAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaUnavailableAlertDialog$2;-><init>(Lcom/android/phone/CdmaUnavailableAlertDialog;)V

    iput-object v0, p0, Lcom/android/phone/CdmaUnavailableAlertDialog;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaUnavailableAlertDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CdmaUnavailableAlertDialog;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/phone/CdmaUnavailableAlertDialog;->isMobileNetworkSettingsFront()Z

    move-result v0

    return v0
.end method

.method private isMobileNetworkSettingsFront()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaUnavailableAlertDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 70
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "tastList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 72
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/android/phone/CdmaUnavailableAlertDialog;

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

    .line 77
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaUnavailableAlertDialog;->showDialog(I)V

    .line 27
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 39
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f08044a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080449

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08044b

    iget-object v4, p0, Lcom/android/phone/CdmaUnavailableAlertDialog;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08044c

    iget-object v4, p0, Lcom/android/phone/CdmaUnavailableAlertDialog;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 46
    .local v1, "dialog":Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaUnavailableAlertDialog;->showDialog(I)V

    .line 32
    return-void
.end method
