.class public Landroid/preference/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SwitchPreference$1;,
        Landroid/preference/SwitchPreference$ClickListener;,
        Landroid/preference/SwitchPreference$Listener;
    }
.end annotation


# static fields
.field private static final mClickListener:Landroid/preference/SwitchPreference$ClickListener;


# instance fields
.field private final mListener:Landroid/preference/SwitchPreference$Listener;

.field mSwitch:Landroid/widget/Switch;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/preference/SwitchPreference$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference$ClickListener;-><init>(Landroid/preference/SwitchPreference$1;)V

    sput-object v0, Landroid/preference/SwitchPreference;->mClickListener:Landroid/preference/SwitchPreference$ClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v1, Landroid/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/preference/SwitchPreference$Listener;-><init>(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference$1;)V

    iput-object v1, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    .line 85
    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 134
    const v3, 0x102046a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, "checkableView":Landroid/view/View;
    move-object v3, v1

    .line 135
    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Landroid/preference/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 136
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_2

    .line 137
    instance-of v3, v1, Landroid/widget/Switch;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 138
    check-cast v2, Landroid/widget/Switch;

    .line 139
    .local v2, "switchView":Landroid/widget/Switch;
    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v2    # "switchView":Landroid/widget/Switch;
    :cond_0
    move-object v3, v1

    .line 142
    check-cast v3, Landroid/widget/Checkable;

    iget-boolean v4, p0, Landroid/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 144
    instance-of v3, v1, Landroid/widget/Switch;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 145
    check-cast v2, Landroid/widget/Switch;

    .line 146
    .restart local v2    # "switchView":Landroid/widget/Switch;
    iget-object v3, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v3, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    invoke-virtual {v2}, Landroid/widget/Switch;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/preference/SwitchPreference;->mClickListener:Landroid/preference/SwitchPreference$ClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 154
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Landroid/preference/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v3, p0, Landroid/preference/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 161
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "switchView":Landroid/widget/Switch;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 184
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 172
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 173
    return-void
.end method
