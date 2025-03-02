.class Landroid/view/View$ListenerInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


# instance fields
.field private mOnAirButtonHoverListener:Landroid/view/View$OnHoverListener;

.field mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOnAttachedDisplayChangeListener:Landroid/view/View$OnAttachedDisplayChangeListener;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnContextClickListener:Landroid/view/View$OnContextClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnLayoutChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

.field private mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    return-object p1
.end method

.method static synthetic access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Ljava/util/concurrent/CopyOnWriteArrayList;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method static synthetic access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnKeyListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object p1
.end method

.method static synthetic access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnTouchListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p1
.end method

.method static synthetic access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object p1
.end method

.method static synthetic access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    return-object v0
.end method

.method static synthetic access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnHoverListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    return-object p1
.end method

.method static synthetic access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnAirButtonHoverListener:Landroid/view/View$OnHoverListener;

    return-object v0
.end method

.method static synthetic access$802(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnHoverListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnAirButtonHoverListener:Landroid/view/View$OnHoverListener;

    return-object p1
.end method

.method static synthetic access$900(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;

    return-object v0
.end method

.method static synthetic access$902(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$ListenerInfo;
    .param p1, "x1"    # Landroid/view/View$OnDragListener;

    .prologue
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;

    return-object p1
.end method
