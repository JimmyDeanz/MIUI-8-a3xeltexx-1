.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;,
        Landroid/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mColorPrimaryDark:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field mIsDeviceDefault:Z

.field mIsPreferenceCategory:Z

.field private mIsSummaryColorPrimaryDark:Z

.field private mKey:Ljava/lang/String;

.field private mLargerFontLevel:I

.field private mLayoutResId:I

.field private mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field mNeedPaddingBottom:Z

.field private mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryDescription:Ljava/lang/CharSequence;

.field private mTextColorSecondary:Landroid/content/res/ColorStateList;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleDescription:Ljava/lang/CharSequence;

.field private mTitleDescriptionRes:I

.field private mTitleLargerTextSize:I

.field private mTitleRes:I

.field public mTwExtraPaddingBottom:I

.field mTwForceRecycleLayout:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 400
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 383
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const v6, 0x7fffffff

    iput v6, p0, Landroid/preference/Preference;->mOrder:I

    .line 122
    iput-boolean v7, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 123
    iput-boolean v7, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 125
    iput-boolean v7, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 128
    iput-boolean v7, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 129
    iput-boolean v7, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 134
    iput-boolean v8, p0, Landroid/preference/Preference;->mNeedPaddingBottom:Z

    .line 138
    iput-boolean v8, p0, Landroid/preference/Preference;->mIsPreferenceCategory:Z

    .line 142
    iput v8, p0, Landroid/preference/Preference;->mTwExtraPaddingBottom:I

    .line 146
    iput-boolean v8, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    .line 151
    iput-boolean v7, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 153
    const v6, 0x10900c1

    iput v6, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 157
    iput-boolean v7, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 158
    iput-boolean v8, p0, Landroid/preference/Preference;->mIsSummaryColorPrimaryDark:Z

    .line 172
    iput-boolean v8, p0, Landroid/preference/Preference;->mTwForceRecycleLayout:Z

    .line 253
    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 255
    sget-object v6, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 257
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 258
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 259
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 261
    :pswitch_0
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/preference/Preference;->mIconResId:I

    goto :goto_1

    .line 265
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 269
    :pswitch_2
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 271
    sget-boolean v6, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v6, :cond_0

    .line 272
    iget-object v6, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v9, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget v10, p0, Landroid/preference/Preference;->mTitleRes:I

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 277
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 278
    sget-boolean v6, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v6, :cond_0

    .line 279
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 280
    .local v5, "summaryRes":I
    iget-object v6, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v9, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9, v5}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 285
    .end local v5    # "summaryRes":I
    :pswitch_4
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 290
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 294
    :pswitch_6
    iget v6, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/preference/Preference;->mOrder:I

    goto :goto_1

    .line 298
    :pswitch_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 302
    :pswitch_8
    iget v6, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 306
    :pswitch_9
    iget v6, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 310
    :pswitch_a
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/preference/Preference;->mEnabled:Z

    goto/16 :goto_1

    .line 314
    :pswitch_b
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/preference/Preference;->mSelectable:Z

    goto/16 :goto_1

    .line 318
    :pswitch_c
    iget-boolean v6, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/preference/Preference;->mPersistent:Z

    goto/16 :goto_1

    .line 322
    :pswitch_d
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 326
    :pswitch_e
    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 330
    :pswitch_f
    iget-boolean v6, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 334
    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 337
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v9, 0x11600bd

    invoke-virtual {v6, v9, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 338
    iget v6, v4, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    .line 340
    iget-boolean v6, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v6, :cond_3

    .line 342
    const/high16 v6, 0x41000000    # 8.0f

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Landroid/preference/Preference;->mTwExtraPaddingBottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v9, 0x1010038

    invoke-virtual {v6, v9, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 348
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-lez v6, :cond_2

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    .line 351
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060217

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    .line 354
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 357
    iput-boolean v8, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 359
    :cond_4
    return-void

    :cond_5
    move v6, v8

    .line 338
    goto :goto_2

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    iput v8, p0, Landroid/preference/Preference;->mTwExtraPaddingBottom:I

    goto :goto_3

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1616
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1617
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1618
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1619
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1624
    :cond_1
    :goto_0
    return-void

    .line 1622
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private getTwSummaryColorToColorPrimaryDark()Z
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Landroid/preference/Preference;->mIsSummaryColorPrimaryDark:Z

    return v0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1433
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1435
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1436
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 1437
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1439
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    .prologue
    .line 1481
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1485
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1488
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 751
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 753
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 754
    check-cast v1, Landroid/view/ViewGroup;

    .line 755
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 756
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 755
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 759
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1647
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1649
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1650
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1445
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1447
    .local v0, "oldDependency":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1448
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    .line 1451
    .end local v0    # "oldDependency":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1502
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 1941
    iget-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mTwForceRecycleLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 1350
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1352
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1362
    :goto_0
    return v0

    .line 1353
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1355
    const/4 v0, 0x0

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1357
    const/4 v0, 0x1

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1359
    const/4 v0, -0x1

    goto :goto_0

    .line 1362
    :cond_3
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 2064
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2065
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2066
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2067
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2068
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2069
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2070
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2075
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 2011
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2012
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2013
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2014
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2015
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2018
    :cond_0
    if-eqz v0, :cond_1

    .line 2019
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2022
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1465
    :cond_0
    const/4 v0, 0x0

    .line 1468
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1319
    const/4 v0, 0x0

    .line 1322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1973
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1974
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1977
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1978
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1979
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1981
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1983
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1985
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 1070
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1933
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1937
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1845
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1801
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1805
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1889
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1702
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1757
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1761
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1292
    const/4 v0, 0x0

    .line 1295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "tempConvertView":Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 582
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 584
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 586
    iget-boolean v1, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v1, :cond_1

    .line 587
    instance-of v1, p0, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 588
    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 589
    check-cast v0, Landroid/widget/TextView;

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const v3, 0x1040a55

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    :cond_1
    iget-boolean v1, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Landroid/view/View;->TW_SCAFE_AMERICANO:Z

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/view/View;->TW_SCAFE_MOCHA:Z

    if-eqz v1, :cond_3

    .line 596
    :cond_2
    if-eqz p1, :cond_3

    .line 597
    iget-boolean v1, p0, Landroid/preference/Preference;->mNeedPaddingBottom:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_4

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Landroid/preference/Preference;->mTwExtraPaddingBottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 600
    iget v1, p0, Landroid/preference/Preference;->mTwExtraPaddingBottom:I

    iput v1, p1, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    .line 612
    :cond_3
    :goto_0
    return-object p1

    .line 602
    :cond_4
    iget-boolean v1, p0, Landroid/preference/Preference;->mNeedPaddingBottom:Z

    if-nez v1, :cond_3

    iget v1, p1, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    if-lez v1, :cond_3

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p1, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 605
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    goto :goto_0
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasRTL()Z
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method isRTL()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2122
    iget-object v2, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2123
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 1035
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    .line 1383
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1512
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1514
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1522
    :cond_0
    return-void

    .line 1518
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1519
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1520
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    .line 1394
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1428
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1429
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 1412
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1414
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    .line 1416
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    .line 1417
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 660
    const v8, 0x1020016

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 661
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 662
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 663
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitleDescription()Ljava/lang/CharSequence;

    move-result-object v6

    .line 664
    .local v6, "titleDescription":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 665
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    sget-boolean v8, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-nez v8, :cond_0

    sget-boolean v8, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v8, :cond_1

    .line 669
    :cond_0
    iget v8, p0, Landroid/preference/Preference;->mLargerFontLevel:I

    const/4 v11, 0x6

    if-le v8, v11, :cond_1

    instance-of v8, p0, Landroid/preference/PreferenceCategory;

    if-nez v8, :cond_1

    .line 670
    iget v8, p0, Landroid/preference/Preference;->mTitleLargerTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 674
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 675
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    :goto_0
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "titleDescription":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 693
    .local v4, "summaryView":Landroid/widget/TextView;
    if-eqz v4, :cond_6

    .line 694
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 695
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummaryDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 696
    .local v3, "summaryDescription":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 697
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 699
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 704
    :goto_2
    iget-boolean v8, p0, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-nez v8, :cond_3

    sget-boolean v8, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v8, :cond_5

    .line 705
    :cond_3
    invoke-direct {p0}, Landroid/preference/Preference;->getTwSummaryColorToColorPrimaryDark()Z

    move-result v8

    if-nez v8, :cond_4

    instance-of v8, p0, Landroid/preference/ListPreference;

    if-eqz v8, :cond_11

    .line 706
    :cond_4
    iget-object v8, p0, Landroid/preference/Preference;->mColorPrimaryDark:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 711
    :cond_5
    :goto_3
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    .end local v2    # "summary":Ljava/lang/CharSequence;
    .end local v3    # "summaryDescription":Ljava/lang/CharSequence;
    :cond_6
    :goto_4
    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 718
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_a

    .line 719
    iget v8, p0, Landroid/preference/Preference;->mIconResId:I

    if-nez v8, :cond_7

    iget-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 720
    :cond_7
    iget-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_8

    .line 721
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v11, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 723
    :cond_8
    iget-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 724
    iget-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    :cond_9
    iget-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_13

    move v8, v9

    :goto_5
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    :cond_a
    const v8, 0x102045f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, "imageFrame":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 732
    iget-object v8, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_14

    :goto_6
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_b
    iget-boolean v8, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v8, :cond_c

    .line 736
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    invoke-direct {p0, p1, v8}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 738
    :cond_c
    return-void

    .line 677
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "summaryView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    .restart local v6    # "titleDescription":Ljava/lang/CharSequence;
    :cond_d
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 682
    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    instance-of v8, p0, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_f

    .line 683
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 687
    :cond_f
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 701
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "titleDescription":Ljava/lang/CharSequence;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v3    # "summaryDescription":Ljava/lang/CharSequence;
    .restart local v4    # "summaryView":Landroid/widget/TextView;
    :cond_10
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 707
    :cond_11
    iget-object v8, p0, Landroid/preference/Preference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_5

    .line 708
    iget-object v8, p0, Landroid/preference/Preference;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 713
    :cond_12
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .end local v2    # "summary":Ljava/lang/CharSequence;
    .end local v3    # "summaryDescription":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_13
    move v8, v10

    .line 727
    goto :goto_5

    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_14
    move v9, v10

    .line 732
    goto :goto_6
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 630
    iget-object v3, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 633
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 635
    .local v0, "layout":Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 637
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 638
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    .line 639
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 644
    :cond_0
    :goto_0
    return-object v0

    .line 641
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1531
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1532
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 1535
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1537
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1539
    :cond_0
    return-void

    .line 1532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1548
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1549
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 1552
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1554
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1556
    :cond_0
    return-void

    .line 1549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1601
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2089
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2090
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 2038
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1644
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 1224
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    .line 1230
    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1234
    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 1235
    .local v2, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1236
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1238
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1244
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1245
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1246
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1907
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1908
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1918
    :goto_0
    return v2

    .line 1913
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1914
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1915
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1918
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1819
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1820
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1830
    :goto_0
    return v1

    .line 1825
    :cond_0
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1826
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1827
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1830
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1775
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1776
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1786
    :goto_0
    return v1

    .line 1781
    :cond_0
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1782
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1783
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1786
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1863
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1864
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1874
    :goto_0
    return v1

    .line 1869
    :cond_0
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1870
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1871
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1874
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1673
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1675
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1685
    :goto_0
    return v1

    .line 1680
    :cond_0
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1681
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1682
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1685
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1725
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1727
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1737
    :goto_0
    return v1

    .line 1732
    :cond_0
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1733
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1734
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1737
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    .line 1119
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 2050
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2051
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1997
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1998
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1611
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1612
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1576
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1579
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1580
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1581
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 998
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 999
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 1002
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1004
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1006
    :cond_0
    return-void
.end method

.method public setForceRecycleLayout(Z)V
    .locals 0
    .param p1, "recycle"    # Z

    .prologue
    .line 1952
    iput-boolean p1, p0, Landroid/preference/Preference;->mTwForceRecycleLayout:Z

    .line 1953
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 904
    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_0

    .line 905
    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    .line 906
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 908
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 890
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 891
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 893
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 895
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 436
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 437
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1089
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 1091
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    .line 1094
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 501
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 506
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 507
    return-void
.end method

.method setLayoutResourceInternal(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 525
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 526
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1373
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1374
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 1183
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1184
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 1202
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1203
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 775
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 776
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    .line 779
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 781
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 1161
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 1162
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 1023
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 1024
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 1025
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1027
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 1050
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 1051
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1052
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 956
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 957
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 943
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 944
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 945
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 947
    :cond_2
    return-void
.end method

.method public setSummaryDescription(I)V
    .locals 1
    .param p1, "summaryDescriptionResId"    # I

    .prologue
    .line 973
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummaryDescription(Ljava/lang/CharSequence;)V

    .line 974
    return-void
.end method

.method public setSummaryDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summaryDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 963
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 964
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    .line 965
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 967
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 817
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 818
    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 819
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 803
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 804
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 805
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 806
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 808
    :cond_2
    return-void
.end method

.method public setTitleDescription(I)V
    .locals 1
    .param p1, "titleDescriptionResId"    # I

    .prologue
    .line 843
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitleDescription(Ljava/lang/CharSequence;)V

    .line 844
    iput p1, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    .line 845
    return-void
.end method

.method public setTitleDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "titleDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 828
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 829
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    .line 830
    iput-object p1, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    .line 831
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 833
    :cond_2
    return-void
.end method

.method setTitleLargerTextSize(II)V
    .locals 0
    .param p1, "fontLevel"    # I
    .param p2, "textSize"    # I

    .prologue
    .line 877
    iput p1, p0, Landroid/preference/Preference;->mLargerFontLevel:I

    .line 878
    iput p2, p0, Landroid/preference/Preference;->mTitleLargerTextSize:I

    .line 879
    return-void
.end method

.method public setTwSummaryColorToColorPrimaryDark(Z)V
    .locals 0
    .param p1, "color"    # Z

    .prologue
    .line 984
    iput-boolean p1, p0, Landroid/preference/Preference;->mIsSummaryColorPrimaryDark:Z

    .line 985
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 549
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 553
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 554
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x0

    .line 1338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1957
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method twGetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method
