.class final enum Lcom/android/incallui/CallCardPresenter$CallCardState;
.super Ljava/lang/Enum;
.source "CallCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CallCardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum RING_DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum RING_DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

.field public static final enum SINGLE_CALL_DIALING:Lcom/android/incallui/CallCardPresenter$CallCardState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 121
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "SINGLE_CALL_DIALING"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_DIALING:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 122
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "SINGLE_CALL_ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 123
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "DOUBLE_PRIMARY_CALL"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 124
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "DOUBLE_SECONDARY_CALL"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 125
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "RING_CALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 126
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "RING_SINGLE_CALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 127
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "RING_DOUBLE_PRIMARY_CALL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 128
    new-instance v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    const-string v1, "RING_DOUBLE_SECONDARY_CALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/incallui/CallCardPresenter$CallCardState;

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->IDLE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_DIALING:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->$VALUES:[Lcom/android/incallui/CallCardPresenter$CallCardState;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/CallCardPresenter$CallCardState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    const-class v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/CallCardPresenter$CallCardState;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->$VALUES:[Lcom/android/incallui/CallCardPresenter$CallCardState;

    invoke-virtual {v0}, [Lcom/android/incallui/CallCardPresenter$CallCardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/CallCardPresenter$CallCardState;

    return-object v0
.end method


# virtual methods
.method isHasNonRingActiveCall()Z
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHasOnlyOneRingCall()Z
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHasRingCall()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_SINGLE_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNonRingDoubleCall()Z
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRingDoubleCall()Z
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_PRIMARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->RING_DOUBLE_SECONDARY_CALL:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleCall()Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_DIALING:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter$CallCardState;->SINGLE_CALL_ACTIVE:Lcom/android/incallui/CallCardPresenter$CallCardState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
