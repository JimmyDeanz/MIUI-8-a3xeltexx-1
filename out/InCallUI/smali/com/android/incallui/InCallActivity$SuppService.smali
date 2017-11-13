.class final enum Lcom/android/incallui/InCallActivity$SuppService;
.super Ljava/lang/Enum;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/InCallActivity$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum CONFERENCE:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum HANGUP:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum HOLD:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum REJECT:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum RESUME:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum SEPARATE:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum SWITCH:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum TRANSFER:Lcom/android/incallui/InCallActivity$SuppService;

.field public static final enum UNKNOWN:Lcom/android/incallui/InCallActivity$SuppService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->UNKNOWN:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "SWITCH"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->SWITCH:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "SEPARATE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->SEPARATE:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->TRANSFER:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "CONFERENCE"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->CONFERENCE:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "REJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->REJECT:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "HANGUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->HANGUP:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "RESUME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->RESUME:Lcom/android/incallui/InCallActivity$SuppService;

    new-instance v0, Lcom/android/incallui/InCallActivity$SuppService;

    const-string v1, "HOLD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallActivity$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->HOLD:Lcom/android/incallui/InCallActivity$SuppService;

    .line 93
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/incallui/InCallActivity$SuppService;

    sget-object v1, Lcom/android/incallui/InCallActivity$SuppService;->UNKNOWN:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/InCallActivity$SuppService;->SWITCH:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/InCallActivity$SuppService;->SEPARATE:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/InCallActivity$SuppService;->TRANSFER:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/InCallActivity$SuppService;->CONFERENCE:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/InCallActivity$SuppService;->REJECT:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/InCallActivity$SuppService;->HANGUP:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/InCallActivity$SuppService;->RESUME:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/InCallActivity$SuppService;->HOLD:Lcom/android/incallui/InCallActivity$SuppService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/InCallActivity$SuppService;->$VALUES:[Lcom/android/incallui/InCallActivity$SuppService;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/InCallActivity$SuppService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcom/android/incallui/InCallActivity$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity$SuppService;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/InCallActivity$SuppService;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/incallui/InCallActivity$SuppService;->$VALUES:[Lcom/android/incallui/InCallActivity$SuppService;

    invoke-virtual {v0}, [Lcom/android/incallui/InCallActivity$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/InCallActivity$SuppService;

    return-object v0
.end method
