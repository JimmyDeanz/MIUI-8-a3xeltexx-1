.class public Landroid/hardware/scontext/SContextExerciseAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextExerciseAttribute.java"


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextExerciseAttribute"


# instance fields
.field private mRequiredDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "requiredDataType"    # [I

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    iput-object p1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, "Required data type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    const/4 v2, 0x0

    .local v2, "required_data":I
    if-eqz v1, :cond_0

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    :goto_1
    or-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    const-string v5, "GPS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    const-string v5, "Barometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    const-string v5, "Pedometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v2    # "required_data":I
    :cond_1
    const-string v5, "SContextExerciseAttribute"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v5, "required_data_type"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v5, 0x28

    invoke-super {p0, v5, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method checkAttribute()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v5, v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v0

    if-lt v5, v4, :cond_0

    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    :cond_0
    const-string v4, "SContextExerciseAttribute"

    const-string v5, "The required data type is wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v3

    :cond_1
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_2

    const-string v4, "SContextExerciseAttribute"

    const-string v5, "This required data type cannot have duplicated type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_4
    move v3, v4

    goto :goto_1
.end method
