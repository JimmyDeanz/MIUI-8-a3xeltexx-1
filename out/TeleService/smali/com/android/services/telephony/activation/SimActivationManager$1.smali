.class Lcom/android/services/telephony/activation/SimActivationManager$1;
.super Ljava/lang/Object;
.source "SimActivationManager.java"

# interfaces
.implements Lcom/android/services/telephony/activation/Activator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/activation/SimActivationManager;->selectActivator(I)Lcom/android/services/telephony/activation/Activator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/activation/SimActivationManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/activation/SimActivationManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/services/telephony/activation/SimActivationManager$1;->this$0:Lcom/android/services/telephony/activation/SimActivationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivate()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
