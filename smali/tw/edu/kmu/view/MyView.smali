.class public Ltw/edu/kmu/view/MyView;
.super Landroid/view/View;
.source "MyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field myHandler:Landroid/os/Handler;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x14

    .line 15
    iput p1, p0, Ltw/edu/kmu/view/MyView;->x:I

    iput p1, p0, Ltw/edu/kmu/view/MyView;->y:I

    .line 33
    new-instance p1, Ltw/edu/kmu/view/MyView$1;

    invoke-direct {p1, p0}, Ltw/edu/kmu/view/MyView$1;-><init>(Ltw/edu/kmu/view/MyView;)V

    iput-object p1, p0, Ltw/edu/kmu/view/MyView;->myHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MyView;->setFocusable(Z)V

    .line 21
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/view/MyView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ltw/edu/kmu/view/MyView;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Ltw/edu/kmu/view/MyView;->getHeight()I

    move-result v0

    .line 81
    iget v1, p0, Ltw/edu/kmu/view/MyView;->y:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Ltw/edu/kmu/view/MyView;->y:I

    .line 82
    iget v1, p0, Ltw/edu/kmu/view/MyView;->y:I

    if-lt v1, v0, :cond_0

    const/16 v0, 0x14

    .line 83
    iput v0, p0, Ltw/edu/kmu/view/MyView;->y:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 27
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xff0100

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget v1, p0, Ltw/edu/kmu/view/MyView;->x:I

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/MyView;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 47
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "Looper Prepare"

    const-string v1, "ready"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    const-string v0, "i"

    .line 54
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x101

    .line 58
    iput v2, v0, Landroid/os/Message;->what:I

    .line 60
    iget-object v2, p0, Ltw/edu/kmu/view/MyView;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "\u767c\u9001msg"

    const-string v2, "\u767c\u9001"

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "\u66ab\u505c"

    const-string v2, "1\u79d2"

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
