.class Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;
.super Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;)V
    .locals 0

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;

    invoke-direct {p0}, Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;->onComplete(I)V

    .line 3427
    return-void
.end method
