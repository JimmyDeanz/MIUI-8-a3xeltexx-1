.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 4
    .param p0, "errorCode"    # I

    .prologue
    const v0, 0x10400e8

    .line 45
    packed-switch p0, :pswitch_data_0

    .line 95
    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using generic message for unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    :pswitch_0
    return v0

    .line 47
    :pswitch_1
    const v0, 0x10400e7

    goto :goto_0

    .line 53
    :pswitch_2
    const v0, 0x10400e9

    goto :goto_0

    .line 56
    :pswitch_3
    const v0, 0x10400ea

    goto :goto_0

    .line 59
    :pswitch_4
    const v0, 0x10400eb

    goto :goto_0

    .line 62
    :pswitch_5
    const v0, 0x10400ec

    goto :goto_0

    .line 65
    :pswitch_6
    const v0, 0x10400ed

    goto :goto_0

    .line 68
    :pswitch_7
    const v0, 0x10400ee

    goto :goto_0

    .line 71
    :pswitch_8
    const v0, 0x10400ef

    goto :goto_0

    .line 74
    :pswitch_9
    const v0, 0x10400f0

    goto :goto_0

    .line 77
    :pswitch_a
    const v0, 0x1040008

    goto :goto_0

    .line 80
    :pswitch_b
    const v0, 0x10400f1

    goto :goto_0

    .line 83
    :pswitch_c
    const v0, 0x1040007

    goto :goto_0

    .line 86
    :pswitch_d
    const v0, 0x10400f2

    goto :goto_0

    .line 89
    :pswitch_e
    const v0, 0x10400f3

    goto :goto_0

    .line 92
    :pswitch_f
    const v0, 0x10400f4

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
