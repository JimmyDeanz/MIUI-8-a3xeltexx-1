.class public final enum Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
.super Ljava/lang/Enum;
.source "AggregatorErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "SUCCESS"

    const-string v2, "Success"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UNKNOWN"

    const-string v2, "ERROR : Unknown"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_ARRIVING_ON_STATUS_FAULT"

    const-string v2, "ERROR : Status of arriving on POI is fault"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UPDATED_CONTEXT_TYPE_FAULT"

    const-string v2, "ERROR : Updated context type is fault"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UPDATED_CONTEXT_NULL_EXCEPTION"

    const-string v2, "ERROR : Updated context is null"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_SUB_COLLECTOR_FALSE"

    const/4 v2, 0x5

    const-string v3, "ERROR : Sub collector is false"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_SUB_COLLECTOR_NULL_EXCEPTION"

    const/4 v2, 0x6

    const-string v3, "ERROR : Sub collector is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # I

    .prologue
    const-string v4, ""

    .local v4, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->values()[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "i":Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    iget-object v4, v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    .end local v1    # "i":Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Message code is fault"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v4

    .restart local v1    # "i":Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    .prologue
    return-void
.end method
