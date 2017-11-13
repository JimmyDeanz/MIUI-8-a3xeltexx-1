.class public Lcom/android/phone/PhoneDisplayMessage;
.super Ljava/lang/Object;
.source "PhoneDisplayMessage.java"


# static fields
.field private static final DBG:Z

.field private static sDisplayMessageDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneDisplayMessage;->DBG:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method public static dismissMessage()V
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/phone/PhoneDisplayMessage;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Dissmissing Display Info Record..."

    invoke-static {v0}, Lcom/android/phone/PhoneDisplayMessage;->log(Ljava/lang/String;)V

    .line 93
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    .line 97
    :cond_1
    return-void
.end method

.method public static displayErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v1, Lcom/android/phone/PhoneDisplayMessage;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayErrorMessage: errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneDisplayMessage;->log(Ljava/lang/String;)V

    .line 57
    :cond_0
    const v1, 0x7f080249

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "title":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/android/phone/PhoneDisplayMessage;->displayMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static displayMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/phone/PhoneDisplayMessage;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneDisplayMessage;->log(Ljava/lang/String;)V

    .line 64
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    .line 78
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 80
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 83
    sget-object v0, Lcom/android/phone/PhoneDisplayMessage;->sDisplayMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 84
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 85
    return-void
.end method

.method public static displayNetworkMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoMsg"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-boolean v1, Lcom/android/phone/PhoneDisplayMessage;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayInfoRecord: infoMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneDisplayMessage;->log(Ljava/lang/String;)V

    .line 44
    :cond_0
    const v1, 0x7f080248

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "title":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/android/phone/PhoneDisplayMessage;->displayMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "PhoneDisplayMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneDisplayMessage] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
