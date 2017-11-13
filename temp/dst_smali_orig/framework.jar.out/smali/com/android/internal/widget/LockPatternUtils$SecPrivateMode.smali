.class public final enum Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
.super Ljava/lang/Enum;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecPrivateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

.field public static final enum BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

.field public static final enum FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

.field public static final enum None:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

.field public static final enum PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

.field public static final enum Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

.field public static final enum Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->None:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const-string v1, "Pattern"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const-string v1, "Password"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const-string v1, "PIN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const-string v1, "BackupPin"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const-string v1, "FingerPrint"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->None:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    return-object v0
.end method
