.class public abstract Landroid/preference/DialogPreference;
.super Landroid/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    sget-object v2, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 83
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 86
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 91
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 94
    const/4 v2, 0x5

    iget v3, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 96
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    .line 99
    iget-object v2, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    .line 100
    iget-object v2, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    .line 102
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void

    .line 87
    :cond_2
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 365
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 367
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 399
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 401
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 402
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 403
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    const/4 v2, 0x0

    .line 409
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 410
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 416
    iput p2, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 417
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 378
    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-object v1

    .line 382
    :cond_0
    iget-object v2, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 383
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 435
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 424
    iget v0, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 425
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 284
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/DialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 484
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 479
    check-cast v0, Landroid/preference/DialogPreference$SavedState;

    .line 480
    .local v0, "myState":Landroid/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 481
    iget-boolean v1, v0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, v0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 460
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 461
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 468
    :goto_0
    return-object v0

    .line 465
    :cond_1
    new-instance v0, Landroid/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 466
    .local v0, "myState":Landroid/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 467
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 189
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 178
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 263
    iput p1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 264
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 154
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 124
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    iput-object p1, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 235
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    iput-object p1, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 207
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 303
    .local v1, "context":Landroid/content/Context;
    const/4 v4, -0x2

    iput v4, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 305
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 314
    iget-object v4, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 319
    :goto_0
    iget-object v4, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 321
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 324
    iget-object v4, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 325
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    invoke-direct {p0, v2}, Landroid/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 331
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    return-void

    .line 316
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v4, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 334
    .restart local v2    # "dialog":Landroid/app/Dialog;
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_1
.end method
