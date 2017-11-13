.class Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDescription:Landroid/widget/TextView;

.field public mDisplayName:Landroid/widget/TextView;

.field public mExtra:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field public mMarkSep:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->this$1:Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;Lcom/android/incallui/view/SimCardPickDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;
    .param p2, "x1"    # Lcom/android/incallui/view/SimCardPickDialog$1;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;-><init>(Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$SelectorAdapter$ViewHolder;->mMarkSep:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 380
    return-void
.end method
