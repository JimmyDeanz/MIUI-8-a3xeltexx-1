.class public Lcom/android/phone/settings/LTREditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "LTREditTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/phone/settings/LTREditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 36
    .local v0, "mEditText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 38
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextDirection(I)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    sget v1, Lcom/android/internal/R$id;->summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 31
    return-void
.end method
