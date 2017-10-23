.class synthetic Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;
.super Ljava/lang/Object;
.source "TelephonyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/itsoninc/android/DeviceCall$CallState;->values()[Lcom/itsoninc/android/DeviceCall$CallState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    :try_start_0
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->INCOMING:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->WAITING:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->DIALING:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->ALERTING:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
