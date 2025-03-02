.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.super Landroid/app/Activity;
.source "HeavyWeightSwitcherActivity.java"


# static fields
.field public static final KEY_CUR_APP:Ljava/lang/String; = "cur_app"

.field public static final KEY_CUR_TASK:Ljava/lang/String; = "cur_task"

.field public static final KEY_HAS_RESULT:Ljava/lang/String; = "has_result"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_NEW_APP:Ljava/lang/String; = "new_app"


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field mCurApp:Ljava/lang/String;

.field mCurTask:I

.field mHasResult:Z

.field mNewApp:Ljava/lang/String;

.field mStartIntent:Landroid/content/IntentSender;

.field private mSwitchNewListener:Landroid/view/View$OnClickListener;

.field private mSwitchOldListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0, v9}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cur_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cur_task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "new_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    .line 73
    const v0, 0x1090076

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setContentView(I)V

    .line 75
    const v1, 0x10203c9

    const v2, 0x10203ca

    const v3, 0x10203cb

    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    const v5, 0x104038e

    const v6, 0x104038f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;II)V

    .line 77
    const v1, 0x10203cd

    const v2, 0x10203ce

    const v3, 0x10203cf

    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    const v5, 0x1040390

    const v6, 0x1040391

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;II)V

    .line 80
    const v0, 0x10203c8

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 81
    .local v7, "button":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x10203cc

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x1020383

    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 85
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 88
    .local v8, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010355

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 91
    return-void
.end method

.method setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    return-void
.end method

.method setIconAndText(IIILjava/lang/String;II)V
    .locals 6
    .param p1, "iconId"    # I
    .param p2, "actionId"    # I
    .param p3, "descriptionId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "actionStr"    # I
    .param p6, "descriptionStr"    # I

    .prologue
    const/4 v5, 0x0

    .line 105
    const-string v1, ""

    .line 106
    .local v1, "appName":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 107
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 111
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 118
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, p5, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0, p6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, p3, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    .line 120
    return-void

    .line 113
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method setText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
