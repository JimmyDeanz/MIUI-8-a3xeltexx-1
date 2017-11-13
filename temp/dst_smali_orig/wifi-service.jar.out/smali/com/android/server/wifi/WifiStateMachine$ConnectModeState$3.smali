.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$3;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$3;->this$1:Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
