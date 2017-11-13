.class public Lcom/android/phone/settings/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 130
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.include_unknown_numbers"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0c0011

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 143
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 144
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    new-instance v1, Lcom/android/phone/settings/EditPhoneNumberPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference$1;-><init>(Lcom/android/phone/settings/EditPhoneNumberPreference;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/EditPhoneNumberPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditPhoneNumberPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/EditPhoneNumberPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPhoneNumberPreference;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 309
    const v1, 0x7f0e0084

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 312
    .local v0, "container":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    if-eqz v0, :cond_0

    .line 315
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 318
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mButtonClicked:I

    .line 221
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 226
    .local v1, "editText":Landroid/widget/EditText;
    const v2, 0x7f0e0085

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 229
    if-eqz v1, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v2, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/settings/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "defaultNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    iput-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 238
    .end local v0    # "defaultNumber":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 240
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 241
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 242
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 243
    new-instance v2, Lcom/android/phone/settings/EditPhoneNumberPreference$2;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference$2;-><init>(Lcom/android/phone/settings/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/settings/EditPhoneNumberPreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/EditPhoneNumberPreference$3;-><init>(Lcom/android/phone/settings/EditPhoneNumberPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    :cond_2
    return-void

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_4
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 186
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 187
    .local v1, "summaryView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 192
    iget v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 193
    iget-boolean v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    .local v0, "sum":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v2, 0x0

    .line 209
    .local v2, "vis":I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    .end local v0    # "sum":Ljava/lang/CharSequence;
    .end local v2    # "vis":I
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "sum":Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0    # "sum":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "sum":Ljava/lang/CharSequence;
    goto :goto_0

    .line 206
    :cond_5
    const/16 v2, 0x8

    .restart local v2    # "vis":I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 384
    iget v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v0, :cond_0

    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 389
    :cond_0
    iput p2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mButtonClicked:I

    .line 390
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 391
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 398
    iget v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 401
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 402
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/settings/EditPhoneNumberPreference;I)V

    .line 411
    :cond_1
    return-void

    .line 404
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "pickedValue"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 374
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    .end local p1    # "pickedValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 378
    :cond_1
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v2, 0x0

    .line 326
    iget v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    iget-boolean v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 466
    return-void

    .line 464
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 498
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 351
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "identifier"    # I

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 356
    iput p2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPrefId:I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 358
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "identifier"    # I
    .param p3, "l"    # Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 364
    iput p2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPrefId:I

    .line 365
    iput-object p3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/settings/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 366
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->notifyChanged()V

    .line 454
    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/settings/EditPhoneNumberPreference;
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 508
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->notifyChanged()V

    .line 511
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z

    .line 426
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->notifyChanged()V

    .line 429
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "inValues":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 557
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 558
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "shouldDisable":Z
    iget v4, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "inValues":[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 487
    .end local v0    # "inValues":[Ljava/lang/String;
    :goto_0
    return v1

    .line 485
    :cond_0
    iget-object v4, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method
