.class public Lcom/carrieriq/iqagent/client/Metric;
.super Ljava/lang/Object;
.source "Metric.java"


# static fields
.field public static final CURRENT_TIME:J = -0x1L


# instance fields
.field public metricID:I

.field public timestamp:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "_metricID"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "_metricID"    # I
    .param p2, "_ts"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static idFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public static idToBytes(I[BI)V
    .locals 0
    .param p0, "_id"    # I
    .param p1, "array"    # [B
    .param p2, "offset"    # I

    .prologue
    return-void
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "_id"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "_ts"    # J

    .prologue
    return-void
.end method

.method public szStringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .param p2, "iString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public szStringOutPadToWord(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .param p2, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    return-void
.end method
