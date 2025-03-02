.class Lorg/codeaurora/Performance$TouchInfo;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/Performance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchInfo"
.end annotation


# instance fields
.field private mCurX:I

.field private mCurY:I

.field private mMinDragH:I

.field private mMinDragW:I

.field private mStartX:I

.field private mStartY:I

.field final synthetic this$0:Lorg/codeaurora/Performance;


# direct methods
.method constructor <init>(Lorg/codeaurora/Performance;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-object p1, p0, Lorg/codeaurora/Performance$TouchInfo;->this$0:Lorg/codeaurora/Performance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mStartX:I

    .line 112
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mStartY:I

    .line 115
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurX:I

    .line 116
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurY:I

    .line 119
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I

    .line 120
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/Performance$TouchInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/codeaurora/Performance$TouchInfo;->reset()V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/Performance$TouchInfo;II)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/Performance$TouchInfo;->setStartXY(II)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/Performance$TouchInfo;II)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/Performance$TouchInfo;->setDragWH(II)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/Performance$TouchInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;

    .prologue
    .line 109
    iget v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurX:I

    return v0
.end method

.method static synthetic access$500(Lorg/codeaurora/Performance$TouchInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;

    .prologue
    .line 109
    iget v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurY:I

    return v0
.end method

.method static synthetic access$600(Lorg/codeaurora/Performance$TouchInfo;II)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/Performance$TouchInfo;->setXY(II)V

    return-void
.end method

.method static synthetic access$700(Lorg/codeaurora/Performance$TouchInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;

    .prologue
    .line 109
    iget v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I

    return v0
.end method

.method static synthetic access$800(Lorg/codeaurora/Performance$TouchInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/Performance$TouchInfo;

    .prologue
    .line 109
    iget v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurY:I

    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurX:I

    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mStartY:I

    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mStartX:I

    .line 125
    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I

    iput v0, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I

    .line 126
    # setter for: Lorg/codeaurora/Performance;->isFlingEnabled:Z
    invoke-static {v0}, Lorg/codeaurora/Performance;->access$002(Z)Z

    .line 127
    return-void
.end method

.method private setDragWH(II)V
    .locals 0
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I

    .line 136
    iput p2, p0, Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I

    .line 137
    return-void
.end method

.method private setStartXY(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurX:I

    iput p1, p0, Lorg/codeaurora/Performance$TouchInfo;->mStartX:I

    .line 140
    iput p2, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurY:I

    iput p2, p0, Lorg/codeaurora/Performance$TouchInfo;->mStartY:I

    .line 141
    return-void
.end method

.method private setXY(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 130
    iput p1, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurX:I

    .line 131
    iput p2, p0, Lorg/codeaurora/Performance$TouchInfo;->mCurY:I

    .line 132
    return-void
.end method
