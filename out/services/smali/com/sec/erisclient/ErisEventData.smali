.class public Lcom/sec/erisclient/ErisEventData;
.super Ljava/lang/Object;
.source "ErisEventData.java"


# instance fields
.field ikeError:I

.field private mConnection:Lcom/sec/erisclient/IPSecConnection;

.field private mError:Lcom/sec/erisclient/ErisError;


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V
    .locals 0
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p2, "error"    # Lcom/sec/erisclient/ErisError;
    .param p3, "ikeError"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    .line 10
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    .line 11
    iput p3, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    .line 12
    return-void
.end method


# virtual methods
.method public getConnection()Lcom/sec/erisclient/IPSecConnection;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    return-object v0
.end method

.method public getError()Lcom/sec/erisclient/ErisError;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    return-object v0
.end method

.method public getIkeErrorValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    return v0
.end method

.method protected setConnection(Lcom/sec/erisclient/IPSecConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    .line 24
    return-void
.end method

.method protected setError(Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    .line 16
    return-void
.end method

.method protected setIkeError(I)V
    .locals 0
    .param p1, "ikeError"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    .line 32
    return-void
.end method
