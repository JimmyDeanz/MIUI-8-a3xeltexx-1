.class Lcom/android/phone/MiuiErrorDialogActivity$2;
.super Ljava/lang/Object;
.source "MiuiErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiErrorDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiErrorDialogActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/MiuiErrorDialogActivity$2;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/MiuiErrorDialogActivity$2;->this$0:Lcom/android/phone/MiuiErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/MiuiErrorDialogActivity;->finish()V

    .line 74
    return-void
.end method
