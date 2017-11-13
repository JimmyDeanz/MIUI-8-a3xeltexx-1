.class Lcom/android/internal/app/IrisEnrollActivity$3;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "IrisEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IrisEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IrisEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IrisEnrollActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/IrisEnrollActivity$3;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    .prologue
    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
