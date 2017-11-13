.class public Lcom/android/services/telephony/TelephonyGlobals;
.super Ljava/lang/Object;
.source "TelephonyGlobals.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTtyManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TtyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyGlobals;->mTtyManagers:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyGlobals;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 64
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 65
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v5, p0, Lcom/android/services/telephony/TelephonyGlobals;->mTtyManagers:Ljava/util/List;

    new-instance v6, Lcom/android/services/telephony/TtyManager;

    iget-object v7, p0, Lcom/android/services/telephony/TelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/services/telephony/TtyManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    iget-object v5, p0, Lcom/android/services/telephony/TelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupOnBoot()V

    .line 69
    return-void
.end method
