.class final enum Lcom/android/internal/telephony/cat/CallStatus;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/CallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/CallStatus;

.field public static final enum CALL_STATUS_CONNECTED:Lcom/android/internal/telephony/cat/CallStatus;

.field public static final enum CALL_STATUS_INCOMING:Lcom/android/internal/telephony/cat/CallStatus;

.field public static final enum CALL_STATUS_OUTGOING:Lcom/android/internal/telephony/cat/CallStatus;

.field public static final enum CALL_STATUS_RELEASED:Lcom/android/internal/telephony/cat/CallStatus;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 172
    new-instance v0, Lcom/android/internal/telephony/cat/CallStatus;

    const-string v1, "CALL_STATUS_OUTGOING"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/CallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_OUTGOING:Lcom/android/internal/telephony/cat/CallStatus;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/cat/CallStatus;

    const-string v1, "CALL_STATUS_INCOMING"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/CallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_INCOMING:Lcom/android/internal/telephony/cat/CallStatus;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/cat/CallStatus;

    const-string v1, "CALL_STATUS_CONNECTED"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cat/CallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_CONNECTED:Lcom/android/internal/telephony/cat/CallStatus;

    .line 175
    new-instance v0, Lcom/android/internal/telephony/cat/CallStatus;

    const-string v1, "CALL_STATUS_RELEASED"

    invoke-direct {v0, v1, v4, v6}, Lcom/android/internal/telephony/cat/CallStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_RELEASED:Lcom/android/internal/telephony/cat/CallStatus;

    .line 171
    new-array v0, v6, [Lcom/android/internal/telephony/cat/CallStatus;

    sget-object v1, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_OUTGOING:Lcom/android/internal/telephony/cat/CallStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_INCOMING:Lcom/android/internal/telephony/cat/CallStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_CONNECTED:Lcom/android/internal/telephony/cat/CallStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_RELEASED:Lcom/android/internal/telephony/cat/CallStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cat/CallStatus;->$VALUES:[Lcom/android/internal/telephony/cat/CallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput p3, p0, Lcom/android/internal/telephony/cat/CallStatus;->mValue:I

    .line 181
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/CallStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 193
    invoke-static {}, Lcom/android/internal/telephony/cat/CallStatus;->values()[Lcom/android/internal/telephony/cat/CallStatus;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/cat/CallStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 194
    .local v1, "e":Lcom/android/internal/telephony/cat/CallStatus;
    iget v4, v1, Lcom/android/internal/telephony/cat/CallStatus;->mValue:I

    if-ne v4, p0, :cond_0

    .line 198
    .end local v1    # "e":Lcom/android/internal/telephony/cat/CallStatus;
    :goto_1
    return-object v1

    .line 193
    .restart local v1    # "e":Lcom/android/internal/telephony/cat/CallStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "e":Lcom/android/internal/telephony/cat/CallStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/android/internal/telephony/cat/CallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CallStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/CallStatus;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/internal/telephony/cat/CallStatus;->$VALUES:[Lcom/android/internal/telephony/cat/CallStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/CallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/CallStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/internal/telephony/cat/CallStatus;->mValue:I

    return v0
.end method
