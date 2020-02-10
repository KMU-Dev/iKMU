.class public Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV8.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/ChartViewportAnimator;


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field final chart:Llecho/lib/hellocharts/view/Chart;

.field private duration:J

.field final handler:Landroid/os/Handler;

.field final interpolator:Landroid/view/animation/Interpolator;

.field isAnimationStarted:Z

.field private newViewport:Llecho/lib/hellocharts/model/Viewport;

.field private final runnable:Ljava/lang/Runnable;

.field start:J

.field private startViewport:Llecho/lib/hellocharts/model/Viewport;

.field private targetViewport:Llecho/lib/hellocharts/model/Viewport;


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/Chart;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    .line 18
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 19
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 20
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 22
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 23
    new-instance v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;-><init>(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->runnable:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    const-wide/16 v0, 0x12c

    .line 50
    iput-wide v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->duration:J

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->duration:J

    return-wide v0
.end method

.method static synthetic access$100(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Ljava/lang/Runnable;
    .locals 0

    .line 11
    iget-object p0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;
    .locals 0

    .line 11
    iget-object p0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object p0
.end method

.method static synthetic access$300(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/animation/ChartAnimationListener;
    .locals 0

    .line 11
    iget-object p0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    return-object p0
.end method

.method static synthetic access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;
    .locals 0

    .line 11
    iget-object p0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object p0
.end method

.method static synthetic access$500(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;
    .locals 0

    .line 11
    iget-object p0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    .line 79
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    return v0
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {p1}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0

    .line 94
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    :goto_0
    return-void
.end method

.method public startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1

    .line 56
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 57
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p1, p2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    const-wide/16 p1, 0x12c

    .line 58
    iput-wide p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->duration:J

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    .line 60
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->start:J

    .line 62
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    iget-object p2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;J)V
    .locals 1

    .line 67
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 68
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p1, p2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 69
    iput-wide p3, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->duration:J

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    .line 71
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->start:J

    .line 73
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    iget-object p2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
