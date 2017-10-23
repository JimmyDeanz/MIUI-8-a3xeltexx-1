.class public Lcom/samsung/android/app/CustomBootMsgDialog;
.super Landroid/app/Dialog;
.source "CustomBootMsgDialog.java"


# static fields
.field private static final RESET_BIG_GEAR_DEGREE:I = 0x384


# instance fields
.field final TAG:Ljava/lang/String;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationRunning:Z

.field private mBigGear:Landroid/view/View;

.field mCurrent:I

.field private mHandler:Landroid/os/Handler;

.field mMax:I

.field private mPreviousTime:J

.field mProgressBar:Landroid/widget/ProgressBar;

.field private mSmallGear:Landroid/view/View;

.field mUpgradeProgressMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title_id"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 74
    const v4, 0x103000e

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    const-string v4, "CustomBootMsgDialog"

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->TAG:Ljava/lang/String;

    .line 31
    iput-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    .line 33
    iput-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    .line 38
    iput-boolean v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    .line 42
    new-instance v4, Lcom/samsung/android/app/CustomBootMsgDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$1;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/CustomBootMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7e5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x500

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    const/4 v4, 0x5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 82
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/CustomBootMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090167

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "v":Landroid/view/View;
    const v4, 0x10204e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, "title":Landroid/widget/TextView;
    const v4, 0x10204ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    .line 91
    const v4, 0x10204eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 94
    const v4, 0x10204e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    .line 95
    const v4, 0x10204e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    .line 96
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mHandler:Landroid/os/Handler;

    .line 98
    iget-object v4, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/CustomBootMsgDialog$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$2;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/CustomBootMsgDialog;->setContentView(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/CustomBootMsgDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/CustomBootMsgDialog;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/CustomBootMsgDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/CustomBootMsgDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/CustomBootMsgDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private parseDigit(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "current_max_index":I
    const/4 v4, 0x0

    .line 164
    .local v4, "temp_digit":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v3, "min_max":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    .local v1, "digit":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    mul-int/lit8 v5, v4, 0xa

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    add-int v4, v5, v6

    .line 166
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    if-eqz v4, :cond_1

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 179
    .end local v1    # "digit":C
    :cond_2
    const/4 v4, 0x0

    .line 180
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 181
    if-nez v4, :cond_3

    .line 182
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 180
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    move v5, v4

    :goto_4
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    .line 185
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_5

    move v5, v4

    :goto_5
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    goto :goto_3

    .line 184
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    .line 185
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    .line 188
    :cond_6
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "CustomBootMsgDialog"

    const-string v1, "dismiss CustomBootMsg "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 136
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 143
    const-string v0, "CustomBootMsgDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Booting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/CustomBootMsgDialog;->parseDigit(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
