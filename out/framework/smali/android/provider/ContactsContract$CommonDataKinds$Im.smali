.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_FACEBOOK:I = 0xa

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_WHATSAPP:I = 0x9

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6568
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6572
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 6571
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6572
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6545
    packed-switch p0, :pswitch_data_0

    .line 6557
    const v0, 0x104024e

    :goto_0
    return v0

    .line 6546
    :pswitch_0
    const v0, 0x104024f

    goto :goto_0

    .line 6547
    :pswitch_1
    const v0, 0x1040250

    goto :goto_0

    .line 6548
    :pswitch_2
    const v0, 0x1040251

    goto :goto_0

    .line 6549
    :pswitch_3
    const v0, 0x1040252

    goto :goto_0

    .line 6550
    :pswitch_4
    const v0, 0x1040253

    goto :goto_0

    .line 6551
    :pswitch_5
    const v0, 0x1040254

    goto :goto_0

    .line 6552
    :pswitch_6
    const v0, 0x1040255

    goto :goto_0

    .line 6553
    :pswitch_7
    const v0, 0x1040256

    goto :goto_0

    .line 6554
    :pswitch_8
    const v0, 0x1040257

    goto :goto_0

    .line 6555
    :pswitch_9
    const v0, 0x10407ec

    goto :goto_0

    .line 6556
    :pswitch_a
    const v0, 0x10407ed

    goto :goto_0

    .line 6545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6532
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6536
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 6535
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6536
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6517
    packed-switch p0, :pswitch_data_0

    .line 6521
    const v0, 0x104024a

    :goto_0
    return v0

    .line 6518
    :pswitch_0
    const v0, 0x104024b

    goto :goto_0

    .line 6519
    :pswitch_1
    const v0, 0x104024c

    goto :goto_0

    .line 6520
    :pswitch_2
    const v0, 0x104024d

    goto :goto_0

    .line 6517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
