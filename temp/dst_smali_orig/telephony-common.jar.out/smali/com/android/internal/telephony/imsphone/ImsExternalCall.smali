.class public Lcom/android/internal/telephony/imsphone/ImsExternalCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsExternalCall.java"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setActive()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public setTerminated()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method
