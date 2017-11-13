.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mIldCountry:Landroid/widget/TextView;

.field private mIldRate:Landroid/widget/TextView;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mRippleColor:Landroid/content/res/ColorStateList;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    .line 96
    sget-object v1, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0019

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    .line 107
    return-void

    :cond_0
    move v1, v3

    .line 103
    goto :goto_0

    :cond_1
    move v2, v3

    .line 105
    goto :goto_1

    .line 76
    nop

    :array_0
    .array-data 4
        0x7f0e0036
        0x7f0e0032
        0x7f0e0023
        0x7f0e0024
        0x7f0e0025
        0x7f0e0026
        0x7f0e0027
        0x7f0e0028
        0x7f0e0029
        0x7f0e002a
        0x7f0e0035
        0x7f0e0034
    .end array-data
.end method

.method private setupKeypad()V
    .locals 20

    .prologue
    .line 128
    const/16 v18, 0xc

    move/from16 v0, v18

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 134
    .local v8, "letterIds":[I
    const/16 v18, 0xc

    move/from16 v0, v18

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 140
    .local v6, "labelIds":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 147
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 151
    .local v2, "currentLocale":Ljava/util/Locale;
    const-string v18, "fa"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 152
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v10

    .line 157
    .local v10, "nf":Ljava/text/NumberFormat;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 159
    .local v3, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v18, 0x7f0e002f

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 160
    .local v13, "numberView":Landroid/widget/TextView;
    const v18, 0x7f0e0031

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 161
    .local v9, "lettersView":Landroid/widget/TextView;
    const v18, 0x7f0e0030

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 165
    .local v7, "labelsView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    const v19, 0x7f0e0034

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 166
    const v18, 0x7f080056

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, "numberString":Ljava/lang/String;
    move-object v11, v12

    .line 181
    .local v11, "numberContentDescription":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f020006

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/RippleDrawable;

    .line 183
    .local v16, "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 187
    :cond_0
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 189
    invoke-virtual {v3, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    if-eqz v9, :cond_1

    .line 193
    aget v18, v8, v4

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    if-eqz v7, :cond_2

    .line 196
    aget v18, v6, v4

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "label":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 198
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .end local v5    # "label":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 154
    .end local v3    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v4    # "i":I
    .end local v7    # "labelsView":Landroid/widget/TextView;
    .end local v9    # "lettersView":Landroid/widget/TextView;
    .end local v10    # "nf":Ljava/text/NumberFormat;
    .end local v11    # "numberContentDescription":Ljava/lang/String;
    .end local v12    # "numberString":Ljava/lang/String;
    .end local v13    # "numberView":Landroid/widget/TextView;
    .end local v16    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_3
    sget-object v18, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static/range {v18 .. v18}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v10

    .restart local v10    # "nf":Ljava/text/NumberFormat;
    goto/16 :goto_0

    .line 168
    .restart local v3    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .restart local v4    # "i":I
    .restart local v7    # "labelsView":Landroid/widget/TextView;
    .restart local v9    # "lettersView":Landroid/widget/TextView;
    .restart local v13    # "numberView":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    const v19, 0x7f0e0035

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 169
    const v18, 0x7f080055

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 170
    .restart local v12    # "numberString":Ljava/lang/String;
    move-object v11, v12

    .restart local v11    # "numberContentDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 172
    .end local v11    # "numberContentDescription":Ljava/lang/String;
    .end local v12    # "numberString":Ljava/lang/String;
    :cond_5
    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    .line 177
    .restart local v12    # "numberString":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget v19, v8, v4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "numberContentDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 201
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v16    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_6
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 206
    .end local v3    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "labelsView":Landroid/widget/TextView;
    .end local v9    # "lettersView":Landroid/widget/TextView;
    .end local v11    # "numberContentDescription":Ljava/lang/String;
    .end local v12    # "numberString":Ljava/lang/String;
    .end local v13    # "numberView":Landroid/widget/TextView;
    .end local v16    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_7
    const v18, 0x7f0e0032

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 207
    .local v14, "one":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v18, 0x7f080066

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    const v18, 0x7f0e0036

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 211
    .local v17, "zero":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v18, 0x7f080065

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    return-void

    .line 128
    nop

    :array_0
    .array-data 4
        0x7f080057
        0x7f080058
        0x7f080059
        0x7f08005a
        0x7f08005b
        0x7f08005c
        0x7f08005d
        0x7f08005e
        0x7f08005f
        0x7f080060
        0x7f080061
        0x7f080062
    .end array-data

    .line 134
    :array_1
    .array-data 4
        0x7f080048
        0x7f080049
        0x7f08004a
        0x7f08004b
        0x7f08004c
        0x7f08004d
        0x7f08004e
        0x7f08004f
        0x7f080050
        0x7f080051
        0x7f080052
        0x7f080053
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    .line 112
    const v1, 0x7f0e003e

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    .line 113
    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    .line 114
    const v1, 0x7f0e003d

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    .line 115
    const v1, 0x7f0e0038

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    .line 116
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldCountry:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldRate:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 121
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method
