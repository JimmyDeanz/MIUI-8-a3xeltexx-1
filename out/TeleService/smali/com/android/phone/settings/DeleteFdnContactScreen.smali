.class public Lcom/android/phone/settings/DeleteFdnContactScreen;
.super Landroid/app/Activity;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mName:Ljava/lang/String;

.field protected mNumber:Ljava/lang/String;

.field protected mPin2:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/DeleteFdnContactScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/DeleteFdnContactScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/settings/DeleteFdnContactScreen;->handleResult(Z)V

    return-void
.end method

.method private authenticatePin2()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/phone/settings/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/DeleteFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method

.method private handleResult(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/settings/DeleteFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/DeleteFdnContactScreen$1;-><init>(Lcom/android/phone/settings/DeleteFdnContactScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method protected deleteContact()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v6, "buf":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, "\' AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getFdnUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 126
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/settings/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;

    .line 127
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/settings/DeleteFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 129
    return-void

    .line 114
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v0, "tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "\' AND number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected displayProgress(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 141
    return-void

    .line 138
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 82
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "extras":Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_1

    .line 84
    const-string v1, "pin2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->deleteContact()V

    goto :goto_0

    .line 82
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->finish()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->resolveIntent()V

    .line 70
    invoke-direct {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->authenticatePin2()V

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 73
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->setContentView(I)V

    .line 74
    return-void
.end method

.method protected resolveIntent()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 102
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/android/phone/settings/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/settings/DeleteFdnContactScreen;->finish()V

    .line 107
    :cond_0
    return-void
.end method
