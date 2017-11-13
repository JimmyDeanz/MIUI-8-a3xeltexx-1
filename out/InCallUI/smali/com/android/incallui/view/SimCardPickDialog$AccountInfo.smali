.class public Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SimCardPickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountInfo"
.end annotation


# instance fields
.field private mAccount:Landroid/telecom/PhoneAccountHandle;

.field private mDescription:Ljava/lang/String;

.field private mId:I

.field private mIsActive:Z

.field private mIsDefault:Z

.field private mLastTime:I

.field private mName:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/android/incallui/view/SimCardPickDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SimCardPickDialog;IZILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "isActive"    # Z
    .param p4, "id"    # I
    .param p5, "name"    # Ljava/lang/CharSequence;
    .param p6, "description"    # Ljava/lang/CharSequence;
    .param p7, "account"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput p2, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mType:I

    .line 401
    iput p4, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mId:I

    .line 402
    iput-boolean p3, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mIsActive:Z

    .line 403
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mName:Ljava/lang/String;

    .line 404
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mDescription:Ljava/lang/String;

    .line 405
    iput-object p7, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mAccount:Landroid/telecom/PhoneAccountHandle;

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mIsDefault:Z

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mLastTime:I

    .line 408
    return-void

    .line 403
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 404
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/incallui/view/SimCardPickDialog;IZILjava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 8
    .param p2, "type"    # I
    .param p3, "isActive"    # Z
    .param p4, "id"    # I
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "account"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 395
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;-><init>(Lcom/android/incallui/view/SimCardPickDialog;IZILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/telecom/PhoneAccountHandle;)V

    .line 396
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mId:I

    return v0
.end method

.method public getLastTime()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mLastTime:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mType:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mIsActive:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mIsDefault:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0
    .param p1, "isDefault"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mIsDefault:Z

    .line 416
    return-void
.end method

.method public setLastTime(I)V
    .locals 0
    .param p1, "lastTime"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/android/incallui/view/SimCardPickDialog$AccountInfo;->mLastTime:I

    .line 420
    return-void
.end method
