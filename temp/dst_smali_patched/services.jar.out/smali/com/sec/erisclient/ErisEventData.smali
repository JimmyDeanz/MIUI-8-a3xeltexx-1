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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    iput p3, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/sec/erisclient/IPSecConnection;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    return-object v0
.end method

.method public getError()Lcom/sec/erisclient/ErisError;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    return-object v0
.end method

.method public getIkeErrorValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    return v0
.end method

.method protected setConnection(Lcom/sec/erisclient/IPSecConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    return-void
.end method

.method protected setError(Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .prologue
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    return-void
.end method

.method protected setIkeError(I)V
    .locals 0
    .param p1, "ikeError"    # I

    .prologue
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    return-void
.end method
