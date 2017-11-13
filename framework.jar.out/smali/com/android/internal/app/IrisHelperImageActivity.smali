.class public Lcom/android/internal/app/IrisHelperImageActivity;
.super Landroid/app/Activity;
.source "IrisHelperImageActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "IrisHelperImageActivity"

    sput-object v0, Lcom/android/internal/app/IrisHelperImageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x1090085

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisHelperImageActivity;->setContentView(I)V

    .line 42
    const v0, 0x10203ef

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisHelperImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IrisHelperImageActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IrisHelperImageActivity$1;-><init>(Lcom/android/internal/app/IrisHelperImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x10203ee

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisHelperImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IrisHelperImageActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IrisHelperImageActivity$2;-><init>(Lcom/android/internal/app/IrisHelperImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
