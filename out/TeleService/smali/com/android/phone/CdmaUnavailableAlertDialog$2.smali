.class Lcom/android/phone/CdmaUnavailableAlertDialog$2;
.super Ljava/lang/Object;
.source "CdmaUnavailableAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaUnavailableAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaUnavailableAlertDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$2;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/CdmaUnavailableAlertDialog$2;->this$0:Lcom/android/phone/CdmaUnavailableAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/CdmaUnavailableAlertDialog;->finish()V

    .line 65
    return-void
.end method
