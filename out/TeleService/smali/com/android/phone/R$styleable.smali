.class public final Lcom/android/phone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallForwardEditPreference:[I

.field public static final Dialpad:[I

.field public static final DialpadButton:[I

.field public static final EditPhoneNumberPreference:[I

.field public static final MultiSimListPreference:[I

.field public static final ResizingText:[I

.field public static final Theme_Dialpad:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3834
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    .line 3883
    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/android/phone/R$styleable;->Dialpad:[I

    .line 3917
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/R$styleable;->DialpadButton:[I

    .line 3984
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    .line 4064
    new-array v0, v3, [I

    const v1, 0x7f01000f

    aput v1, v0, v2

    sput-object v0, Lcom/android/phone/R$styleable;->MultiSimListPreference:[I

    .line 4091
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/phone/R$styleable;->ResizingText:[I

    .line 4130
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/phone/R$styleable;->Theme_Dialpad:[I

    return-void

    .line 3834
    :array_0
    .array-data 4
        0x7f01000c
        0x7f01000d
    .end array-data

    .line 3917
    :array_1
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
    .end array-data

    .line 3984
    :array_2
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 4130
    :array_3
    .array-data 4
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data
.end method
